/*******************************************************************************

 Programa gráfico de simulação da funcionalidade do TDA SEQARRAY

 Autor : António Manuel Adrego da Rocha    Data : Março de 2018

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "seqarray.h"  /* Ficheiro de interface do tipo de dados */

#define MAX_ARRAYS 19
#define MAX_OPTIONS 16

void Menu (void);
void ReadOption (int *);
unsigned int ReadSequenceIndex (char *);
int ActiveSequence (PtSeqArray *, int);
int NotActiveSequence (PtSeqArray *, int);
void ReadFilename (char *);
unsigned int ReadSequenceSize ();
void WriteErrorMessage (char *);
void WriteMessageResult (char *, double);
PtSeqArray ReadSequence (int, int);
void WriteSequence (PtSeqArray);
void ChangeSequence (PtSeqArray);
int ReadValue (void);
int ReadIndex (int);

int main (void)
{
  PtSeqArray SequenceArray[MAX_ARRAYS]; char FileName[21]; double Average;
  int Option, Equals, Dim, Size, Index, Value, Count, Smaller, Bigger, Order; unsigned int Sequence1, Sequence2;

  for (Index = 0; Index < MAX_ARRAYS; Index++) SequenceArray[Index] = NULL;
  
  do
  {
    Menu (); /* limpar o ecran e apresentar menu */
    SeqArrayClearError (); /* limpar o erro entretanto ocorrido */

    for (Index = 0; Index < MAX_ARRAYS; Index++) /* apresentar as sequencias activas */
      if (SequenceArray[Index] != NULL)
      {
        Dim = SeqArrayGetDimension (SequenceArray[Index]);
        Size = SeqArrayGetSize (SequenceArray[Index]);
        printf ("\e[1m\e[%d;44f Array (%d/%d)", 5+Index, Dim, Size);
        printf ("\e[0m");
      }

    ReadOption (&Option); /* ler opcao do utilizador */

    switch (Option)
    {
        case 1 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (ActiveSequence (SequenceArray, Sequence1)) break;
                  Dim = ReadSequenceSize ();
                  SequenceArray[Sequence1] = SeqArrayCreate (Dim);
                  if (SeqArrayError ()) WriteErrorMessage ("A criacao");
                  break;

        case 2 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (ActiveSequence (SequenceArray, Sequence1)) break;
                  ReadFilename (FileName);
                  SequenceArray[Sequence1] = SeqArrayFileCreate (FileName);
                  if (SeqArrayError ()) WriteErrorMessage ("A leitura");
                  break;

        case 3 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Value = ReadValue ();
                  SeqArrayInsert (SequenceArray[Sequence1], Value);
                  if (SeqArrayError ()) WriteErrorMessage ("A insercao");
                  break;

        case 4 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Value = ReadValue ();
                  SeqArrayDelete (SequenceArray[Sequence1], Value);
                  if (SeqArrayError ()) WriteErrorMessage ("A remocao");
                  break;

        case 5 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Index = ReadIndex ((int) SeqArrayGetSize(SequenceArray[Sequence1]));
                  Value = ReadValue ();
                  SeqArraySetElement (SequenceArray[Sequence1], Index, Value);
                  if (SeqArrayError ()) WriteErrorMessage ("A modificacao");
                  break;

        case 6 :  Sequence1 = ReadSequenceIndex ("sequencia origem");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  do
                  {
                      Sequence2 = ReadSequenceIndex ("sequencia destino");
                  } while (Sequence2 == Sequence1);
                  if (ActiveSequence (SequenceArray, Sequence2)) break;
                  SequenceArray[Sequence2] = SeqArrayCopy (SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("A copia");
                  break;

        case 7 :  Sequence1 = ReadSequenceIndex ("primeira sequencia");
                  Sequence2 = ReadSequenceIndex ("segunda sequencia");
                  Equals = SeqArrayEquals (SequenceArray[Sequence1], SequenceArray[Sequence2]);
                  if (SeqArrayError ()) WriteErrorMessage ("A comparacao");
                  else
                  {
                      if (Equals) printf("\e[31;1f| \e[1mAs sequencias %d e %d sao iguais", Sequence1, Sequence2);
                      else printf("\e[31;1f| \e[1mAs sequencias %d e %d nao sao iguais", Sequence1, Sequence2);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
                  }
                  break;

        case 8 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  ReadFilename (FileName);
                  SeqArrayStoreFile (SequenceArray[Sequence1], FileName);
                  if (SeqArrayError ()) WriteErrorMessage ("O armazenamento");
                  break;

        case 9 :  Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  SeqArrayDestroy (&SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("A eliminacao");
                  break;

        case 10 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  WriteSequence (SequenceArray[Sequence1]);
                  printf("\e[1m\e[31;1f| Sequencia %d                   ", Sequence1);
                  printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                  scanf ("%*[^\n]"); scanf ("%*c");
                  break;

        case 11 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Value = ReadValue ();
                  Count = SeqArrayNumberOfMultiples (SequenceArray[Sequence1], Value);
                  if (SeqArrayError ()) WriteErrorMessage ("O numero de multiplos");
                  else
                  {
                      printf("\e[31;1f| \e[1mNa sequencia %d existem %d numeros multiplos de %d", Sequence1, Count, Value);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
		  }
                  break;

        case 12 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  SeqArraySmallerBigger (SequenceArray[Sequence1], &Smaller, &Bigger);
                  if (SeqArrayError ()) WriteErrorMessage ("O menor e o maior");
                  else
                  {
                      printf("\e[31;1f| \e[1mNa sequencia %d o menor e %d e o maior e %d", Sequence1, Smaller, Bigger);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
		  }
                  break;

	case 13 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Average = SeqArrayAverage (SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("A media");
                  else
                  {
                      printf("\e[31;1f| \e[1mA media da sequencia %d e %f", Sequence1, Average);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
		  }
                  break;

        case 14 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Order = SeqArrayIsOrdered (SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("Determinar ordenada");
                  else
                  {
                      if (Order) printf("\e[31;1f| \e[1mA sequencia %d esta ordenada", Sequence1);
                      else printf("\e[31;1f| \e[1mA sequencia %d nao esta ordenada", Sequence1);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
                  }
                  break;

        case 15 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Order = SeqArrayIsEvenOdd (SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("Determinar alternada pares e impares");
                  else
                  {
                      if (Order) printf("\e[31;1f| \e[1mA sequencia %d e alternada de pares e impares", Sequence1);
                      else printf("\e[31;1f| \e[1mA sequencia %d nao e alternada de pares e impares", Sequence1);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
                  }
                  break;

        case 16 : Sequence1 = ReadSequenceIndex ("sequencia");
                  if (NotActiveSequence (SequenceArray, Sequence1)) break;
                  Order = SeqArrayIsPalindromic (SequenceArray[Sequence1]);
                  if (SeqArrayError ()) WriteErrorMessage ("Determinar palindroma");
                  else
                  {
                      if (Order) printf("\e[31;1f| \e[1mA sequencia %d e palindromica", Sequence1);
                      else printf("\e[31;1f| \e[1mA sequencia %d nao e palindromica", Sequence1);
                      printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
                      scanf ("%*[^\n]"); scanf ("%*c");
                  }
                  break;
    }

  } while (Option != 0);

  for (Index = 0; Index < MAX_ARRAYS; Index++)
    if (SequenceArray[Index] != NULL) SeqArrayDestroy (&SequenceArray[Index]);

  printf ("\e[34;1f");

  return 0;
}

void Menu (void)
{
  system ("clear");

  printf("\e[2;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[3;1f|                Programa Grafico Para Simular Operacoes Sobre Sequencias de Elementos - Versao para Array                 |\n");
  printf("\e[4;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[5;1f|  1 - Criar sequencia vazia     | Seq  0 =                |                                                               |\n");
  printf("\e[6;1f|  2 - Ler de um ficheiro        | Seq  1 =                |                                                               |\n");
  printf("\e[7;1f|  3 - Inserir elemento          | Seq  2 =                |                                                               |\n");
  printf("\e[8;1f|  4 - Retirar elemento          | Seq  3 =                |                                                               |\n");
  printf("\e[9;1f|  5 - Modificar elemento        | Seq  4 =                |                                                               |\n");
  printf("\e[10;1f|  6 - Copiar uma sequencia      | Seq  5 =                |                                                               |\n");
  printf("\e[11;1f|  7 - Comparar sequencias       | Seq  6 =                |                                                               |\n");
  printf("\e[12;1f|  8 - Armazenar uma sequencia   | Seq  7 =                |                                                               |\n");
  printf("\e[13;1f|  9 - Apagar uma sequencia      | Seq  8 =                |                                                               |\n");
  printf("\e[14;1f| 10 - Mostrar uma sequencia     | Seq  9 =                |                                                               |\n");
  printf("\e[15;1f| 11 - Numero de multiplos       | Seq 10 =                |                                                               |\n");
  printf("\e[16;1f| 12 - Menor e maior elementos   | Seq 11 =                |                                                               |\n");
  printf("\e[17;1f| 13 - Media dos elementos       | Seq 12 =                |                                                               |\n");
  printf("\e[18;1f| 14 - Sequencia ordenada        | Seq 13 =                |                                                               |\n");
  printf("\e[19;1f| 15 - sequencia alternada       | Seq 14 =                |                                                               |\n");
  printf("\e[20;1f| 16 - sequencia palindromica    | Seq 15 =                |                                                               |\n");
  printf("\e[21;1f|  0 - Terminar o programa       | Seq 16 =                |                                                               |\n");
  printf("\e[22;1f|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~| Seq 17 =                |                                                               |\n");
  printf("\e[23;1f| Opcao ->                       | Seq 18 =                |                                                               |\n");
  printf("\e[24;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[25;1f|                                               Janela de Aquisicao de Dados                                               |\n");
  printf("\e[26;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[27;1f|                                                                                                                          |\n");
  printf("\e[28;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[29;1f|                                        Janela de Mensagens de Erro e de Resultados                                       |\n");
  printf("\e[30;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[31;1f|                                                                                                                          |\n");
  printf("\e[32;1f|                                                                                                                          |\n");
  printf("\e[33;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
}

void ReadOption (int *poption)
{
  do
  {
    printf("\e[23;1f| Opcao ->                       |");
    printf("\e[23;12f"); scanf ("%d", poption);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*poption < 0 || *poption > MAX_OPTIONS);
}

unsigned int ReadSequenceIndex (char *pmsg)
{
  unsigned int MsgLen = strlen (pmsg), Index;

  do
  {
    printf("\e[27;1f| Numero da %s ->                               ", pmsg);
    printf("\e[27;%df", 17+MsgLen); scanf ("%d", &Index);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Index < 0 || Index >= MAX_ARRAYS);
  return Index;
}

int ActiveSequence (PtSeqArray pmatarray[], int pnmat)
{
  char Character;

  if (pmatarray[pnmat] != NULL)
  {
    do
    {
      printf("\e[1m\e[31;1f| A sequencia %d ja existe!                     ", pnmat);
      printf("\e[0m\e[32;1f| Deseja apaga-la (s/n)? ");
      scanf ("%c", &Character); Character = tolower (Character);
      scanf ("%*[^\n]"); scanf ("%*c");
    } while (Character != 'n' && Character != 's');

    if (Character == 's') { SeqArrayDestroy (&pmatarray[pnmat]); return 0; }
    else  return 1;
  }
  else return 0;
}

int NotActiveSequence (PtSeqArray pmatarray[], int pnmat)
{
  if (pmatarray[pnmat] == NULL)
  {
    printf("\e[1m\e[31;1f| A sequencia %d nao existe!                     ", pnmat);
    printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
    scanf ("%*[^\n]"); scanf ("%*c");
    return 1;
  }
  else return 0;
}

unsigned int ReadSequenceSize ()
{
  unsigned int Size;
  do
  {
    Size = 0;
    printf("\e[27;1f| Numero de elementos da sequencia ->              ");
    printf("\e[27;39f"); scanf ("%d", &Size);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Size < 1 || Size > 100);

  return Size;
}

void ReadFilename (char *pfname)
{
  int Status;

  do
  {
    printf("\e[27;1f| Nome do ficheiro ->                               ");
    printf("\e[27;23f"); Status = scanf ("%20[^\n]", pfname);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Status == 0);
}

void WriteErrorMessage (char *pmsg)
{
  printf("\e[31;1f| %s de sequencias nao foi efectuada devido a -> \e[1m%s", pmsg, SeqArrayErrorMessage ());
  printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}

void WriteMessageResult (char *pmsg, double pval)
{
  printf("\e[1m\e[31;1f| %s \e[1m%f", pmsg, pval);
  printf("\e[0m\e[32;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}

void WriteSequence (PtSeqArray pseq)
{
  int Size, Index = 0, Line, Col, LMax;

  Size = SeqArrayGetSize (pseq);

  printf("\e[1m");
  LMax = Size / 5 + 1;
  for (Line = 0; Line < LMax; Line++)
  {
    printf("\e[%d;65f ", 5+Line);
    for (Col = 0; Col < 5 && Index < Size; Col++, Index++)
      printf ("%d\t", SeqArrayGetElement (pseq, Index));
  }
  printf("\e[0m");
}

int ReadValue (void)
{
  int Status; int Value;
  
  do
  {
    printf("\e[27;1f| Valor ->                                        ");
    printf("\e[27;12f"); Status = scanf ("%d", &Value);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Status == 0);

  return Value;
}

int ReadIndex (int psize)
{
  int Index = 0;

  do
  {
    printf("\e[27;1f| Indice da sequencia ->                             ");
    printf("\e[27;26f"); scanf ("%d", &Index);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Index < -psize || Index > psize-1);

  return Index;
}

