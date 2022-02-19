#ifndef MY_QUEUE_H
#define MY_QUEUE_H

#include <pthread.h>

typedef struct _entry {
  /*
   * Pointer to previous entry in list.
   */
  struct _entry *prev;
  /*
   * Pointer to next entry in list.
   */
  struct _entry *next;
  /*
   * Some data stored in this entry.
   */
  long value;
} entry;

typedef struct _queue_t {
  entry *dummy;
} queue_t;

void queue_init(queue_t *queue);
void queue_delete(queue_t *queue);
void queue_add(queue_t *queue, long value);
long queue_remove(queue_t *queue);
int queue_empty(queue_t *queue);
#endif