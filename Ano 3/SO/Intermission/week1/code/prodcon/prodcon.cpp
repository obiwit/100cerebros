/**
 * @file
 *
 * \brief A producer-consumer application, implemented using threads.
 *
 * \remarks 
 * The return status of the system functions called are intentionally ignored, 
 * as to not mess the illustration purpose of the example. 
 * In a real implementation, that should not be done. 
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include  <stdio.h>
#include  <stdlib.h>
#include  <libgen.h>
#include  <unistd.h>
#include  <sys/wait.h>
#include  <sys/types.h>
#include  <pthread.h>
#include  <math.h>

#include  "fifo.h"
#include  "delays.h"

#define USAGE "Synopsis: %s [options]\n"\
	"\t----------+--------------------------------------------\n"\
	"\t  Option  |          Description                       \n"\
	"\t----------+--------------------------------------------\n"\
	"\t -i num   | number of iterations (dfl: 10; max: 100)   \n"\
	"\t -t num   | number of 'threads' (dfl: 4; max 100)      \n"\
	"\t -h       | this help                                  \n"\
	"\t----------+--------------------------------------------\n"

/* Argument value for producer and consumer threads */
typedef struct
{
    unsigned int id;      ///< thread id
    unsigned int niter;   ///< number of iterations
} ARGV;

/* ******************************************************* */

/* The producer thread */
void *producer(void *argp)
{
    /* cast argument to real type */
    ARGV* argv = (ARGV*)argp;

    /* make the job */
    unsigned int i;
    for (i = 0; i < argv->niter; i++)
    {
        /* retrieve an item from the fifo */
        unsigned int id = argv->id;
        unsigned int value = i * 10000 + id;
        fifoIn(id, value);

        /* do something else */
        gaussianDelay(10, 5);

        /* print them */
            printf("\e[32;01mThe value %05u was produced by thread P%u!\e[0m\n", value, id);
    }

    printf("Producer %u is quiting\n", argv->id);
    return NULL;
}

/* ******************************************************* */

/* The consumer thread */
void *consumer(void *argp)
{
    /* cast argument to real type */
    ARGV* argv = (ARGV*)argp;

    /* make the job */
    unsigned int i;
    for (i = 0; i < argv->niter; i++)
    {
        /* do something else */
        gaussianDelay(10, 5);

        /* retrieve an item from the fifo */
        unsigned int pid, value;
        fifoOut(&pid, &value);

        /* print them */
        if (value == 99999999 || pid == 99999999 || (value % 100) != pid)
            printf("\e[31;01mThe value %05u was produced by thread P%u and consumed by thread C%u!\e[0m\n",
                    value, pid, argv->id);
        else
            printf("\e[34;01mThe value %05u was produced by thread P%u and consumed by thread C%u!\e[0m\n",
                    value, pid, argv->id);
    }

    printf("Consumer %u is quiting\n", argv->id);
    return NULL;
}

/* ******************************************************* */

/*   main thread: it starts the simulation and generates the producer and consumer threads */
int main(int argc, char *argv[])
{
    int niter = 10; ///< number of iterations
    int nthr = 4;   ///< number of consumers and producers

    /* command line processing */
    int option;
    while ((option = getopt(argc, argv, "i:t:h")) != -1)
    {
        switch (option)
        {
            case 'i':
                niter = atoi(optarg);
                if (niter > 100)
                {
                    fprintf(stderr, "Too many iterations!\n");
                    fprintf(stderr, USAGE, basename(argv[0]));
                    return EXIT_FAILURE;
                }
                break;
            case 't':
                nthr = atoi(optarg);
                if (nthr > 100)
                {
                    fprintf(stderr, "Too many threads!\n");
                    fprintf(stderr, USAGE, basename(argv[0]));
                    return EXIT_FAILURE;
                }
                break;
            case 'h':
                printf(USAGE, basename(argv[0]));
                return EXIT_SUCCESS;
            default:
                fprintf(stderr, "Non valid option!\n");
                fprintf(stderr, USAGE, basename(argv[0]));
                return EXIT_FAILURE;
        }
    }

    /* init fifo */
    fifoInit();

    /* start random generator */
    srand(getpid());

    /* launching the consumers */
    pthread_t cthr[nthr];   /* consumers' ids */
    ARGV carg[nthr];        /* consumers' args */
    printf("Launching %d consumer threads, each performing %d iterations\n", nthr, niter);
    int i;
    for (i = 0; i < nthr; i++)
    {
        carg[i].id = i;
        carg[i].niter = niter;
        if (pthread_create(&cthr[i], NULL, consumer, &carg[i]) != 0)
        {
            fprintf(stderr, "consumer %d\n", i);
            perror("error on launching the consumer thread");
            return EXIT_FAILURE;
        }
    }

    /* launching the producers */
    pthread_t pthr[nthr];   /* producers' ids */
    ARGV parg[nthr];        /* producers' args */
    printf("Launching %d producer threads, each performing %d iterations\n", nthr, niter);
    //unsigned int id;
    for (i = 0; i < nthr; i++)
    {
        parg[i].id = i;
        parg[i].niter = niter;
        if (pthread_create(&pthr[i], NULL, producer, &parg[i]) != 0)
        {
            fprintf(stderr, "producer %d\n", i);
            perror("error on launching the consumer thread");
            return EXIT_FAILURE;
        }
    }

    /* wait for threads to conclude */
    for (i = 0; i < nthr; i++)
    {
        if (pthread_join(pthr[i], NULL) != 0)
        {
            fprintf(stderr, "producer %d\n", i);
            perror("error on waiting for a thread to conclude");
            return EXIT_FAILURE;
        }
        printf("Producer thread %d has terminated\n", i);
    }
    for (i = 0; i < nthr; i++)
    {
        if (pthread_join(cthr[i], NULL) != 0)
        {
            fprintf(stderr, "consumer %d\n", i);
            perror("error on waiting for a thread to conclude");
            return EXIT_FAILURE;
        }
        printf("Consumer thread %d has terminated\n", i);
    }

    return EXIT_SUCCESS;
}

