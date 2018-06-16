/****** *Implementação da Fila com Prioridade com um Amontoado Binário *******/
/***** Fila com Prioridade orientada máximos Nome: pqueue.c *****/

#include <stdio.h>
#include <stdlib.h>
#include "pqueue.h"  /* Interface */

/******* Definição do Estrutura de Dados da Fila com Prioridade ********/

struct pqueue  /* definição da Fila com Prioridade */
{
  unsigned int HeapSize;  /* capacidade de armazenamento da Fila - capacity of the priority queue */
  unsigned int NumElem;  /* número de elementos armazenados na Fila - number of elements stored in the priority queue */
  int *Heap;  /* ponteiro para o monte a alocar dinamicamente - pointer to the priority queue array */
};

/********************** Definição dos Subprogramas *********************/

PtPQueue PQueueCreate (unsigned int pdim)
{
  PtPQueue PQueue;

  if (pdim == 0) return NULL;

  /* alocar memória para a Fila com Prioridade - - memory alocation for the priority queue */
  if ((PQueue = (PtPQueue) malloc (sizeof (struct pqueue))) == NULL) return NULL;

  /* alocar memória para o array the armazenamento dos elementos - memory alocation for the element's array */
  if ((PQueue->Heap = (int *) calloc (pdim, sizeof (int))) == NULL)
  { free (PQueue); return NULL; }

  PQueue->HeapSize = pdim;  /* armazenar a dimensão da Fila - store the priority queue dimension */
  PQueue->NumElem = 0;  /* inicializar o número de elementos da Fila - initialize the number of elements */

  return PQueue;  /* devolver a referência da Fila acabada de criar - returning the new priority queue */
}

int PQueueDestroy (PtPQueue *ppqueue)
{
  PtPQueue TmpPQueue = *ppqueue;

  if (TmpPQueue == NULL) return NO_PQUEUE;

  free (TmpPQueue->Heap);  /* libertar a memória ocupada pelo monte - free the element's array */
  free (TmpPQueue);  /* libertar a memória ocupada pela Fila - free the priority queue */

  *ppqueue = NULL;  /* colocar a referência da Fila a NULL - priority queue pointing to null */

  return OK;
}

int PQueueInsert (PtPQueue ppqueue, int pelem)
{
  unsigned int i;

  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == ppqueue->HeapSize) return PQUEUE_FULL;

  /* ajustar o monte, descendo os pais menores do que o elemento */
  /* adjusting the heap, descending the fathers smaller than the element */
  for (i = ppqueue->NumElem; i > 0 && ppqueue->Heap[(i-1)/2] < pelem; i = (i-1)/2)
    ppqueue->Heap[i] = ppqueue->Heap[(i-1)/2];
		
  ppqueue->Heap[i] = pelem;  /* colocar o novo elemento no monte - storing the new element in the heap */
  ppqueue->NumElem++;  /* incrementar o número de elementos do monte - increasing the number of elements of the heap */

  return OK;
}

int PQueueDeleteMax (PtPQueue ppqueue, int *pelem)
{
  unsigned int i, Son;  /* posição do pai e do filho - position of the father and the son */

  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == 0) return PQUEUE_EMPTY;
  if (pelem == NULL) return NULL_PTR;

  *pelem = ppqueue->Heap[0];  /* retirar a raiz do monte - copies the maximum element from the heap */
  ppqueue->NumElem--;  /* decrementar o número de elementos do monte - decreasing the number of elements of the heap */

  /* ajustar o monte, subindo os filhos maiores do que o elemento */
  /* adjusting the heap, ascending the sons bigger than the element */
  for (i = 0; i*2+1 <= ppqueue->NumElem; i = Son)
  {
    Son = 2*i+1;  /* primeiro filho - position of the first son */

    /* determinar o maior dos filhos - evaluating the bigger son */
    if (Son < ppqueue->NumElem && ppqueue->Heap[Son] < ppqueue->Heap[Son+1])
      Son++;

    /* subir o maior filho do que o último elemento - ascending the bigger son if bigger than the last element */
    if (ppqueue->Heap[Son] > ppqueue->Heap[ppqueue->NumElem])
      ppqueue->Heap[i] = ppqueue->Heap[Son];
    else break;
  }

  /* recolocar o último elemento no monte - storing the last element in the empty position */
  ppqueue->Heap[i] = ppqueue->Heap[ppqueue->NumElem];

  return OK;
}

int PQueueIncrease (PtPQueue ppqueue, int pelem, int pvalue)
{
  unsigned int i;

  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == 0) return PQUEUE_EMPTY;
  if (pvalue <= pelem) return WRONG_VALUE;

  /* procurar o elemento na fila com prioridade - look for the element */  
  for (i = 0; i < ppqueue->NumElem; i++)
	if (ppqueue->Heap[i] == pelem) break;

  if (i == ppqueue->NumElem) return NO_ELEM;

   /* descer os pais menores do que o novo valor do elemento */
  /* adjusting the heap, descending the fathers bigger than the new value of the element */
  for ( ; i > 0 && ppqueue->Heap[(i-1)/2] < pvalue; i = (i-1)/2)
	ppqueue->Heap[i] = ppqueue->Heap[(i-1)/2];

  ppqueue->Heap[i] = pvalue;	/* colocar o novo valor do elemento - storing the new value */

  return OK;
}

