/*
 *  @brief A simple queue, whose elements are pairs of integers,
 *      one being the id of the producer and the other the value produced
 *
 * @remarks safe, non busy waiting version
 *
 *  The following operations are defined:
 *     \li insertion of a value
 *     \li retrieval of a value.
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/msg.h>

#include "queue.h"

/*
 *  \brief Shared data structure.
 */
typedef struct Item
{
    unsigned int id;     ///< id of the producer
    unsigned int value;  ///< value stored
} Item;

typedef struct Message
{
    long type;
    Item item;
} Message;

/** \brief internal storage region of queue type */
static int msgid = -1;

/* ************************************************* */

/* Initialization of the communication channel */
void queueCreate(void)
{
    /* create the message queue */
    msgid = msgget(IPC_PRIVATE, 0600 | IPC_CREAT | IPC_EXCL);
    if (msgid == -1)
    {
        perror("Fail creating message queue");
        exit(EXIT_FAILURE);
    }
}

/* ************************************************* */

void queueConnect()
{
}

/* ************************************************* */

void queueDisconnect()
{
}

/* ************************************************* */

void queueDestroy()
{
    /* ask OS to destroy the message queue */
    msgctl(msgid, IPC_RMID, NULL);
    msgid = -1;
}

/* ************************************************* */

/* Insertion of a pait <id, value> into the message queue  */
void queueSend(unsigned int id, unsigned int value)
{
    /* construct message to be sent */
    Message msg = { 1, id, value };

    /* send the message */
    msgsnd(msgid, &msg, sizeof(Item), 0);
}

/* ************************************************* */

/* Retrieval of a pair <id, value> from the queue */

void queueRetrieve (unsigned int * idp, unsigned int * valuep)
{
    /* get message from queue */
    Message msg;
    msgrcv(msgid, &msg, sizeof(Item), 1, 0);

    /* return values */
    *idp = msg.item.id;
    *valuep = msg.item.value;
}

/* ************************************************* */

