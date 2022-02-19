#include "linkedlist.h"

/*
 * Creates a new entry with the given value.
 */
entry *allocateEntry(int value) {
  entry *_entry = (entry *)malloc(sizeof(entry));
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
void freeEntry(entry *entry) {
  if (entry->prev != NULL && entry->next != NULL) {
    entry->next = entry->prev->next;
    entry->next->prev = entry->prev;
  }
  free(entry);
}

/*
 * Insert value at the front of the list.
 */
void insertValue(linkedlist *list, int value) {
  entry *_entry = allocateEntry(value);
  if (_entry == NULL) {
    return;
  }
  if (list->head == NULL) {
    list->head = _entry;
    _entry->next = _entry;
    _entry->prev = _entry;
  } else {
    _entry->next = list->head->next;
    list->head->next->prev = _entry;
    list->head->next = _entry;
    _entry->prev = list->head;
  }
}

/*
 * Find the first entry containing the value in the list.
 */
entry *findFirstEntryWithValue(linkedlist *list, int value) {
  entry *cur = list->head;
  if (cur == NULL) {
    return NULL;
  }
  while (cur->value != value && cur->next != list->head) {
    cur = cur->next;
  }
  if (cur->value == value)
    return cur;
  else
    return NULL;
}

/*
 * Remove the first entry containing the value from the list.
 */
void removeFirstEntryWithValue(linkedlist *list, int value) {
  entry *first = findFirstEntryWithValue(list, value);
  if (first == NULL)
    return;
  else {
    if (first == list->head) {
      if (list->head == list->head->next) {
        list->head = NULL;
      } else {
        list->head->prev->next = list->head->next;
        list->head = list->head->next;
      }
    }
    freeEntry(first);
  }
}
