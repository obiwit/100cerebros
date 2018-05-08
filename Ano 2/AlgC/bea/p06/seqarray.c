/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto SEQ_ARRAY (seqarray.c).
 A estrutura de dados de suporte da sequência é um registo, constituída pelos
 campos de tipo inteiro Dim para indicar a capacidade de armazenamento da 
 sequência e Size para indicar o número de elementos efectivamente armazenados na
 sequência e o campo de tipo ponteiro Seq, para representar a sequência (array) 
 atribuída dinamicamente onde são armazenados os números inteiros.

 Autor : Beatriz M Borges R                                   NMEC : 79857          
*******************************************************************************/

#include <stdio.h> 
#include <stdlib.h>

#include "seqarray.h"  /* Ficheiro de interface do TDA - ADT Interface file */

/************ Definição da Estrutura de Dados Interna da Sequência ************/

struct seqarray
{
  unsigned int Dim; /* capacidade de armazenamento - array's size */
  int Size; /* número de elementos - sequence's size */
  int *Seq; /* ponteiro para armazenar a sequência - array to store the numbers */
};

/*********************** Controlo Centralizado de Error ************************/

static unsigned int Error = OK;  /* inicialização do erro */

static char *ErrorMessages[] = {
                                 "sem erro - Without Error",
                                 "sequencia(s) inexistente(s) - Sequence(s) do not exist",
                                 "memoria esgotada - Out of memory",
                                 "indice errado - Wrong index",
                                 "elemento inexistente - Element does not exist",
                                 "sequencia vazia - Empty sequence",
                                 "sequencia cheia - Full sequence",
                                 "dimensao da sequencia errada - Wrong size",
                                 "ficheiro inexistente - File does not exist"
                               };

static char *AbnormalErrorMessage = "erro desconhecido - Unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/***************** Protótipos dos Subprogramas Internos ****************/

/* Criei duas funções auxiliares, exists() e isValidSequence(), que validam um ponteiro para uma
 dada sequência, ou a própria sequência, respetivamente. São úteis para evitar repetição no
 código, uma vez que esta validação é feita em quase todas as funções. */
static int exists (PtSeqArray);
static int isValidSequence (PtSeqArray);

/*************************** Definição das Funções ****************************/

void SeqArrayClearError (void)
{ Error = OK; }

int SeqArrayError (void)
{ return Error; }

char *SeqArrayErrorMessage (void)
{
  if (Error < N) return ErrorMessages[Error];
  else return AbnormalErrorMessage;  /* sem mensagem de erro - no error message */
}

PtSeqArray SeqArrayCreate (unsigned int pdim)
{
  // TODO

  // validate
  if (pdim < 1) {
    Error = BAD_SIZE; 
    return NULL; 
  }
                                      
  // allocate memory
  PtSeqArray SeqArray; 
  SeqArray = malloc(sizeof(struct seqarray));
  if (SeqArray == NULL)
  { 
    Error = NO_MEM; 
    return NULL; 
  }
  
  // initialize seqarray
  SeqArray->Dim = pdim; 
  SeqArray->Size = 0; 
  SeqArray->Seq = malloc(sizeof(int) * pdim);
  if (SeqArray->Seq == NULL) 
  {
    free(SeqArray);
    Error = NO_MEM; 
    return NULL; 
  }

  Error = OK;
  return SeqArray;
}

void SeqArrayDestroy (PtSeqArray *pseq)
{
  // TODO
  PtSeqArray SeqArray = *pseq;

  // free memory if pointed-to sequence exists
  if (!exists(SeqArray)) return; 

  free (SeqArray);

  Error = OK;
  *pseq = NULL;
}

PtSeqArray SeqArrayCopy (PtSeqArray pseq)
{
  PtSeqArray Copy; int I;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return NULL; }

  /* criação da sequência copia vazia - creating an empty sequence */
  if ((Copy = SeqArrayCreate (pseq->Dim)) == NULL) return NULL;

  /* fazer a copia dos elementos da sequência - copying the components */
  for (I = 0; I < pseq->Size; I++) Copy->Seq[I] = pseq->Seq[I];
  Copy->Size = pseq->Size;

  return Copy;  /* devolve a sequência copia - returning the new sequence */
}

