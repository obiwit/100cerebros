#include <stdio.h>
#include <stdlib.h>
#include "pqueue.h"

void DisplayPQueue(PtPQueue);

int main (void)
{
	PtPQueue pqueue; int status; char filename[21], car; int number;

	system ("clear");
	printf ("\nLer fila com prioridade do ficheiro - - Read priority queue from a text file\n");
	do
	{
  		printf ("Nome do ficheiro (filename) -> ");
		status = scanf ("%20[^\n]", filename);
		scanf ("%*[^\n]"); scanf ("%*c");
	} while (status == 0);

	if ((pqueue = PQueueCreateFile (filename)) == NULL)
	{
		printf ("O ficheiro %s nao existe (file %s does not exist)\n", filename, filename);
		exit (EXIT_FAILURE);
	}

	if (PQueueIsEmpty (pqueue)) printf ("\nfila com prioridade vazia! Empty priority queue!\n");

	DisplayPQueue(pqueue);

	printf ("\nRetirar elementos - Deleting elements\n");
	while (!PQueueIsEmpty (pqueue))
	{
		if (PQueueDeleteMax (pqueue, &number) == OK) 
			printf ("\nMaximo da fila com prioridade (maximum element of the priority queue) = %d\n", number);

		DisplayPQueue(pqueue);

		printf ("\nDeseja retirar mais algum elemento da fila com prioridade (Delete more elements) ? ");
		scanf ("%c", &car); scanf ("%*c");
		if (car != 's') break;
	}

	printf ("\nDestruir a fila com prioridade - Releasing the priority queue\n\n");
	PQueueDestroy (&pqueue);

	return 0;
}


void DisplayPQueue(PtPQueue pfp)
{
	unsigned int dim; int i, elemento;

	if (!PQueueIsEmpty (pfp))
	{
		PQueueSize (pfp, &dim);

		/* escrita dos elementos da fila com prioridade no monitor - printing the priority queue elements on the screen */
		printf ("\nConteudo da fila com prioridade - Priority Queue elements\n");
		for (i= 0; i < dim; i++)
		{
			PQueueElement (pfp, &elemento, i);
			printf ("%d\t", elemento);
		}

		printf ("\n");
	}
	else printf ("Fila com prioridade vazia - Priority Queue Empty\n");
}

