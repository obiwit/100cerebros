/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto SEQ_LIST (seqlist.c).
 A estrutura de dados de suporte da sequência é uma estrutura, constituída pelos
 campos de tipo inteiro Size para indicar o número de elementos armazenados na
 sequência e os campos de tipo ponteiro para nós de lista biligada Head e Tail,
 para representar, respectivamente, a cabeça e a cauda da lista biligada onde
 são armazenados os números inteiros.

 Autor : Beatriz M Borges R                                   NMEC : 79857      
*******************************************************************************/

#include <stdio.h> 
#include <stdlib.h>

#include "seqlist.h"  /* Ficheiro de interface do TDA - ADT Interface file */

/************ Definição da Estrutura de Dados Interna da Sequência ************/

typedef struct binode *PtBiNode;
struct binode /* definição do nó da lista biligada */
{
	int Elem; /* o elemento da lista */
	PtBiNode PtPrev, PtNext; /* ponteiros para o nós anterior e seguinte */
};

struct seqlist
{
  int Size; /* número de elementos - sequence's size */
  PtBiNode Head; /* ponteiro para o início da lista (cabeça da lista) - list head */
  PtBiNode Tail; /* ponteiro para o fim da lista (cauda da lista) - list tail */
};

/*********************** Controlo Centralizado de Error ************************/

static unsigned int Error = OK;  /* inicialização do erro */

static char *ErrorMessages[] = {
                                 "sem erro - Without Error",
                                 "sequencia(s) inexistente(s) - Sequences do not exist",
                                 "memoria esgotada - Out of memory",
                                 "indice errado - Wrong index",
                                 "elemento inexistente - Element does not exist",
                                 "sequencia vazia - Empty sequence",
                                 "sequencia cheia - Full sequence",
                                 "dimensao da sequencia errada - Wrong size",
                                 "ficheiro inexistente - File does not exist",
                                 "ponteiro nulo - Null pointer"
                               };

static char *AbnormalErrorMessage = "erro desconhecido - Unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/******************** Protótipos dos Subprogramas Internos ********************/

/* Criei duas funções auxiliares, exists() e isValidSequence(), que validam um ponteiro para uma
 dada sequência, ou a própria sequência, respetivamente. São úteis para evitar repetição no
 código, uma vez que esta validação é feita em quase todas as funções. */
static int exists (PtSeqList);
static int isValidSequence (PtSeqList);

PtBiNode BiNodeCreate (int);
void BiNodeDestroy (PtBiNode *);
void DoubleListDestroy (PtBiNode *);

/*************************** Definição das Funções ****************************/

void SeqListClearError (void)
{ Error = OK; }

int SeqListError (void)
{ return Error; }

char *SeqListErrorMessage (void)
{
  if (Error < N) return ErrorMessages[Error];
  else return AbnormalErrorMessage;  /* sem mensagem de erro - no error message */
}

PtSeqList SeqListCreate ()
{
  // TODO
                                      
  // allocate memory
  PtSeqList SeqList; 
  SeqList = malloc(sizeof(struct seqlist));
  if (SeqList == NULL)
  { 
    Error = NO_MEM; 
    return NULL; 
  }
  
  // initialize seqlist
  SeqList->Size = 0; 
  SeqList->Head = NULL;
  SeqList->Tail = NULL;

  Error = OK;
  return SeqList;
}

void SeqListDestroy (PtSeqList *pseq)
{
  // TODO
  PtSeqList SeqList = *pseq;

  // check pointed-to list exists
  if (!exists(SeqList)) return; 

  // free every node
  DoubleListDestroy(&SeqList->Head);

  // free the list itself
  free(SeqList);

  Error = OK;
  *pseq = NULL;
}

PtSeqList SeqListCopy (PtSeqList pseq)
{
  PtSeqList Copy;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return NULL; }

  /* criação da sequência copia nulo - creating an empty sequence */
  if ((Copy = SeqListCreate ()) == NULL) return NULL;

  /* fazer a copia da sequência - copying the components */
  for (PtBiNode Node = pseq->Head; Node != NULL; Node = Node->PtNext)
  {
    SeqListInsert (Copy, Node->Elem);
    if (Error == NO_MEM) break;
  }
  
  if (Error == NO_MEM) { SeqListDestroy (&Copy); return NULL; }
  
  Copy->Size = pseq->Size;
  Error = OK;
  return Copy;  /* devolve a sequência copia - returning the new sequence */
}