PtSeqArray SeqArrayFileCreate (char *pfname)
{
  PtSeqArray Seq; FILE *PtF; unsigned int Dim, Size, I;

  /* abertura com validacao do ficheiro para leitura - opening the text file for reading */
  if ( (PtF = fopen (pfname, "r")) == NULL) { Error = NO_FILE; return NULL; }

  /* leitura da dimensão da sequência e do número de elementos armazenados */
  /* reading the sequence's dimension and the number of elements */
  fscanf (PtF, "%u %u", &Dim, &Size);
  if (Dim < 1) { Error = BAD_SIZE; fclose (PtF); return NULL; }

  /* criação da sequência com a dimensão pretendida - creating the sequence */
  if ((Seq = SeqArrayCreate (Dim)) == NULL) { fclose (PtF); return NULL; }

  /* leitura da sequência do ficheiro - reading the sequence's components from the text file */
  for (I = 0; I < Size; I++) fscanf (PtF, "%d", Seq->Seq+I);
  Seq->Size = Size;

  fclose (PtF);  /* fecho do ficheiro - closing the text file */
  Error = OK;
  return Seq;  /* devolve a sequência criada - returning the new sequence */
}

void SeqArrayStoreFile (PtSeqArray pseq, char *pfname)
{
  FILE *PtF; unsigned int I;

  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return ; }

  /* verifica se a sequência tem elementos - verifies if sequence has elements */
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return ; }

  /* abertura com validacao do ficheiro para escrita - opening the text file for writing */
  if ((PtF = fopen (pfname, "w")) == NULL) { Error = NO_FILE; return ; }

  /* escrita da dimensão da sequência e do número de elementos armazenados na sequência */
  /* writing the sequence's dimension and the number of elements */
  fprintf (PtF, "%u %u\n", pseq->Dim, pseq->Size);

  /* escrita da sequência - writing the sequence's components in the text file */
  for (I = 0; I < pseq->Size; I++) fprintf (PtF, "%d\n", pseq->Seq[I]);

  Error = OK;
  fclose (PtF);  /* fecho do ficheiro - closing the text file */
}

int  SeqArrayGetDimension (PtSeqArray pseq)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return 0; 

  Error = OK;
  return pseq->Dim;
}

int SeqArrayGetSize (PtSeqArray pseq)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) 
  { 
    return 0; 
  }
  Error = OK;
  return pseq->Size;
}

int SeqArrayGetElement (PtSeqArray pseq, int pindex)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return 0; 

  // validate index
  if (pindex >= 0 && pindex < pseq->Size) 
  { 
    Error = OK;
    return pseq->Seq[pindex];
  }
  else if (pindex <= -1 && pindex >= (-1)*pseq->Size) // handle negative index
  {
    Error = OK;
    return pseq->Seq[pseq->Size+pindex];
  }

  Error = BAD_INDEX;
  return 0; 
}

void SeqArraySetElement (PtSeqArray pseq, int pindex, int pvalue)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return; 

  // validate index and assign pvalue to pindex element
  if (pindex >= 0 && pindex < pseq->Size) 
  { 
    Error = OK;
    pseq->Seq[pindex] = pvalue;
    return;
  }
  else if (pindex <= -1 && pindex >= (-1)*pseq->Size) // handle negative index
  {
    Error = OK;
    pseq->Seq[pseq->Size+pindex] = pvalue;
    return;
  }

  Error = BAD_INDEX;
}

int SeqArrayEquals (PtSeqArray pseq1, PtSeqArray pseq2)
{
  // TODO
  // validate pointers
  if (exists(pseq1) && exists(pseq2))
  { 
    Error = OK; // no further errors can arise
    if (pseq1 == pseq2) return 1;
    
    // compare elements of each array
    if (pseq1->Size == pseq2->Size) 
    {
      int i;
      for(i = 0; i < pseq1->Size; i++)
        if (pseq1->Seq[i] != pseq2->Seq[i]) return 0;
      return 1;
    }
  }
  
  return 0;
}

void SeqArrayInsert (PtSeqArray pseq, int pvalue)
{
  // TODO
  // validate pointer
  if (!exists(pseq)) return; 

  // check if array is full
  if (pseq->Dim == pseq->Size) {
    Error = SEQ_FULL;
    return;
  }

  // assign pvalue to the sequence's end
  Error = OK;
  pseq->Seq[pseq->Size++] = pvalue;

}

