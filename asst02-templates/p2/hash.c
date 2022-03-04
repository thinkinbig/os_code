#include <string.h>

#include "hash.h"

/*
 * Returns a hash value for the given string.
 */
uint64_t hashString(char *c)
{
  uint64_t hash = 5381;
  while (*c)
  {
    hash = hash * 33 + *c++;
  }
  return hash;
}

/*
 * Inserts a key-value pair into the hash table.
 */
int insert(hashtable *table, char *key, int value)
{
  size_t start, pos;
  start = hashString(key) % table->capacity;
  pos = start;
  while (table->elements[pos].valid)
  {
    if (strcmp(key, table->elements[pos].key) == 0)
    {
      break;
    }
    // linear probing: skip valid elements
    pos = (pos + 1) % table->capacity;
    // if we come back to the start, there are no free slots
    if (pos == start)
    {
      return 0;
    }
  }
  table->elements[pos].valid = 1;
  table->elements[pos].key = key;
  table->elements[pos].value = value;
  return 1;
}

/*
 * Retrieves the value for a given key.
 */
int find(hashtable *table, char *key, int *value)
{
  size_t start, pos;
  start = hashString(key) % table->capacity;
  pos = start;
  while (table->elements[pos].valid)
  {
    if (strcmp(key, table->elements[pos].key) == 0)
    {
      *value = table->elements[pos].value;
      return 1;
    }
    pos = (pos + 1) % table->capacity;
    // If we come back to the start, the table is full, but does not
    // contain the key.
    if (pos == start)
    {
      break;
    }
  }
  return 0;
}
