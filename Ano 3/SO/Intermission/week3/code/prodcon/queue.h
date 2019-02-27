/**
 *  @file 
 *
 *  @brief A simple queue, whose elements are pairs of integers,
 *      one representing the producer and the other the value produced
 *
 *  The following operations are defined:
 *     \li insertion of a value
 *     \li retrieval of a value.
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#ifndef __SO_IPC_PRODUCER_CONSUMER_QUEUE_
#define __SO_IPC_PRODUCER_CONSUMER_QUEUE_

/** \brief Create and init the queue */
void queueCreate(void);

/** \brief Connect to the queue */
void queueConnect();

/** \brief Disconnect from the queue */
void queueDisconnect();

/** \brief Destroy the queue */
void queueDestroy();

/**
 *  \brief Insertion of a value into the queue.
 *
 * \param id id of the producer
 * \param value value to be stored
 */
void queueSend (unsigned int id, unsigned int value);

/**
 *  \brief Retrieval of a value from the queue.
 *
 * \param idp pointer to recipient where to store the producer id
 * \param valuep pointer to recipient where to store the value 
 */
void queueRetrieve (unsigned int * idp, unsigned int  *valuep);

#endif /* __SO_IPC_PRODUCER_CONSUMER_QUEUE_ */
