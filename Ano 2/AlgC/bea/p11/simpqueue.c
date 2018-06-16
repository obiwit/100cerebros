/*******************************************************************************

 Programa gráfico de simulação da funcionalidade do TDA FILA COM PRIORIDADE

 Priority Queue (Max Oriented) Simulation Program 


 Autor : António Manuel Adrego da Rocha    Data : Maio de 2017

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "pqueue.h" /* Ficheiro de interface do TDA */

#define MAX_PQUEUES 12
#define MAX_OPTIONS 9

void Menu (void);
void ReadOption (int *);
void ReadPQueueIndex (int *, char *);
int ActivePQueue (PtPQueue *, int);
int NotActivePQueue (PtPQueue *, int);
void ReadDimensionPQueue (unsigned int *);
void ReadFilename (char *);
void WriteErrorMessage (char *, int);
void ReadElement (int *);
void ReadNewElement (int *);
void DisplayPQueue (PtPQueue);

int main (void)
{
  PtPQueue PQueueArray[MAX_PQUEUES];
  int Option, l, PQueue, Element, NewValue, Error; unsigned int NElements, Dimension; 
  char NomeFicheiro[21];

  for (l = 0; l < MAX_PQUEUES; l++) PQueueArray[l] = NULL;
  
  do
  {

    /* limpar o ecran e apresentar menu */
    Menu ();

    /* apresentar as filas com prioridade activas */
    for (l = 0; l < MAX_PQUEUES; l++)
      if (PQueueArray[l] != NULL)
      {
        PQueueDimension (PQueueArray[l], &Dimension);
        PQueueSize (PQueueArray[l], &NElements);
        printf ("\e[1m\e[%d;45f (D = %4d / N = %3d)", 5+l, Dimension, NElements);
        printf ("\e[0m");
      }

    /* ler Option do utilizador */
    ReadOption (&Option);


    switch (Option)
    {
        case 1 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (ActivePQueue (PQueueArray, PQueue)) break;
                  ReadFilename (NomeFicheiro); 
                  if ((PQueueArray[PQueue] = PQueueCreateFile (NomeFicheiro)) == NULL)
                     WriteErrorMessage ("A leitura", NO_FILE);
                  break;

        case 2 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (ActivePQueue (PQueueArray, PQueue)) break;
                  ReadDimensionPQueue (&Dimension);
                  if ((PQueueArray[PQueue] = PQueueCreate (Dimension)) == NULL)
                     WriteErrorMessage ("A criacao", NO_MEM);
                  break;

        case 3 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  ReadElement (&Element);
                  Error = PQueueInsert (PQueueArray[PQueue], Element);
                  if (Error != OK) WriteErrorMessage ("A insercao", Error);
                  break;

        case 4 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  Error = PQueueDeleteMax (PQueueArray[PQueue], &Element);
                  if (Error != OK) WriteErrorMessage ("A remocao", Error);
                  else
                  {
                    printf("\e[24;1f| \e[1mO elemento maximo retirado da fila com prioridade -> %d", Element);
                    printf("\e[0m\e[25;1f| Prima uma tecla para continuar ");
                    scanf ("%*[^\n]"); scanf ("%*c");
                  }
                  break;

        case 5 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  ReadElement (&Element);
                  ReadNewElement (&NewValue);
                  Error = PQueueIncrease (PQueueArray[PQueue], Element, NewValue);
                  if (Error != OK) WriteErrorMessage ("A promocao", Error);
                  break;

        case 6 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  ReadElement (&Element);
                  ReadNewElement (&NewValue);
                  Error = PQueueDecrease (PQueueArray[PQueue], Element, NewValue);
                  if (Error != OK) WriteErrorMessage ("A despromocao", Error);
                  break;

        case 7 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  DisplayPQueue (PQueueArray[PQueue]);
                  break;

        case 8 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  ReadFilename (NomeFicheiro);
                  Error = PQueueStoreFile (PQueueArray[PQueue], NomeFicheiro);
                  if (Error != OK) WriteErrorMessage ("O armazenamento", Error);
                  break;

        case 9 :  ReadPQueueIndex (&PQueue, "fila com prioridade");
                  if (NotActivePQueue (PQueueArray, PQueue)) break;
                  PQueueDestroy (&PQueueArray[PQueue]);
                  break;
    }

  } while (Option != 0);

  for (l = 0; l < MAX_PQUEUES; l++) 
    if (PQueueArray[l] != NULL) PQueueDestroy (&PQueueArray[l]);

    printf ("\e[27;1f");

  return 0;
}