void SeqArrayDelete (PtSeqArray pseq, int pvalue)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return; 

  // search for element
  int pindex = -1;
  int i;
  for(i = 0; ((pindex == -1) && (i < pseq->Size)); i++)
    if (pseq->Seq[i] == pvalue) pindex = i;
  
  // check number exists
  if (pindex == -1) {
    Error = NO_NUMBER;
    return;
  }

  // delete numer from sequence
  for(; i < pseq->Size; i++) // i = pindex+1
    pseq->Seq[i-1] = pseq->Seq[i];

  pseq->Size -= 1;
  Error = OK;
}

void SeqArrayDuplicate (PtSeqArray pseq)
{
  int *newSeq;
  /* verifica se a sequência existe - verifies if sequence exists */
  if (pseq == NULL) { Error = NO_SEQ; return; }
  
  /* verifica se a sequência não está vazia - verifies if sequence is not empty */  
  if (pseq->Size == 0) { Error = SEQ_EMPTY; return; }
 
  if ((newSeq = calloc (2*pseq->Size, sizeof (int))) == NULL)
  { Error = NO_MEM; return; }
  
  pseq->Dim = 2*pseq->Size;  /* armazenamento da nova dimensão - storing the new dimension */

  /* copiar os elementos - copying the elements */
  for (int I = 0; I < pseq->Size; I++) newSeq[I] = pseq->Seq[I];
  /* guardar o novo array e libertar o antigo - storing the new arry and freeing the old */
  int * Tmp = pseq->Seq; pseq->Seq = newSeq; free (Tmp);
  
  Error = OK;
}

int SeqArrayIsOrdered (PtSeqArray pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if array is ordered
  int i;
  for(i = 0; i < (pseq->Size - 1); i++)
    if (pseq->Seq[i] > pseq->Seq[i+1]) return 0;

  return 1;
}

int SeqArrayIsEvenOdd (PtSeqArray pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if array is even-odd or odd-even
  int i;
  for(i = 0; i < (pseq->Size - 1); i++)
    if (pseq->Seq[i]%2 == pseq->Seq[i+1]%2) return 0;
  
  return 1;
}

int SeqArrayNumberOfMultiples (PtSeqArray pseq, int pvalue)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check number of multiples
  int multiples = 0;

  int i;
  for(i = 0; i < pseq->Size; i++)
    if (pseq->Seq[i]%pvalue == 0) multiples++;

  return multiples;
}

void SeqArraySmallerBigger (PtSeqArray pseq, int * psmall, int * pbig)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return; 

  Error = OK; // no further errors can arise

  int smaller = pseq->Seq[0], bigger = pseq->Seq[0];

  // find smaller and bigger lements in array
  int i;
  for(i = 1; i < pseq->Size; i++)
  {
    if (pseq->Seq[i] < smaller) smaller = pseq->Seq[i];
    else if (pseq->Seq[i] > bigger) bigger = pseq->Seq[i];
  }
  
  *psmall = smaller;
  *pbig = bigger;
}

int SeqArrayIsPalindromic (PtSeqArray pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0; 

  Error = OK; // no further errors can arise

  // check if sequence is palindromic
  int firstElemIndex = 0; 
  int lastElemIndex = pseq->Size - 1;

  for(; firstElemIndex < lastElemIndex ; firstElemIndex++, lastElemIndex--)
    if (pseq->Seq[firstElemIndex] != pseq->Seq[lastElemIndex]) return 0;
  
  return 1;
}

double SeqArrayAverage (PtSeqArray pseq)
{
  // TODO
  // validate sequence
  if (!isValidSequence(pseq)) return 0.0; 

  Error = OK; // no further errors can arise

  // get sum of all element in array
  double sum = 0;

  int i;
  for(i = 0; i < pseq->Size; i++)
    sum += pseq->Seq[i];
  
  // get average
  sum /= pseq->Size;
  return sum;
}


/*************** Implementação dos Subprogramas Internos ***************/

/*******************************************************************************
 Função auxiliar que verifica se uma sequência existe (através do ponteiro para a esta,
  PtSeqArray). Se a sequência não existe, muda o valor de Error para NO_SEQ.
*******************************************************************************/
static int exists (PtSeqArray pseq)
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
  PtSeqArray). Se a sequência não existe, muda o valor de Error para NO_SEQ, e ou para 
  SEQ_EMPTY caso a sequência exista mas esteja vazia.
*******************************************************************************/
static int isValidSequence(PtSeqArray pseq)
{
  if (!exists(pseq)) return 0; 

  // check if array is empty
  if (pseq->Dim == 0) {
    Error = SEQ_EMPTY;
    return 0;
  }

  return 1;
}