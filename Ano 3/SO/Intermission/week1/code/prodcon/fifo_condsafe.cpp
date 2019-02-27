/*
 *  @brief A simple FIFO, whose elements are pairs of integers,
 *      one being the id of the producer and the other the value produced
 *
 * @remarks safe, bust waiting version
 *
 *  The following operations are defined:
 *     \li insertion of a value
 *     \li retrieval of a value.
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>
#include <errno.h>
#include <pthread.h>

#include "fifo.h"
#include "delays.h"

/** \brief internal storage size of <em>FIFO memory</em> */
#define  FIFOSZ         5

/*
 *  \brief Data structure.
 */
typedef struct ITEM
{
    unsigned int id;     ///< id of the producer
    unsigned int value;  ///< value stored
} ITEM;

typedef struct FIFO
{ 
    unsigned int ii;   ///< point of insertion
    unsigned int ri;   ///< point of retrieval
    unsigned int cnt;  ///< number of items stored
    ITEM slot[FIFOSZ];  ///< storage memory
} FIFO;

/** \brief internal storage region of FIFO type */
static FIFO fifo;

/** \brief locking flag which warrants mutual exclusion inside the monitor */
static pthread_mutex_t accessCR = PTHREAD_MUTEX_INITIALIZER;

/** \brief condition variable for checking fifo fullness and emptiness */
static pthread_cond_t fifoNotFull = PTHREAD_COND_INITIALIZER;
static pthread_cond_t fifoNotEmpty = PTHREAD_COND_INITIALIZER;

/* ************************************************* */

/* Initialization of the FIFO */
void fifoInit(void)
{
    pthread_mutex_lock(&accessCR);

    unsigned int i;
    for (i = 0; i < FIFOSZ; i++)
    {
        fifo.slot[i].id = 99999999;
        fifo.slot[i].value = 99999999;
    }
    fifo.ii = fifo.ri = 0;
    fifo.cnt = 0;

    pthread_cond_signal(&fifoNotFull);

    pthread_mutex_unlock(&accessCR);
}

/* ************************************************* */

/* Check if FIFO is full */
static bool fifoFull(void)
{
    return fifo.cnt == FIFOSZ;
}

/* ************************************************* */

/* Check if FIFO is empty */
static bool fifoEmpty(void)
{
    return fifo.cnt == 0;
}

/* ************************************************* */

/* Insertion of a pait <id, value> into the FIFO  */
void fifoIn(unsigned int id, unsigned int value)
{
    pthread_mutex_lock(&accessCR);

    /* wait while fifo is full */
    while (fifoFull())
    {
        pthread_cond_wait(&fifoNotFull, &accessCR); 
    }

    /* Insert pair */
    fifo.slot[fifo.ii].value = value;
    gaussianDelay(1, 0.5);
    fifo.slot[fifo.ii].id = id;
    fifo.ii = (fifo.ii + 1) % FIFOSZ;
    fifo.cnt++;

    pthread_cond_signal(&fifoNotEmpty);

    pthread_mutex_unlock(&accessCR);
}

/* ************************************************* */

/* Retrieval of a pair <id, value> from the FIFO */

void fifoOut (unsigned int * idp, unsigned int * valuep)
{
    pthread_mutex_lock(&accessCR);

    /* wait while fifo is empty */
    while (fifoEmpty())
    {
        pthread_cond_wait(&fifoNotEmpty, &accessCR); 
    }

    /* Retrieve pair */
    *valuep = fifo.slot[fifo.ri].value;
    fifo.slot[fifo.ri].value = 99999999;
    *idp = fifo.slot[fifo.ri].id;
    fifo.slot[fifo.ri].id = 99999999;
    fifo.ri = (fifo.ri + 1) % FIFOSZ;
    fifo.cnt--;

    pthread_cond_signal(&fifoNotFull);

    pthread_mutex_unlock(&accessCR);
}

/* ************************************************* */