void Menu (void)
{
  system ("clear");

  printf("\e[2;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[3;1f|                          Programa Grafico Para Simular Operacoes Sobre Filas com Prioridade                         |\n");
  printf("\e[4;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[5;1f|  1 - Criar uma fila (ficheiro) | Fila  0 =                      |                                                   |\n");
  printf("\e[6;1f|  2 - Criar uma fila vazia      | Fila  1 =                      |                                                   |\n");
  printf("\e[7;1f|  3 - Inserir elemento          | Fila  2 =                      |                                                   |\n");
  printf("\e[8;1f|  4 - Retirar elemento maximo   | Fila  3 =                      |                                                   |\n");
  printf("\e[9;1f|  5 - Promover elemento         | Fila  4 =                      |                                                   |\n");
  printf("\e[10;1f|  6 - Despromover elemento      | Fila  5 =                      |                                                   |\n");
  printf("\e[11;1f|  7 - Mostrar uma fila          | Fila  6 =                      |                                                   |\n");
  printf("\e[12;1f|  8 - Armazenar uma fila        | Fila  7 =                      |                                                   |\n");
  printf("\e[13;1f|  9 - Apagar uma fila           | Fila  8 =                      |                                                   |\n");
  printf("\e[14;1f|  0 - Terminar o programa       | Fila  9 =                      |                                                   |\n");
  printf("\e[15;1f|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~| Fila 10 =                      |                                                   |\n");
  printf("\e[16;1f| Opcao ->                       | Fila 11 =                      |                                                   |\n");
  printf("\e[17;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[18;1f|                                             Janela de Aquisicao de Dados                                            |\n");
  printf("\e[19;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[20;1f|                                                                                                                     |\n");
  printf("\e[21;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[22;1f|                                    Janela de Mensagens de Error e de Resultados                                     |\n");
  printf("\e[23;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[24;1f|                                                                                                                     |\n");
  printf("\e[25;1f|                                                                                                                     |\n");
  printf("\e[26;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
}

void ReadPQueueIndex (int *pnfp, char *pmsg)
{
  int MsgLen = strlen (pmsg);

  do
  {
    *pnfp = -1;
    printf("\e[20;1f| Indice da %s ->                               ", pmsg);
    printf("\e[20;%df", 17+MsgLen); scanf ("%d", pnfp);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*pnfp < 0 || *pnfp >= MAX_PQUEUES);
}

int ActivePQueue (PtPQueue pgrupofp[], int pnfp)
{
  char car;

  if (pgrupofp[pnfp] != NULL)
  {
    do
    {
      printf("\e[1m\e[24;1f| A fila com prioridade %d ja existe!                     ", pnfp);
      printf("\e[0m\e[25;1f| Deseja apaga-la (s/n)? ");
      scanf ("%c", &car); car = tolower (car);
      scanf ("%*[^\n]"); scanf ("%*c");
    } while (car != 'n' && car != 's');

    if (car == 's') { PQueueDestroy (&pgrupofp[pnfp]); return 0; }
    else  return 1;
  }
  else return 0;
}

int NotActivePQueue (PtPQueue pgrupofp[], int pnfp)
{
  if (pgrupofp[pnfp] == NULL)
  {
    printf("\e[1m\e[24;1f| A fila com prioridade %d nao existe!                     ", pnfp);
    printf("\e[0m\e[25;1f| Prima uma tecla para continuar ");
    scanf ("%*[^\n]"); scanf ("%*c");
    return 1;
  }
  else return 0;
}

void ReadDimensionPQueue (unsigned int *pdim)
{
  do
  {
    *pdim = 0;
    printf("\e[20;1f| Dimensao da fila com prioridade ->                               ");
    printf("\e[20;38f"); scanf ("%d", pdim);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*pdim <= 0);
}


void ReadFilename (char *pnf)
{
  int Status;

  do
  {
    printf("\e[20;1f| Nome do ficheiro ->                               ");
    printf("\e[20;23f"); Status = scanf ("%20[^\n]", pnf);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Status == 0);
}

void ReadOption (int *popc)
{
  do
  {  
    *popc = 0;
    printf("\e[16;1f| Opcao ->                       |");
    printf("\e[16;12f"); scanf ("%d", popc);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*popc < 0 || *popc > MAX_OPTIONS);
}

void WriteErrorMessage (char *pmsg, int perro)
{
  printf("\e[24;1f| %s nao foi efectuada devido a -> \e[1m", pmsg);
  
  switch (perro)
  {
    case NO_PQUEUE    : printf ("fila com prioridade inexistente"); break ;
    case NO_MEM       : printf ("memoria esgotada"); break ;
    case NULL_PTR     : printf ("ponteiro nulo"); break ;
    case PQUEUE_EMPTY : printf ("fila com prioridade vazia"); break ;
    case PQUEUE_FULL  : printf ("fila com prioridade cheia"); break ;
    case NO_ELEM      : printf ("elemento inexistente na fila com prioridade"); break ;
    case WRONG_VALUE  : printf ("novo valor do elemento incorrecto"); break ;
    case NO_FILE      : printf ("ficheiro inexistente"); break ;
  }

  printf("\e[0m\e[25;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}


void ReadElement (int *pelem)
{
  int Status;

  do
  {
    printf("\e[20;1f| Elemento ->                                       ");
    printf("\e[20;15f"); Status = scanf ("%d", pelem);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Status == 0);
}

void ReadNewElement (int *pval)
{
  int Status;

  do
  {
    printf("\e[20;1f| Novo valor ->                                       ");
    printf("\e[20;17f"); Status = scanf ("%d", pval);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (Status == 0);
}

void DisplayPQueue (PtPQueue ppqueue)
{
	int l, c, t, valor, i = 0, inicial; unsigned nelem;

	if (PQueueSize (ppqueue, &nelem) == PQUEUE_EMPTY)
	{
		printf ("\e[1m\e[24;1f| A fila com prioridade esta vazia\n");
		printf ("\e[0m\e[25;1f| Prima uma tecla para continuar "); scanf ("%*[^\n]"); scanf ("%*c");
		return;
	}

	while (i < nelem)
	{
		inicial = i;
		printf ("\e[1m");
		for (l = 0; l < 12 && i < nelem; l++)
		{
			printf ("\e[%d;68f ", 5+l);
			for (c = 0; c < 5 && i < nelem; c++)
			{
				PQueueElement (ppqueue, &valor, i);  printf ("%9d ", valor); i++;
			}
			if (i == nelem) for (t = c; t < 5; t++) printf ("          ");
		}
		if (i == nelem)
			for (t = l; t < 12; t++)
			{
				printf ("\e[%d;68f ", 5+t);
				for (c = 0; c < 5; c++) printf ("          ");
			}
		printf ("\e[0m");
		printf ("\e[1m\e[24;1f| Elementos [%d-%d] da Fila com Prioridade\n", inicial, i-1);
		printf ("\e[0m\e[25;1f| Prima uma tecla para continuar "); scanf ("%*[^\n]"); scanf ("%*c");
	}
}