PtSeqList SeqListFileCreate (char *pfname)
{
  PtSeqList Seq; FILE *PtF; unsigned int Size, I; int Elem;

  /* abertura com validacao do ficheiro para leitura - opening the text file for reading */
  if ( (PtF = fopen (pfname, "r")) == NULL) { Error = NO_FILE; return NULL; }

  /* leitura da dimensão da sequência e do número de elementos */
  /* reading the sequence's dimension and the number of elements */
  fscanf (PtF, "%u", &Size);
  if (Size < 1) { Error = BAD_SIZE; fclose (PtF); return NULL; }

  /* criação da sequência vazia - creating an empty sequence */
  if ((Seq = SeqListCreate ()) == NULL) { fclose (PtF); return NULL; }

  Error = OK;
  /* leitura da sequência do ficheiro - reading the sequence's components from the text file */
  for (I = 0; I < Size; I++)
  {
    fscanf (PtF, "%d", &Elem);
    SeqListInsert (Seq, Elem);
    if (Error == NO_MEM) break;
  }

  if (Error == NO_MEM) { SeqListDestroy (&Seq); return NULL; }

  fclose (PtF);  /* fecho do ficheiro - closing the text file */
  return Seq;  /* devolve a sequência criada - returning the new sequence */
}

void SeqListStoreFile (PtSeqList pseq, char *pfname)
{
  FILE *PtF;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return ; }

  /* verifica se a sequência tem elementos - verifies if sequence has elements */
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return ; }

  /* abertura com validacao do ficheiro para escrita - opening the text file for writing */
  if ((PtF = fopen (pfname, "w")) == NULL) { Error = NO_FILE; return ; }

  /* escrita do número de elementos armazenados na sequência */
  /* writing the number of elements */
  fprintf (PtF, "%u\n", pseq->Size);

  /* escrita da sequência - writing the sequence's components in the text file */
  for (PtBiNode Node = pseq->Head; Node != NULL; Node = Node->PtNext)
	fprintf (PtF, "%d\n", Node->Elem);

  Error = OK;
  fclose (PtF);  /* fecho do ficheiro - closing the text file */
}

int SeqListGetSize (PtSeqList pseq)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return 0; 

  Error = OK;
  return pseq->Size;
}

int SeqListGetElement (PtSeqList pseq, int pindex)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return 0; 

  // validate index
  if (pindex >= 0 && pindex < pseq->Size) 
  { 
    Error = OK;
    PtBiNode node = pseq->Head;

    // iterate through list, with extra sanity safeguard against
    // non-initialized pointers (node->PtNext != NULL)
    while(pindex > 0 && node->PtNext != NULL) {
      node = node->PtNext;
      pindex--;
    }
    
    return node->Elem;
  }
  else if (pindex <= -1 && pindex >= (-1)*pseq->Size) // handle negative index
  {
    Error = OK;
    PtBiNode node = pseq->Tail;

    // iterate through list, with extra sanity safeguard against
    // non-initialized pointers (node->PtPrev != NULL)
    while(pindex < -1 && node->PtPrev != NULL) {
      node = node->PtPrev;
      pindex++;
    }

    return node->Elem;
  }

  Error = BAD_INDEX;
  return 0; 
}

