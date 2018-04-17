/*******************************************************************************

 Programa gráfico de simulação da funcionalidade do TDA Time


 Autor : António Manuel Adrego da Rocha    Data : Fevereiro de 2018

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "time.h"  /* Ficheiro de interface do tipo de dados */

#define MAX_TIMES 10
#define MAX_OPTIONS 8

void Menu (void);
void ReadOption (int *);
void ReadTimeIndex (int *, char *);
int ActiveTime (PtTime *, int);
int NotActiveTime (PtTime *, int);
void WriteErrorMessage (char *);
void ReadTime (PtTime *);
void WriteTime (PtTime);
void WriteResult (int);

int main (void)
{
  PtTime TimeArray[MAX_TIMES];
  int Option, Index, Time1, Time2, Time3, Comp; char * TimeStr;

  for (Index = 0; Index < MAX_TIMES; Index++) TimeArray[Index] = NULL;
  
  do
  {
    /* limpar o ecran e apresentar menu */
    Menu ();

    /* inicializar o erro */
    TimeClearError ();

    /* apresentar as informações horárias activas */
    for (Index = 0; Index < MAX_TIMES; Index++)
      if (TimeArray[Index] != NULL)
      {
        TimeStr = TimeToString (TimeArray[Index]);
        if (TimeStr)
        {
          printf ("\e[1m\e[%d;45f%s", 5+Index, TimeStr);
          printf ("\e[0m");
		  free (TimeStr);
        }
      }

    /* ler opcao do utilizador */
    ReadOption (&Option);

    switch (Option)
    {
        case 1 :  ReadTimeIndex (&Time1, "tempo");
                  if (ActiveTime (TimeArray, Time1)) break;
                  ReadTime (&TimeArray[Time1]);
                  if (TimeError ()) WriteErrorMessage ("A criacao");
                  break;

        case 2 :  ReadTimeIndex (&Time1, "primeiro tempo");
                  ReadTimeIndex (&Time2, "segundo tempo");
                  do
                  {
                    ReadTimeIndex (&Time3, "tempo soma");
                  } while (Time3 == Time1 || Time3 == Time2);
                  if (ActiveTime (TimeArray, Time3)) break;
                  TimeArray[Time3] = TimeAdd (TimeArray[Time1], TimeArray[Time2]);
                  if (TimeError ()) WriteErrorMessage ("A soma");
                  break;

        case 3 :  ReadTimeIndex (&Time1, "primeiro tempo");
                  ReadTimeIndex (&Time2, "segundo tempo");
                  do
                  {
                    ReadTimeIndex (&Time3, "tempo diferenca");
                  } while (Time3 == Time1 || Time3 == Time2);
                   if (ActiveTime (TimeArray, Time3)) break;
                   TimeArray[Time3] = TimeSub (TimeArray[Time1], TimeArray[Time2]);
                   if (TimeError ()) WriteErrorMessage ("A diferenca");
                  break;

        case 4 :  ReadTimeIndex (&Time1, "tempo origem");
                  if (NotActiveTime (TimeArray, Time1)) break;
                  do
                  {
                    ReadTimeIndex (&Time2, "tempo destino");
                  } while (Time2 == Time1);
                  if (ActiveTime (TimeArray, Time2)) break;
                  TimeArray[Time2] = TimeCopy (TimeArray[Time1]);
                  if (TimeError ()) WriteErrorMessage ("A copia");
                  break;

        case 5 :  ReadTimeIndex (&Time1, "primeiro tempo");
                  if (NotActiveTime (TimeArray, Time1)) break;
                  do
                  {
                    ReadTimeIndex (&Time2, "segundo tempo");
                  } while (Time2 == Time1);
                  if (NotActiveTime (TimeArray, Time2)) break;
                  Comp = TimeCompareTo (TimeArray[Time1], TimeArray[Time2]);
                  if (TimeError ()) WriteErrorMessage ("A comparacao");
                  else WriteResult (Comp);
                  break;

        case 6 :  ReadTimeIndex (&Time1, "tempo origem");
                  if (NotActiveTime (TimeArray, Time1)) break;
                  do
                  {
                    ReadTimeIndex (&Time2, "tempo destino");
                  } while (Time2 == Time1);
                  if (ActiveTime (TimeArray, Time2)) break;
                  TimeArray[Time2] = TimePreview (TimeArray[Time1]);
                  if (TimeError ()) WriteErrorMessage ("O tempo anterior");
                  break;
        
        case 7 :  ReadTimeIndex (&Time1, "tempo origem");
                  if (NotActiveTime (TimeArray, Time1)) break;
                  do
                  {
                    ReadTimeIndex (&Time2, "tempo destino");
                  } while (Time2 == Time1);
                  if (ActiveTime (TimeArray, Time2)) break;
                  TimeArray[Time2] = TimeNext (TimeArray[Time1]);
                  if (TimeError ()) WriteErrorMessage ("O tempo seguinte");
                  break;

        case 8 :  ReadTimeIndex (&Time1, "tempo");
                  if (NotActiveTime (TimeArray, Time1)) break;
                  TimeDestroy (&TimeArray[Time1]);
                  if (TimeError ()) WriteErrorMessage ("A eliminacao");
                  break;
    }
  } while (Option != 0);

  for (Index = 0; Index < MAX_TIMES; Index++) 
    if (TimeArray[Index] != NULL) TimeDestroy (&TimeArray[Index]);

  printf ("\e[26;1f");

  return EXIT_SUCCESS;
}

