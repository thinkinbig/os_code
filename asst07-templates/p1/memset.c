#include "memset.h"

#define ROT_BIT 8

/**
 * Rotates a 64 bit integer by one byte (8 bit) to the right.
 */
uint64_t rotr(uint64_t v) { return (v >> ROT_BIT) | (v << (64 - ROT_BIT)); }

/**
 * Writes the pattern in *pat byte-by-byte to the memory area pointed to with s
 * and of length n. After the call the pattern in *pat should be rotated so that
 * the next byte to write is at the front of the pattern. As a result calling
 * pattern_memset_byte again with the same pattern will continue the pattern.
 */
void pattern_memset_byte(void *s, uint64_t *pat, size_t n) {
  char *toWriteTo = s;
  for (size_t i = 0; i < n; ++i) {
    toWriteTo[i] = *pat & 0xff;
    *pat = rotr(*pat);
  }
}

/**
 * Writes the pattern pat to the memory area starting at s of length n.
 * The function should minimize the number of memory accesses.
 */
void pattern_memset(void *s, uint64_t pat, size_t n) {
  char *toWriteTo = s;

  /* 1. write non-aligned prefix */
  size_t off_start = (intptr_t)toWriteTo % sizeof(uint64_t);
  if (off_start > n)
    off_start = n;
  pattern_memset_byte(toWriteTo, &pat, off_start);

  /* 2. write aligned uint64_t */
  for (; off_start + sizeof(uint64_t) < n; off_start += sizeof(uint64_t)) {
    *((uint64_t *)&toWriteTo[off_start]) = pat;
  }

  /* 3. write smaller-than-uint64_t suffix */
  pattern_memset_byte(toWriteTo + off_start, &pat, n - off_start);
}
