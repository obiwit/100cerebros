/**
 * @file
 *
 * \brief A producer-consumer application, implemented using processes,
 *      and shared memory.
 *
 * \remarks The return status of the processes are ignored
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include  <stdio.h>
#include  <stdlib.h>
#include  <libgen.h>
#include  <unistd.h>
#include  <sys/wait.h>
#include  <sys/types.h>
#include  <math.h>

#include  "fifo.h"
#include  "delays.h"

#define USAGE "Synopsis: %s [options]\n"\
	"\t----------+--------------------------------------------\n"\
	"\t  Option  |          Description                       \n"\
	"\t----------+--------------------------------------------\n"\
	"\t -i num   | number of iterations (dfl: 10; max: 100)   \n"\
	"\t -p num   | number of processes (dfl: 4; max 100)      \n"\
	"\t -h       | this help                                  \n"\
	"\t----------+--------------------------------------------\n"

/* ******************************************************* */

/* The producer process */
int producer(unsigned int id, unsigned int niter)
{
    /* connect to the shared FIFO */
    fifoConnect();

    /* make the job */
    unsigned int i;
    for (i = 0; i < niter; i++)
    {
        /* retrieve an item from the fifo */
        unsigned int value = i * 10000 + id;
        fifoIn(id, value);

        /* do something else */
        gaussianDelay(10, 5);

        /* print them */
            printf("\e[32;01mThe value %05u was produced by process P%u!\e[0m\n", value, id);
    }

    /* disconnect from the FIFO */
    fifoDisconnect();

    //printf("Producer %u is quiting\n", id);
    exit(EXIT_SUCCESS);
}

/* ******************************************************* */

/* The consumer process */
int consumer(unsigned int id, unsigned int niter)
{
    /* connect to the shared FIFO */
    fifoConnect();

    /* make the job */
    unsigned int i;
    for (i = 0; i < niter; i++)
    {
        /* do something else */
        gaussianDelay(10, 5);

        /* retrieve an item from the fifo */
        unsigned int pid, value;
        fifoOut(&pid, &value);

        /* print them */
        if (value == 99999999 || pid == 99999999 || (value % 100) != pid)
            printf("\e[31;01mThe value %05u was produced by process P%u and consumed by process C%u!\e[0m\n",
                    value, pid, id);
        else
            printf("\e[34;01mThe value %05u was produced by process P%u and consumed by process C%u!\e[0m\n",
                    value, pid, id);
    }

    /* disconnect from the FIFO */
    fifoDisconnect();

    //printf("Consumer %u is quiting\n", id);
    exit(EXIT_SUCCESS);
}

/* ******************************************************* */

/* launcher of a process to run a given routine */
int proc_create(int (*routine)(unsigned int, unsigned int), unsigned int id, unsigned int n)
{
    int pid = fork();

    /* parent side, even in case of error */
    if (pid != 0) return pid;

    /* child side: run given routine */
    routine(id, n);
    return 0;
}

/* ******************************************************* */

/*   main process: it starts the simulation and generates the producer and consumer processes */
int main(int argc, char *argv[])
{
    unsigned int niter = 10; ///< number of iterations
    unsigned int nproc = 5;   ///< number of consumers and producers

    /* command line processing */
    int option;
    while ((option = getopt(argc, argv, "i:p:h")) != -1)
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
            case 'p':
                nproc = atoi(optarg);
                if (nproc > 100)
                {
                    fprintf(stderr, "Too many processes!\n");
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
    fifoCreate();

    /* start random generator */
    srand(getpid());

    /* launching the consumers */
    int cpid[nproc];   /* consumers' ids */
    printf("Launching %d consumer processes, each performing %d iterations\n", nproc, niter);
    for (unsigned int i = 0; i < nproc; i++)
    {
        if ((cpid[i] = proc_create(consumer, i, niter)) < 0)
        {
            fprintf(stderr, "consumer %d\n", i);
            perror("error on launching the consumer process");
            return EXIT_FAILURE;
        }
        printf("- Consumer process %d was launched\n", i);
    }

    /* launching the producers */
    int ppid[nproc];   /* producers' ids */
    printf("Launching %d producer processes, each performing %d iterations\n", nproc, niter);
    for (unsigned int i = 0; i < nproc; i++)
    {
        if ((ppid[i] = proc_create(producer, i, niter)) < 0)
        {
            fprintf(stderr, "producer %d\n", i);
            perror("error on launching the consumer process");
            return EXIT_FAILURE;
        }
        printf("- Producer process %d was launched\n", i);
    }

    /* wait for processes to conclude */
    for (unsigned int i = 0; i < nproc; i++)
    {
        pid_t pid;
        if ((pid = waitpid(ppid[i], NULL, 0)) < 0)
        {
            fprintf(stderr, "process %d\n", pid);
            perror("error on waiting for a process to conclude");
            return EXIT_FAILURE;
        }
        printf("Producer %d (process %d) has terminated\n", i, pid);
    }
    for (unsigned int i = 0; i < nproc; i++)
    {
        pid_t pid;
        if ((pid = waitpid(cpid[i], NULL, 0)) < 0)
        {
            fprintf(stderr, "process %d\n", pid);
            perror("error on waiting for a process to conclude");
            return EXIT_FAILURE;
        }
        printf("Consumer %d (process %d) has terminated\n", i, pid);
    }

    /* destroy the shared data */
    fifoDestroy();

    return EXIT_SUCCESS;
}

