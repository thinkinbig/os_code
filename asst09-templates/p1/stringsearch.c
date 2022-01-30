#include "stringsearch.h"
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
 * Attempt to find needle within the first `len` bytes of haystack, returning
 * the first offset if successful, or -1 otherwise.
 */
ssize_t findFirstSubstring(const char *needle, const char *haystack, size_t len)
{
    size_t i, j;
    size_t needle_len = strlen(needle);
    if (len < needle_len)
        return -1;
    for (i = 0; i <= len - needle_len; i++)
    {
        for (j = 0; needle[j]; j++)
        {
            if (needle[j] != haystack[i + j])
                break;
        }
        // We found a match if we walked to the end of needle.
        if (!needle[j])
            return i;
    }
    // no match
    return -1;
}

/*
 * Allocate a new Lines structure.
 */
Lines *newLines()
{
    Lines *lines = malloc(sizeof(Lines) + LINES_DEFAULT_CAP * sizeof(Line));
    lines->len = 0;
    lines->cap = LINES_DEFAULT_CAP;
    return lines;
}

/*
 * Append a line to the Lines structure, growing it as necessary.
 */
void appendLine(Lines **lines, Line l)
{
    if ((*lines)->len == (*lines)->cap)
    {
        size_t new_cap = (*lines)->cap * 2;
        *lines = realloc(*lines, sizeof(Lines) + new_cap * sizeof(Line));
        (*lines)->cap = new_cap;
    }
    (*lines)->lines[(*lines)->len++] = l;
}

/*
 * Walk through `haystack` and find all lines (delimited by '\n').
 */
Lines *findLines(const char *haystack, size_t len)
{
    Lines *lines = newLines();

    size_t i = 0;
    for (size_t j = 0; j < len; ++j)
    {
        if (haystack[j] == '\n')
        {
            appendLine(&lines, (Line){.start = haystack + i, .len = j - i - 1});
            i = j + 1;
        }
    }
    return lines;
}

/*
 * Use binary search to find the line corresponding to the given match.
 */
Line *findLineContaining(Lines *l, const char *match)
{
    size_t lower = 0, upper = l->len;
    size_t middle;
    while (lower <= upper)
    {
        middle = (upper + lower) / 2;
        if (match >= l->lines[middle].start && match < l->lines[middle].start + l->lines[middle].len)
        {
            return &l->lines[middle];
        }
        else if (match < l->lines[middle].start)
        {
            upper = middle - 1;
        }
        else
        {
            lower = middle + 1;
        }
    }
    return NULL;
}
typedef struct _LineSearcherState
{
    Lines **lines;
    const char *haystack;
    size_t len;
} LineSearcherState;

/*
 * Entry point for the line searching thread.
 */
void *lineSearcher(void *arg)
{
    LineSearcherState *state = arg;
    *state->lines = findLines(state->haystack, state->len);
    return NULL;
}

/*
 * Entry point for the needle searching threads.
 */
void *needleSearcher(void *arg)
{
    NeedleSearcherState *state = arg;
    NeedleSearcherResult *results = NULL;
    NeedleSearcherResult *results_tail = NULL;

    ssize_t offset;
    const char *haystack = state->haystack;
    size_t len = state->len;
    size_t needle_len = strlen(state->needle);

    // Find and collect all substrings.
    while ((offset = findFirstSubstring(state->needle, haystack, len)) != -1)
    {
        NeedleSearcherResult *r = malloc(sizeof(NeedleSearcherResult));
        r->match = haystack + offset;
        r->next = NULL;
        // no overlapping matches
        haystack += offset + needle_len;
        len -= offset + needle_len;
        if (results_tail)
        {
            results_tail->next = r;
        }
        else
        {
            results = r;
        }
        results_tail = r;
    }

    // Wait for line information to be ready.
    pthread_mutex_lock(state->mutex);
    while (!*state->lines_valid)
    {
        pthread_cond_wait(state->cond, state->mutex);
    }
    // Once the lines are valid, there are no more writes to them, so no
    // locking is necessary.
    pthread_mutex_unlock(state->mutex);

    for (results_tail = results; results_tail; results_tail = results_tail->next)
    {
        results_tail->line = findLineContaining(*state->lines, results_tail->match);
    }
    return results;
}

/*
 * Perform a parallel search for `needle` on `haystack`, printing all matching lines.
 */
void parallelStringSearch(const char *needle, const char *haystack, size_t hay_len, int threads)
{
    size_t needle_len = strlen(needle);

    Lines *lines;
    // Start the line searcher thread.
    LineSearcherState line_state = {.lines = &lines, .haystack = haystack, .len = hay_len};
    pthread_t line_thread;
    pthread_create(&line_thread, NULL, lineSearcher, &line_state);

    // Start the threads searching for the keyword.
    pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
    bool lines_valid = false;
    NeedleSearcherState *state = malloc(sizeof(NeedleSearcherState) * threads);
    pthread_t *searcher_threads = malloc(sizeof(pthread_t) * threads);
    for (int i = 0; i < threads; i++)
    {
        state[i] = (NeedleSearcherState){
            .needle = needle,
            // overlap by needle_len - 1
            .haystack = haystack + i * hay_len / threads - (i > 0 ? needle_len - 1 : 0),
            .len = hay_len / threads + (i > 0 ? needle_len - 1 : 0),

            .cond = &cond,
            .mutex = &mutex,
            .lines_valid = &lines_valid,
            .lines = &lines,
        };
        pthread_create(&searcher_threads[i], NULL, needleSearcher, &state[i]);
    }

    // Wait for the lines to be ready, then signal the search threads.
    pthread_join(line_thread, NULL);

    pthread_mutex_lock(&mutex);
    lines_valid = true;
    pthread_cond_broadcast(&cond);
    pthread_mutex_unlock(&mutex);

    for (int i = 0; i < threads; i++)
    {
        NeedleSearcherResult *result;
        pthread_join(searcher_threads[i], (void **)&result);
        for (NeedleSearcherResult *r = result; r; r = result)
        {
            size_t lineno = r->line - lines->lines;
            printf("%zu:%zu\t%.*s\n", lineno, r->match - r->line->start, (int)r->line->len - 1, r->line->start);
            result = r->next;
            free(r);
        }
    }

    free(lines);
    free(state);
    free(searcher_threads);
}
