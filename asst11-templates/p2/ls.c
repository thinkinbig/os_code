#include "ls.h"
// You may not need all these headers ...
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <errno.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <unistd.h>

// Use this function to display the files. DO NOT CHANGE IT.
void _printLine(unsigned int size, unsigned int sizeOnDisk, const char *name)
{
    printf("%010u   %010u   %s\n", size, sizeOnDisk, name);
}

// Assume this to be the maximum length of a file name returned by readdir
#define MAX_FILE_NAME_LENGTH 255

int _extension_checker(const char *filename, const char *filterByExtension)
{
    if (filename[0] == '.')
    {
        return 0;
    }
    if (filterByExtension == NULL)
    {
        return 1;
    }
    const char *dot = strchr(filename, '.');
    if (dot == NULL)
    {
        return 0;
    }
    const char *ext = dot + 1;
    return (strcmp(ext, filterByExtension) == 0);
}

int list(const char *path, const char *filterByExtension)
{
    int res = -1;
    DIR *dir = opendir(path);
    size_t bufLength = strlen(path) + 1 + MAX_FILE_NAME_LENGTH + 1;
    char *filename = malloc(bufLength);
    if (dir == NULL)
    {
        printf("opendir\n");
        return -1;
    }
    struct dirent *entry;
    errno = 0;
    while ((entry = readdir(dir)) != NULL &&
           _extension_checker(entry->d_name, filterByExtension))
    {
        struct stat statBuffer;
        int r = snprintf(filename, bufLength, "%s%s", path, entry->d_name);
        assert((size_t)r < bufLength); // Output should never be truncated...
        assert(r != -1);               // ...and format string should be ok.

        if (stat(filename, &statBuffer) < 0)
        {
            free(filename);
            closedir(dir);
            return -1;
        }
        _printLine(statBuffer.st_size, statBuffer.st_blksize * statBuffer.st_blocks, entry->d_name);

        errno = 0;
    }

    if (errno == 0)
    {
        res = 0;
    }
    free(filename);
    closedir(dir);
    return res;
}
