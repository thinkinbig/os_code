#include <stdint.h>

#include "bits.h"

/*
 * Returns the n'th bit of the array A.
 */
int getN(uint64_t *A, size_t n)
{
    size_t element = n / 64;
    size_t bit     = n % 64;
    uint64_t mask = (uint64_t) 1 << bit;
    return (A[element] & mask) != 0;
}

/*
 * Sets the n'th bit of the array A.
 */
void setN(uint64_t *A, size_t n)
{
    size_t element = n / 64;
    size_t bit     = n % 64;
    uint64_t mask = (uint64_t) 1 << bit;
    A[element] |= mask;
}

/*
 * Clears the n'th bit of the array A.
 */
void clrN(uint64_t *A, size_t n)
{
    size_t element = n / 64;
    size_t bit     = n % 64;
    uint64_t mask = (uint64_t) 1 << bit;
    A[element] &= ~mask;
}


/*
 * Rotates the integer i n bits to the right.
 */
uint64_t rot(uint64_t i, int n)
{
    n  = ((n % 64) + 64) % 64;
    return (i >> n) | (i << (64 - n));
}

