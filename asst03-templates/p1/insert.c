#include "insert.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*
 * Reminder: insert() function from the tutorial that does not manage capacity.
 */
void insert_tut(int *a, size_t *length, int z)
{
	int *p = a;
	int *end = a + *length;
	while ((p < end) && (*p < z)) { ++p; }
	memmove(p + 1, p, (end - p) * sizeof(int));
	*p = z;
	(*length)++;
}

/*
 * New insert() function that reallocates if the array is full.
 */
void insert(int **array, size_t *length, size_t *capacity, int z)
{
	size_t c = *capacity;
    int* p = *array;
	int l = *length;
	int flag = 0;
    while (c <= *length)
    {
		flag = 1;
        c += 10;
    }

	if (flag)
	{
		free(p);
		p = (int*) malloc(c * sizeof(int));
		if (p == NULL)
		{
			fprintf(stderr, "No memory can be allocated\n");
			return;
		}
		memcpy(p, *array, l * sizeof(int));
		*array = p;
        *capacity = c;
	}

    insert_tut(p, length, z);
}
