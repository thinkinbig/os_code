#include "strings.h"

/**
 * Returns the length of string s without counting the terminating null byte.
 */
size_t stringlength(const char *s)
{
    size_t count = 0;
    while (*s)
    {
        count++;
        s++;
    }
    return count;
}

/**
 * Returns a new null byte terminated string that is the result of appending string s2 to s1.
 * The caller is responsible to free the returned string.
 * Returns NULL on any error.
 */
char *stringconcat(const char *s1, const char *s2)
{
    char *ptr = (char*) malloc(sizeof(char) * (stringlength(s1) + stringlength(s2) + 1));
    char *ret = ptr;
    if (ptr == NULL)
    {
        return NULL;
    }
    while (*s1)
    {
        *ptr = *s1;
        s1++;
        ptr++;
    }
    while (*s2)
    {
        *ptr = *s2;
        s2++;
        ptr++;
    }
    *ptr = '\0';
    return ret;
}

/**
 * Splits string toSplit at every occurrence of the delimiter.
 * Returns a null-terminated array with pointers to the null-terminated
 * substrings. The caller should free the result by calling stringsplit_free().
 * Returns NULL on any error.
 */
char **stringsplit(const char *toSplit, char delimiter)
{
    const char *ptr = toSplit;
    size_t num = 1, len = 0;

    // get number of arrays
    while (*ptr)
    {
        len++;
        if (*ptr == delimiter)
        {
            num++;
        }
        ptr++;
    }
    char* str = malloc((len + 1) * sizeof(char));
    char** ret = (char**) malloc(sizeof(char*) * num);
    if (ret == NULL || str == NULL)
    {
        return NULL;
    }
    char **p = ret;
    *p = str;
    p++;
    ptr = toSplit;
    while (*ptr)
    {
        if (*ptr == delimiter)
        {
            *str++ = '\0';
            *p++ = str;
        } else {
            *str++ = *ptr;
        }
        ptr++;
    }
    *str = '\0';
    *p = NULL;
    return ret;

}

/**
 * Frees the result from a stringsplit() call.
 */
void stringsplit_free(char **parts)
{
    free(*parts);
    free(parts);
}
