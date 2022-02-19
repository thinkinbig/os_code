#include "my_queue.h"
#include <stdio.h>
#include <stdlib.h>

/*
 * Creates a new entry with the given value.
 */
entry *_allocate_entry(long value) {
  entry *_entry = malloc(sizeof(entry));
  if (_entry == NULL) {
    printf("Error allocating memory");
    return NULL;
  }
  _entry->value = value;
  return _entry;
}

/*
 * Release memory for an entry that is not used anymore.
 */
void _free_entry(entry *entry) {
  if (entry->prev != NULL && entry->next != NULL) {
    entry->next = entry->prev->next;
    entry->next->prev = entry->prev;
  }
  free(entry);
}

entry *_head(queue_t *queue) { return queue->dummy->next; }

entry *_tail(queue_t *queue) { return queue->dummy->prev; }

void queue_init(queue_t *queue) {
  entry *dummy = _allocate_entry(-1);
  dummy->next = dummy;
  dummy->prev = dummy;
  queue->dummy = dummy;
}

void queue_delete(queue_t *queue) {
  while (!queue_empty(queue)) {
    queue_remove(queue);
  }
  _free_entry(queue->dummy);
}

void queue_add(queue_t *queue, long value) {
  entry *prev = queue->dummy->prev;
  entry *node = _allocate_entry(value);
  if (node == NULL) {
    return;
  }
  prev->next = node;
  queue->dummy->prev = node;
  node->prev = prev;
  node->next = queue->dummy;
}

long queue_remove(queue_t *queue) {
  entry *prev = _tail(queue);
  long value = prev->value;
  if (prev != queue->dummy) {
    queue->dummy->prev = prev->prev;
    prev->prev->next = queue->dummy;
    _free_entry(prev);
  }
  return value;
}

int queue_empty(queue_t *queue) { return queue->dummy->prev == queue->dummy; }