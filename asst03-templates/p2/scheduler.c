#include "scheduler.h"
#include <stdlib.h>
#include <assert.h>

typedef struct _QueueItem {
    /*
     * The data of this item.
     */
    int data;
    /*
     * The next item in the queue.
     * NULL if there is no next item.
     */
    struct _QueueItem *next;
} QueueItem;

typedef struct _Queue {
    /*
     * The first item of the queue.
     * NULL if the queue is empty.
     */
    QueueItem *head;
    /*
     * The last item of the queue.
     * undefined if the queue is empty.
     */
    QueueItem *tail;
} Queue;

typedef enum _ProcessState {
    STATE_UNUSED = 0, // This entry in the _processes array is unused.

    STATE_READY,      // The process is ready and should be on a ready queue for
                      //   selection by the scheduler
    STATE_RUNNING,    // The process is running and should not be on a ready queue
    STATE_WAITING     // The process is blocked and should not be on a ready queue
} ProcessState;

typedef struct _Process {
    int processId;
    ProcessState state;
    /*
     * Range: 0 ... HIGHEST_PRIORITY (including)
     * HIGHEST_PRIORITY is highest priority
     */
    int priority;
} Process;

Process _processes[MAX_PROCESSES] = {{0}};

/*
 * How often can a process of the same priority be scheduled without needing
 * to schedule one of a lower priority.
 */
#define MAX_SEQUENCE_LENGTH 5

/*
 * The ready queues for each priority.
 */
Queue _queues[HIGHEST_PRIORITY + 1] = {{0}};

/*
 * Counter to determine after how many scheduling decisions a process of a lower
 * priority needs to be chosen.
 */
int _currentSequence[HIGHEST_PRIORITY + 1] = {0};

/*
 * Adds a new, waiting process.
 */
int startProcess(int processId, int priority)
{
    if (((processId < 0) || (processId >= MAX_PROCESSES) ||
        (_processes[processId].state != STATE_UNUSED)) ||
        (priority < 0) || (priority > HIGHEST_PRIORITY)) {

        return -1;
    }

    _processes[processId].processId = processId;
    _processes[processId].state    = STATE_WAITING;
    _processes[processId].priority = priority;
    return 0;
}

/*
 * Append to the tail of the queue.
 * Does nothing on error.
 */
void _enqueue(Queue *queue, int data)
{
    assert(queue != NULL);

    QueueItem *item = (QueueItem*)malloc(sizeof(QueueItem));
    if (item == NULL) {
        return;
    }

    item->data = data;
    item->next = NULL;
    if (queue->head == NULL) {
        queue->head = item;
    } else {
        assert(queue->tail != NULL);

        queue->tail->next = item;
    }

    queue->tail = item;
}

/*
 * Remove and get the head of the queue.
 * Return -1 if the queue is empty.
 */
int _dequeue(Queue *queue)
{
    assert(queue != NULL);

    if (queue->head == NULL) {
        return -1;
    }

    QueueItem *head = queue->head;
    int data = head->data;
    queue->head = head->next;
    free(head);

    return data;
}

void initScheduler()
{

}

static void _enqueueProcess(int processId)
{
    assert((processId >= 0) && (processId < MAX_PROCESSES));
    assert(_processes[processId].state == STATE_READY);

    // Append a process to the right ready queue.
    Queue *queue = &_queues[_processes[processId].priority];
    _enqueue(queue, processId);
}

/*
 * Called whenever a waiting process gets ready to run.
 */
void onProcessReady(int processId)
{
    assert((processId >= 0) && (processId < MAX_PROCESSES));
    assert(_processes[processId].state == STATE_WAITING);

    _processes[processId].state = STATE_READY;
    _enqueueProcess(processId);
}

/*
 * Called whenever a running process is forced of the CPU
 * (e.g., through a timer interrupt).
 */
void onProcessPreempted(int processId)
{
    assert((processId >= 0) && (processId < MAX_PROCESSES));
    assert(_processes[processId].state == STATE_RUNNING);

    _processes[processId].state = STATE_READY;
    _enqueueProcess(processId);
}

/*
 * Called whenever a running process is blocked (e.g., after requesting an I/O
 * operation) and needs to wait.
 */
void onProcessBlocked(int processId)
{
    assert((processId >= 0) && (processId < MAX_PROCESSES));
    assert(_processes[processId].state == STATE_RUNNING);

    _processes[processId].state = STATE_WAITING;
    // We do not need to enqueue waiting processes.
}

static int _dequeueProcess(int priority)
{
    assert(priority <= HIGHEST_PRIORITY);
    if (priority < 0) {
        // Idle process if priority is less than 0. This will abort recursion.
        return -1;
    }

    // Try to schedule a process with lower priority after
    // MAX_SEQUENCE_LENGTH processes of this priority were scheduled.
    if (_currentSequence[priority] >= MAX_SEQUENCE_LENGTH) {
        int nextProcess = _dequeueProcess(priority - 1);

        // Reset the current sequence counter on any chance the lower
        // priority processes have, no matter if one is really running.
        _currentSequence[priority] = 0;
        if (nextProcess != -1) {
            // Only send the replacement process if it was not the idle process.
            return nextProcess;
        }
    }

    Queue *queue = &_queues[priority];
    int dequeued = _dequeue(queue);

    if (dequeued < 0) {
        // No more processes in this queue. We give a chance to processes with
        // lower priority, so we need to reset the sequence counter.
        _currentSequence[priority] = 0;
        return _dequeueProcess(priority - 1);
    } else {
        // Schedule a process with the current priority.
        _currentSequence[priority]++;
        return dequeued;
    }
}

/*
 * Gets the id of the next process to run and sets its state to running.
 */
int scheduleNextProcess()
{
    // Try to schedule a process with the highest priority.
    // This will return a process with a lower priority if required to prevent
    // starvation.
    int processId = _dequeueProcess(HIGHEST_PRIORITY);
    if (processId != -1) {
        assert(processId < MAX_PROCESSES);
        assert(_processes[processId].state == STATE_READY);

        _processes[processId].state = STATE_RUNNING;
    }

    return processId;
}