void Menu (void)
{
  system ("clear");

  printf("\e[2;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[3;1f|        Programa Grafico Para Simular Operacoes Sobre Tempos        |\n");
  printf("\e[4;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[5;1f| 1 - Criar um tempo           | Tempo  0 =                          |\n");
  printf("\e[6;1f| 2 - Somar tempos             | Tempo  1 =                          |\n");
  printf("\e[7;1f| 3 - Subtrair tempos          | Tempo  2 =                          |\n");
  printf("\e[8;1f| 4 - Copiar um tempo          | Tempo  3 =                          |\n");
  printf("\e[9;1f| 5 - Comparar tempos          | Tempo  4 =                          |\n");
  printf("\e[10;1f| 6 - Tempo anterior           | Tempo  5 =                          |\n");
  printf("\e[11;1f| 7 - Tempo seguinte           | Tempo  6 =                          |\n");
  printf("\e[12;1f| 8 - Apagar um tempo          | Tempo  7 =                          |\n");
  printf("\e[13;1f| 0 - Terminar o programa      | Tempo  8 =                          |\n");
  printf("\e[14;1f|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~| Tempo  9 =                          |\n");
  printf("\e[15;1f| Opcao ->                     | Tempo 10 =                          |\n");
  printf("\e[16;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[17;1f|                    Janela de Aquisicao de Dados                    |\n");
  printf("\e[18;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[19;1f|                                                                    |\n");
  printf("\e[20;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[21;1f|             Janela de Mensagens de Erro e de Resultados            |\n");
  printf("\e[22;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  printf("\e[23;1f|                                                                    |\n");
  printf("\e[24;1f|                                                                    |\n");
  printf("\e[25;1f~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
}

void ReadOption (int *poption)
{
  do
  {  
    printf("\e[15;1f| Opcao ->                     |");
    printf("\e[15;12f"); scanf ("%d", poption);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*poption < 0 || *poption > MAX_OPTIONS);
}

void ReadTimeIndex (int *pnt, char *pmsg)
{
  int msglen = strlen (pmsg);

  do
  {
    *pnt = -1;
    printf("\e[19;1f| Indice do %s ->                          ", pmsg);
    printf("\e[19;%df", 17+msglen); scanf ("%d", pnt);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*pnt < 0 || *pnt >= MAX_TIMES);
}

int ActiveTime (PtTime pntarray[], int pnt)
{
  char car;

  if (pntarray[pnt] != NULL)
  {
    do
    {
      printf("\e[1m\e[23;1f| O tempo %d ja existe!                     ", pnt);
      printf("\e[0m\e[24;1f| Deseja apaga-lo (s/n)? ");
      scanf ("%c", &car); car = tolower (car);
      scanf ("%*[^\n]"); scanf ("%*c");
    } while (car != 'n' && car != 's');

    if (car == 's') { TimeDestroy (&pntarray[pnt]); return 0; }
    else return 1;
  }
  else return 0;
}

int NotActiveTime (PtTime pntarray[], int pnt)
{
  if (pntarray[pnt] == NULL)
  {
    printf("\e[1m\e[23;1f| O tempo %d nao existe!                     ", pnt);
    printf("\e[0m\e[24;1f| Prima uma tecla para continuar ");
    scanf ("%*[^\n]"); scanf ("%*c");
    return 1;
  }
  else return 0;
}

void WriteErrorMessage (char *pmsg)
{
  printf("\e[23;1f| %s nao foi efectuada -> \e[1m%s", pmsg, TimeErrorMessage ());
  printf("\e[0m\e[24;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}

void ReadTime (PtTime *pt)
{
  int VH, VM, VS; int Status;

  do
  {
    printf("\e[19;1f| Horas do tempo ->                      ");
    printf("\e[19;21f"); Status = scanf ("%d", &VH);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VH < 0 || VH > 23);

  do
  {
    printf("\e[19;1f| Minutos do tempo ->                ");
    printf("\e[19;23f"); Status = scanf ("%d", &VM);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VM < 0 || VM > 59);

  do
  {
    printf("\e[19;1f| Segundos do tempo ->                ");
    printf("\e[19;24f"); Status = scanf ("%d", &VS);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (!Status || VS < 0 || VS > 59);

  *pt = TimeCreate (VH, VM, VS);
}

void WriteTime (PtTime pt)
{
  if (pt != NULL) printf ("%02d:%02d:%02d", TimeGetHour (pt),  TimeGetMinute (pt), TimeGetSecond (pt));
}

void WriteResult (int pres)
{
  if (pres >0) printf("\e[23;1f| primeiro tempo maior do que segundo tempo \e[1m");
  else if (pres < 0) printf("\e[23;1f| primeiro tempo menor do que segundo tempo \e[1m");
       else printf("\e[23;1f| tempos iguais \e[1m");
  printf("\e[0m\e[24;1f| Prima uma tecla para continuar ");
  scanf ("%*[^\n]"); scanf ("%*c");
}
