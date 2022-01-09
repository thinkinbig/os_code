#include "sorting.h"
#include <assert.h>
#include <string.h>

/**
 * Swap both Integers the pointers are pointing to with each other.
 */
void swap(int *pointer1, int *pointer2)
{
    int i = *pointer1;
    *pointer1 = *pointer2;
    *pointer2 = i;
}

/**
 * Sorts the array toSort with given length ascending using insertion sort.
 */
void insertionSort(int *toSort, size_t length)
{
    if (toSort == NULL)
        return;
    for (size_t i = 1; i < length; ++i)
        for (size_t j = 0; j < i; ++j)
            if (toSort[j] > toSort[i])
                swap(&toSort[j], &toSort[i]);
}

/**
 * Creates a new array and copies length elements from src array into the new array.
 * The caller needs to free the new returned array.
 */
int *copy(int *src, size_t length)
{
    int *dest = (int*) malloc(sizeof(int) * length);
    if (src == NULL || dest == NULL)
        return NULL;
    memcpy(dest, src, length * sizeof(int));
    return dest;
}

/**
  * Merge src array which contains two sorted sub array src[start...middle - 1] and src[middle...end-1].
  * The sub arrays are merged into destToMergeInto with the result sorted as well.
  */
void merge(int *src, size_t start, size_t middle, size_t end, int *destToMergeInto)
{
    if (src == NULL || destToMergeInto == NULL)
        return;
    size_t leftIndex = start;
    size_t rightIndex = middle;
    for (size_t i = start; i < end; ++i) {
        if (leftIndex < middle && (rightIndex >= end || src[leftIndex] <= src[rightIndex])) {
            destToMergeInto[i] = src[leftIndex++];
        } else {
            destToMergeInto[i] = src[rightIndex++];
        }
    }

}

/**
 * Sorts the array srcToSort recursively with merge sort. 
 * Start and end indicate the current window of srcToSort array this call sorts.
 * The result will be in sortedDest.
 */
void mergeSortRec(int *srcToSort, size_t start, size_t end, int *sortedDest)
{
    if (end - start > 1) {
        size_t middle = (end + start) / 2;
        mergeSortRec(sortedDest, start, middle, srcToSort);
        mergeSortRec(sortedDest, middle, end, srcToSort);
        merge(srcToSort, start, middle, end, sortedDest);
    }
}

/**
 * Sorts the array toSort with given length ascending using merge sort.
 */
void mergeSort(int *toSort, size_t length)
{
    int *copyToSort = copy(toSort, length);
    mergeSortRec(copyToSort, 0, length, toSort);
    free(copyToSort);
}

/**
 * Rotates the array stackOfPancakes[0...numberOfPancakesToFlip-1].
 */
void flip(int *stackOfPancakes, size_t numberOfPancakesToFlip)
{
    if (stackOfPancakes == NULL || numberOfPancakesToFlip==0)
        return;
    size_t start = 0;
    size_t end = numberOfPancakesToFlip - 1;
    while(start < end){
        swap(&stackOfPancakes[start++], &stackOfPancakes[end--]);
    }
}

/**
 * Finds the index of the largest number in array with the given length.
 */
size_t findIndexOfMax(int *array, size_t length)
{
    if (array == NULL)
        return 42;
    int max = *array;
    size_t index = 0;
    for (size_t i = 1; i < length; ++i) {
        if (array[i] > max) {
            index = i;
            max = array[i];
        }
    }
    return index;
}

/**
 * Sorts the array toSort with given length ascending using pancake sort.
 */
void pancakeSort(int *toSort, size_t length)
{
    size_t maxIndex = 0;
    for (size_t i = length; i > 1; --i) {
        maxIndex = findIndexOfMax(toSort, i);
        if (maxIndex != i) {
            flip(toSort, maxIndex + 1);
            flip(toSort, i);
        }
    }
}