int PQueueDecrease (PtPQueue ppqueue, int pelem, int pvalue)
{
  unsigned int i, Son;  /* posição do pai e do filho - position of the father and the son */

  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == 0) return PQUEUE_EMPTY;
  if (pvalue >= pelem) return WRONG_VALUE;

  /* procurar o elemento na fila com prioridade - look for the element */  
  for (i = 0; i < ppqueue->NumElem; i++)
	  if (ppqueue->Heap[i] == pelem) break;

  if (i == ppqueue->NumElem) return NO_ELEM;
    
  for ( ; i*2+1 < ppqueue->NumElem; i = Son)
  {		/* subir os filhos maiores do que o novo valor do elemento adjusting the heap, ascending the sons bigger than the new value of the element */
    Son = 2*i+1;	/* determinar o maior dos filhos - evaluating the bigger son */
	if (Son < ppqueue->NumElem && ppqueue->Heap[Son] < ppqueue->Heap[Son+1]) Son++;
			/* trocar o maior dos filhos com o pai - changing the bigger son with the father */
		if (ppqueue->Heap[Son] > pvalue) ppqueue->Heap[i] = ppqueue->Heap[Son];
		else break;
	}

	ppqueue->Heap[i] = pvalue;	/* colocar o novo valor do elemento - storing the new value */

  return OK;
}

int PQueueDimension (PtPQueue ppqueue, unsigned int *pdim)
{
  if (ppqueue == NULL) return NO_PQUEUE;

  *pdim = ppqueue->HeapSize;

  return OK;
}

int PQueueSize (PtPQueue ppqueue, unsigned int *pnelem)
{
  if (ppqueue == NULL) return NO_PQUEUE;

  *pnelem = ppqueue->NumElem;

  if (*pnelem == 0) return PQUEUE_EMPTY;
  else return OK;
}

int PQueueElement (PtPQueue ppqueue, int *pelem, int ppos)
{
  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == 0) return PQUEUE_EMPTY;
  if ((ppos < 0) || (ppos >= ppqueue->NumElem)) return NO_ELEM;
  
  *pelem = ppqueue->Heap[ppos];

  return OK;
}

int PQueueIsEmpty (PtPQueue ppqueue)
{
  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem == 0) return PQUEUE_EMPTY;
  return OK;
}

int PQueueStoreFile (PtPQueue ppqueue, char *pnomef)
{
  FILE *PtF; int I;

  if (ppqueue == NULL) return NO_PQUEUE;
  if (ppqueue->NumElem  == 0) return PQUEUE_EMPTY;

  /* abertura com validação do ficheiro - opening the text file for writing */
  if ((PtF = fopen (pnomef, "w")) == NULL) return NO_FILE;

  /* escrita da dimensão da fila com prioridade no ficheiro - writing the priority queue capacity */
  fprintf (PtF, "%d\n", ppqueue->HeapSize);

  /* escrita do número de elementos da fila com prioridade - writing the priority queue number of elements */
  fprintf (PtF, "%d\n", ppqueue->NumElem);

  /* escrita dos valores da PQueue no ficheiro - writing the priority queue's elements*/
  for (I = 0; I < ppqueue->NumElem; I++)
    fprintf (PtF, "%d\n", ppqueue->Heap[I]);

  fclose (PtF);	/* fecho do ficheiro - closing the text file */

  return OK;
}

PtPQueue PQueueCreateFile (char *pnomef)
{
  FILE *PtF; int Dim, NElem, I, Val; PtPQueue PQueue;

  /* abertura com validação do ficheiro - opening the text file for reading */
  if ((PtF = fopen (pnomef, "r")) == NULL) return NULL;

  /* leitura da dimensão da fila com prioridade - reading the capacity from the text file */
  fscanf (PtF, "%d", &Dim);	

  /* criação da fila com prioridade - creting the empty priotity queue */
  if ((PQueue = PQueueCreate (Dim)) == NULL)
  {
    fclose (PtF); return NULL;
  }

  /* leitura do número de elementos da fila com prioridade - reading the number of elements from the text file */
  fscanf (PtF, "%d", &NElem);

  /* leitura dos valores do ficheiro e carregamento da fila com prioridade */
  /* reading the elements from the text file and inserting them on the PQueue */
  for (I = 0; I < NElem; I++)
  {
    fscanf (PtF, "%d", &Val);
    if (PQueueInsert (PQueue, Val) == PQUEUE_FULL)
    {
      PQueueDestroy (&PQueue); fclose (PtF); return NULL;
    }
  }

  fclose (PtF);	/* fecho do ficheiro - closing the text file */

  return PQueue;
}