void SeqListSetElement (PtSeqList pseq, int pindex, int pvalue)
{
  // TODO

  // validate pointer
  if (!exists(pseq)) return; 

  // validate index and assign pvalue to pindex element
  if (pindex >= 0 && pindex < pseq->Size) 
  { 
    Error = OK;
    PtBiNode node = pseq->Head;

    // iterate through list, with extra sanity safeguard against
    // non-initialized pointers (node->PtNext != NULL)
    while(pindex > 0 && node->PtNext != NULL) 
    {
      node = node->PtNext;
      pindex--;
    }
    
    node->Elem = pvalue;
    return;
  }
  else if (pindex <= -1 && pindex >= (-1)*pseq->Size) // handle negative index
  {
    Error = OK;
    PtBiNode node = pseq->Tail;

    // iterate through list, with extra sanity safeguard against
    // non-initialized pointers (node->PtPrev != NULL)
    while(pindex < -1 && node->PtPrev != NULL) {
      node = node->PtPrev;
      pindex++;
    }

    node->Elem = pvalue;
    return;
  }

  Error = BAD_INDEX;
}

int SeqListEquals (PtSeqList pseq1, PtSeqList pseq2)
{
  // TODO
  // validate pointers
  if (exists(pseq1) && exists(pseq2))
  { 
    Error = OK; // no further errors can arise
    if (pseq1 == pseq2) return 1;
    
    // compare elements of each list
    if (pseq1->Size == pseq2->Size) 
    {
      int i;
      PtBiNode node1 = pseq1->Head;
      PtBiNode node2 = pseq2->Head;

      for(i = 0; i < pseq1->Size; i++) 
      {
        if (node1->Elem != node2->Elem) return 0;

        node1 = node1->PtNext;
        node2 = node2->PtNext;
      }
      return 1;
    }
  }
  
  return 0;
}

void SeqListInsert (PtSeqList pseq, int pvalue)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return; 

  // create new node
  PtBiNode node = BiNodeCreate(pvalue);
  if (node == NULL) {
    Error = SEQ_FULL;
    return;
  }

  // add pvalue's node to the sequence's end

  // handle insertion into empty list
  if (pseq->Head == NULL) 
  {
    pseq->Head = node;
    pseq->Tail = node;
  }
  else 
  {
    node->PtPrev = pseq->Tail;
    pseq->Tail->PtNext = node;
    pseq->Tail = node;
  }

  Error = OK;
  pseq->Size += 1;
}

void SeqListDelete (PtSeqList pseq, int pvalue)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return; 

  // search for element
  PtBiNode node = pseq->Head;
  int i;
  for(i = 0; i < pseq->Size; i++) 
  {
    if (node->Elem == pvalue) 
    {
      // found elem, delete node
      if (node->PtPrev != NULL) 
        node->PtPrev->PtNext = node->PtNext;
      else 
        pseq->Head = node->PtNext;

      if (node->PtNext != NULL)
        node->PtNext->PtPrev = node->PtPrev;
      else
        pseq->Tail = node->PtPrev;
      
      BiNodeDestroy(&node);

      pseq->Size -= 1;
      Error = OK; 
      return;
    }
    node = node->PtNext;
  }
  
  // number does not exist in sequence
  Error = NO_NUMBER;
}

int SeqListIsOrdered (PtSeqList pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if list is ordered
  PtBiNode node = pseq->Head;
  int prevValue = node->Elem;

  int i;
  for(i = 1; i < pseq->Size; i++)
  {
    node = node->PtNext;
    if (prevValue > node->Elem) return 0;
    prevValue = node->Elem;
  }

  return 1;
}

int SeqListIsEvenOdd (PtSeqList pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if list is even-odd or odd-even
  PtBiNode node = pseq->Head;
  int prevValue = node->Elem;

  int i;
  for(i = 1; i < pseq->Size; i++)
  {
    node = node->PtNext;
    if (prevValue%2 == node->Elem%2) return 0;
    prevValue = node->Elem;
  }
  
  return 1;
}

int SeqListNumberOfMultiples (PtSeqList pseq, int pvalue)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // get number of multiples
  int multiples = 0;

  int i;
  PtBiNode node = pseq->Head;
  for(i = 0; i < pseq->Size; i++)
  {
    // count multiples
    if (node->Elem%pvalue == 0) multiples++;

    node = node->PtNext;
  }

  return multiples;
}

