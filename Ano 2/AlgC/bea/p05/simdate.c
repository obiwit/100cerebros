/*******************************************************************************

 Programa gráfico de simulação da funcionalidade do TDA Date


 Autor : António Manuel Adrego da Rocha    Data : Fevereiro de 2018

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "date.h"  /* Ficheiro de interface do tipo de dados */

#define MAX_DATES 10
#define MAX_OPTIONS 7

void Menu (void);
void ReadOption (int *);
void ReadDateIndex (int *, char *);
int ActiveDate (PtDate *, int);
int NotActiveDate (PtDate *, int);
void WriteErrorMessage (char *);
void ReadDate (PtDate *);
void ReadDateUniv (PtDate *);
void WriteDate (PtDate);
void WriteResult (int);

int main (void)
{
  PtDate DateArray[MAX_DATES];
  int Option, Status, Index, Date1, Date2, Comp; char * DateStr;

  for (Index = 0; Index < MAX_DATES; Index++) DateArray[Index] = NULL;
	  
  do
  {
    /* limpar o ecran e apresentar menu */
    Menu ();

    /* inicializar o erro */
    DateClearError ();

    /* apresentar as datas activas */
    for (Index = 0; Index < MAX_DATES; Index++)
      if (DateArray[Index] != NULL)
      {
        DateStr = DateToString (DateArray[Index]);
        if (DateStr)
        {
          printf ("\e[1m\e[%d;43f%s", 5+Index, DateStr);
          printf ("\e[0m");
		  free (DateStr);
        }
      }

    /* ler opcao do utilizador */
    ReadOption (&Option);

    switch (Option)
    {
        case 1 :  ReadDateIndex (&Date1, "data");
                  if (ActiveDate (DateArray, Date1)) break; 
                  do
                  {
                  	printf("\e[0m\e[23;1f| Formato [1] \"yyyy-mm-dd\" [2] dia mes ano -> ");
                  	Status = scanf ("%d", &Option);
					scanf ("%*[^\n]"); scanf ("%*c");
				  } while (!Status || Option < 1 || Option > 2);
                  if (Option == 1) ReadDateUniv (&DateArray[Date1]);
                  else ReadDate (&DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A criacao");
                  break;

        case 2 :  ReadDateIndex (&Date1, "data origem");
                  if (NotActiveDate (DateArray, Date1)) break;
                  do
                  {
                    ReadDateIndex (&Date2, "data destino");
                  } while (Date2 == Date1);
                  if (ActiveDate (DateArray, Date2)) break;
                  DateArray[Date2] = DateCopy (DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A copia");
                  break;
        
        case 3 :  ReadDateIndex (&Date1, "primeira data");
                  if (NotActiveDate (DateArray, Date1)) break;
                  do
                  {
                    ReadDateIndex (&Date2, "segunda data");
                  } while (Date2 == Date1);
                  if (NotActiveDate (DateArray, Date2)) break;
                  Comp = DateCompareTo (DateArray[Date1], DateArray[Date2]);
                  if (DateError ()) WriteErrorMessage ("A comparacao");
                  else WriteResult (Comp);
                  break;

        case 4 :  ReadDateIndex (&Date1, "data");
                  if (NotActiveDate (DateArray, Date1)) break;
                  DateStr = DateToFullString (DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A data por extenso");
                  else 
                  {
                       printf("\e[22;1f| %s \e[1m", DateStr);
                       printf("\e[0m\e[23;1f| Prima uma tecla para continuar ");
                       scanf ("%*[^\n]"); scanf ("%*c");  
                  }
                  break;

        case 5 :  ReadDateIndex (&Date1, "data origem");
                  if (NotActiveDate (DateArray, Date1)) break;
                  do
                  {
                    ReadDateIndex (&Date2, "data destino");
                  } while (Date2 == Date1);
                  if (ActiveDate (DateArray, Date2)) break;
                  DateArray[Date2] = DateTomorrow (DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A data seguinte");
                  break;
        
        case 6 :  ReadDateIndex (&Date1, "data origem");
                  if (NotActiveDate (DateArray, Date1)) break;
                  do
                  {
                    ReadDateIndex (&Date2, "data destino");
                  } while (Date2 == Date1);
                  if (ActiveDate (DateArray, Date2)) break;
                  DateArray[Date2] = DateYesterday (DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A data anterior");
                  break;
        
        case 7 :  ReadDateIndex (&Date1, "data");
                  if (NotActiveDate (DateArray, Date1)) break;
                  DateDestroy (&DateArray[Date1]);
                  if (DateError ()) WriteErrorMessage ("A eliminacao");
                  break;
    }
  } while (Option != 0);

  for (Index = 0; Index < MAX_DATES; Index++) 
    if (DateArray[Index] != NULL) DateDestroy (&DateArray[Index]);

  printf ("\e[25;1f");

  return EXIT_SUCCESS;
}

void Menu (void)
{
  system ("clear");

  printf("\e[2;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[3;1f|        Programa Grafico Para Simular Operacoes Sobre Datas        |\n");
  printf("\e[4;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[5;1f| 1 - Criar uma data           | Data 0 =                           |\n");
  printf("\e[6;1f| 2 - Copiar uma data          | Data 1 =                           |\n");
  printf("\e[7;1f| 3 - Comparar datas           | Data 2 =                           |\n");
  printf("\e[8;1f| 4 - Data por extenso         | Data 3 =                           |\n");
  printf("\e[9;1f| 5 - Data seguinte            | Data 4 =                           |\n");
  printf("\e[10;1f| 6 - Data anterior            | Data 5 =                           |\n");
  printf("\e[11;1f| 7 - Apagar uma data          | Data 6 =                           |\n");
  printf("\e[12;1f| 0 - Terminar o programa      | Data 7 =                           |\n");
  printf("\e[13;1f|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~| Data 8 =                           |\n");
  printf("\e[14;1f| Opcao ->                     | Data 9 =                           |\n");
  printf("\e[15;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[16;1f|                    Janela de Aquisicao de Dados                   |\n");
  printf("\e[17;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[18;1f|                                                                   |\n");
  printf("\e[19;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[20;1f|            Janela de Mensagens de Erro e de Resultados            |\n");
  printf("\e[21;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[22;1f|                                                                   |\n");
  printf("\e[23;1f|                                                                   |\n");
  printf("\e[24;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
}

void ReadOption (int *popc)
{
  do
  {  
    printf("\e[14;1f| Opcao ->                     |");
    printf("\e[14;12f"); scanf ("%d", popc);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*popc < 0 || *popc > MAX_OPTIONS);
}

void ReadDateIndex (int *pnd, char *pmsg)
{
  int msglen = strlen (pmsg);

  do
  {
    *pnd = -1;
    printf("\e[18;1f| Indice do %s ->                          ", pmsg);
    printf("\e[18;%df", 17+msglen); scanf ("%d", pnd);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*pnd < 0 || *pnd >= MAX_DATES);
}

int ActiveDate (PtDate pnfarray[], int pnf)
{
  char car;

  if (pnfarray[pnf] != NULL)
  {
    do
    {
      printf("\e[1m\e[22;1f| A data %d ja existe!                     ", pnf);
      printf("\e[0m\e[23;1f| Deseja apaga-la (s/n)? ");
      scanf ("%c", &car); car = tolower (car);
      scanf ("%*[^\n]"); scanf ("%*c");
    } while (car != 'n' && car != 's');

    if (car == 's') { DateDestroy (&pnfarray[pnf]); return 0; }
    else return 1;
  }
  else return 0;
}

int NotActiveDate (PtDate pnfarray[], int pnf)
{
  if (pnfarray[pnf] == NULL)
  {
    printf("\e[1m\e[22;1f| A data %d nao existe!                     ", pnf);
    printf("\e[0m\e[23;1f| Prima uma tecla para continuar ");
    scanf ("%*[^\n]"); scanf ("%*c");
    return 1;
  }
  else return 0;
}

void WriteErrorMessage (char *pmsg)
{
  printf("\e[22;1f| %s nao foi efectuada devido a -> \e[1m%s", pmsg, DateErrorMessage ());
  printf("\e[0m\e[23;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}

void ReadDate (PtDate *pd)
{
  int VY, VM, VD; int Status;

  do
  {
    printf("\e[18;1f| Dia da data ->                ");
    printf("\e[18;18f"); Status = scanf ("%d", &VD);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VD < 1 || VD > 31);

  do
  {
    printf("\e[18;1f| Mes da data ->                ");
    printf("\e[18;18f"); Status = scanf ("%d", &VM);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VM < 1 || VM > 12);

  do
  {
    printf("\e[18;1f| Ano da data ->                      ");
    printf("\e[18;18f"); Status = scanf ("%d", &VY);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VY < 0);

  *pd = DateCreate (VD, VM, VY);
}

void ReadDateUniv (PtDate *pd)
{
  int Status; char DataStr[11];

  do
  {
    printf("\e[18;1f| Data ->                ");
    printf("\e[18;11f"); Status = scanf ("%10s", DataStr);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status);

  *pd = DateStringCreate (DataStr);
}

void WriteDate (PtDate pd)
{
  if (pd != NULL) printf ("%2d/%2d/%4d", DateGetDay (pd), DateGetMonth (pd), DateGetYear (pd));
}

void WriteResult (int pres)
{
  if (pres >0) printf("\e[22;1f| primeira data posterior a segunda data \e[1m");
  else if (pres < 0) printf("\e[22;1f| primeira data anterior a segunda data \e[1m");
       else printf("\e[22;1f| datas iguais \e[1m");
  printf("\e[0m\e[23;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}
