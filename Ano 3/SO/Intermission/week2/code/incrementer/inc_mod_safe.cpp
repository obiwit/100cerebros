/*
 * A race conditions free implementation of module inc_mod
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include "bwdelay.h"

#include <stdlib.h>
#include <stdio.h>
#include <sys/shm.h>
#include <sys/sem.h>

const long key = 0x1111L;

/* time delay length */
#define INC_TIME 500

/* Internal data structure */
typedef struct
{
    int var1, var2;
    int semid;
} SharedDataType;

static int shmid = -1;
static SharedDataType * p = NULL;

/* manipulation functions */

static void lock()
{
    struct sembuf down = {0, -1, 0};
    if (semop(p->semid, &down, 1) == -1)
    {
        perror("lock");
        exit(EXIT_FAILURE);
    }
}

static void unlock()
{
    struct sembuf up = {0, 1, 0};
    if (semop(p->semid, &up, 1) == -1)
    {
        perror("unlock");
        exit(EXIT_FAILURE);
    }
}

void v_create()
{
    /* create the shared memory */
    shmid = shmget(key, sizeof(SharedDataType), 0600 | IPC_CREAT | IPC_EXCL);
    if (shmid == -1)
    {
        perror("Fail creating shared data");
        exit(EXIT_FAILURE);
    }

    /* attach shared memory to process addressing space */ 
    p = (SharedDataType*)shmat(shmid, NULL, 0);
    if (p == (void*)-1)
    {
        perror("Fail connecting to shared data");
        exit(EXIT_FAILURE);
    }

    /* create access locker */
    p->semid = semget(key, 1, 0600 | IPC_CREAT | IPC_EXCL);
    if (p->semid == -1)
    {
        perror("Fail creating locker semaphore");
        exit(EXIT_FAILURE);
    }

    /* unlock shared data structure */
    unlock();

    /* detach shared memory from process addressing space */
    shmdt(p);
    p = NULL;
}

void v_connect()
{
    /* get access to the shared memory */
    shmid = shmget(key, 0, 0);
    if (shmid == -1)
    {
        perror("Fail connecting to shared data");
        exit(EXIT_FAILURE);
    }

    /* attach shared memory to process addressing space */ 
    p = (SharedDataType*)shmat(shmid, NULL, 0);
    if (p == (void*)-1)
    {
        perror("Fail connecting to shared data");
        exit(EXIT_FAILURE);
    }
}

void v_destroy()
{
    /* destroy the locker semaphore */
    semctl(p->semid, 0, IPC_RMID, NULL);

    /* detach shared memory from process addressing space */
    shmdt(p);
    p = NULL;

    /* ask OS to destroy the shared memory */
    shmctl(shmid, IPC_RMID, NULL);
    shmid = -1;
}

/* set shared data with new values */
void v_set(int value1, int value2)
{
    lock();

	p->var1 = value1;
	p->var2 = value2;
    
    unlock();
}

/* get current values of shared data */
void v_get(int * value1p, int * value2p)
{
    lock();

	*value1p = p->var1;
	*value2p = p->var2;

    unlock();
}

/* increment both variables of the shared data */
void v_inc(void)
{
    lock();
    
    /* variables are incremented as in the unsafe version, but without race conditions */
    int v1 = p->var1 + 1;
    bwRandomDelay(INC_TIME);
    p->var1 = v1;

    p->var2++;

    unlock();
}