void SeqListSmallerBigger (PtSeqList pseq, int * psmall, int * pbig)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return; 

  Error = OK; // no further errors can arise

  PtBiNode node = pseq->Head;
  int smaller = node->Elem, bigger = node->Elem;

  // find smaller and bigger lements in list
  int i;
  for(i = 1; i < pseq->Size; i++)
  {
    node = node->PtNext;
    if (node->Elem < smaller) smaller = node->Elem;
    else if (node->Elem > bigger) bigger = node->Elem;
  }
  
  *psmall = smaller;
  *pbig = bigger;
}

int SeqListIsPalindromic (PtSeqList pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if sequence is palindromic
  PtBiNode firstNode = pseq->Head; 
  PtBiNode lastNode = pseq->Tail;

  while(firstNode != lastNode && firstNode->PtPrev != lastNode)
  {
    if (firstNode->Elem != lastNode->Elem) return 0;
    firstNode = firstNode->PtNext;
    lastNode = lastNode->PtPrev;
  }
  
  return 1;
}

double SeqListAverage (PtSeqList pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0.0; 

  Error = OK; // no further errors can arise

  // get sum of all element in list
  double sum = 0;
  PtBiNode node = pseq->Head;

  int i;
  for(i = 0; i < pseq->Size; i++) {
    sum += node->Elem;
    node = node->PtNext;
  }
  
  // get average
  sum /= pseq->Size;
  return sum;
}


/*************** Implementação dos Subprogramas Internos ***************/

/*******************************************************************************
 Função auxiliar que verifica se uma sequência existe (através do ponteiro para a esta,
  PtSeqList). Se a sequência não existe, muda o valor de Error para NO_SEQ.
*******************************************************************************/
static int exists (PtSeqList pseq)
{
  if (pseq == NULL) 
  { 
    Error = NO_SEQ; 
    return 0; 
  }
  return 1;
}

/*******************************************************************************
 Função auxiliar que verifica se uma sequência é valida (através do ponteiro para a esta,
  PtSeqList). Se a sequência não existe, muda o valor de Error para NO_SEQ, e ou para 
  SEQ_EMPTY caso a sequência exista mas esteja vazia.
*******************************************************************************/
static int isValidSequence(PtSeqList pseq)
{
  if (!exists(pseq)) return 0; 

  // check if list is empty
  if (pseq->Head == NULL) {
    Error = SEQ_EMPTY;
    return 0;
  }

  return 1;
}

/*******************************************************************************
 Função auxiliar para criar um nó da lista biligada. Valores de erro: OK ou NO_MEM.
 
 Auxiliary function to create a binode. Error codes: OK or NO_MEM.
*******************************************************************************/

PtBiNode BiNodeCreate (int pelem)	/* alocação do nó */
{
	PtBiNode Node;

	if ((Node = (PtBiNode) malloc (sizeof (struct binode))) == NULL)
	{ Error = NO_MEM; return NULL; }

	Node->Elem = pelem;	/* copiar a informação */
	Node->PtPrev = NULL;	/* apontar para detrás para NULL */
	Node->PtNext = NULL;	/* apontar para a frente para NULL */

	Error = OK;
	return Node;
}

/*******************************************************************************
 Função auxiliar para libertar um nó da lista biligada. Valores de erro: OK ou NULL_PTR.
 
 Auxiliary function to free a binode. Error codes: OK or NULL_PTR.
*******************************************************************************/
void BiNodeDestroy (PtBiNode *pnode)	/* libertação do nó */
{
	if (*pnode == NULL) { Error = NULL_PTR; return; }
	free (*pnode);	/* libertação do nó */
	*pnode = NULL;	/* colocar o ponteiro a nulo */
	Error = OK;
}

/*******************************************************************************
 Função auxiliar para destruir uma lista biligada. Valores de erro: OK ou NULL_PTR.
 
 Auxiliary function to destroy a double link list. Error codes: OK or NULL_PTR.
*******************************************************************************/
void DoubleListDestroy (PtBiNode *phead)
{
	PtBiNode TmpHead = *phead; PtBiNode Node;

	if (TmpHead == NULL) { Error = NULL_PTR; return; }
	while (TmpHead != NULL)
	{
		Node = TmpHead; TmpHead = TmpHead->PtNext;
		BiNodeDestroy (&Node);
	}
	Error = OK; 
}
