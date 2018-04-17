/*******************************************************************************
 Ficheiro de implementação do Tipo de Dados Abstracto Informação Horária (time.c).
 A estrutura de dados de suporte do tempo é um registo constituído pelos três
 campos de tipo inteiro Hour, Minute e Second.

 Autor : António Manuel Adrego da Rocha    Data Março de 2018
*******************************************************************************/

#include <stdio.h> 
#include <stdlib.h>
#include "time.h"  /* Ficheiro de interface do TDA - ADT Interface file */

/************** Definição da Estrutura de Dados Interna do Tempo *************/

struct time
{
  int Hour, Minute, Second;
};

/*********************** Controlo Centralizado de Error ************************/

static unsigned int Error = OK;  /* inicialização do erro */

static char *ErrorMessages[] = {
                                 "sem erro - without Error",
                                 "tempo inexistente - time does not exist",
                                 "memoria esgotada - out of memory",
                                 "tempo incorrecto - wrong time"
                               };

static char *AbnormalErrorMessage = "erro desconhecido - Unknown error";

/************** Número de mensagens de erro previstas no módulo ***************/

#define N (sizeof (ErrorMessages) / sizeof (char *))

/************************ Alusão às Funções Auxiliares ************************/

static int ValidOperators (PtTime, PtTime);
static int ValidTime (int, int, int);

/*************************** Definição das Funções ****************************/

void TimeClearError (void)
{ Error = OK; }

int TimeError (void)
{ return Error; }

char *TimeErrorMessage (void)
{
  if (Error < N) return ErrorMessages[Error];
  else return AbnormalErrorMessage;  /* sem mensagem de erro - no error message */
}

PtTime TimeCreate (int pHour, int pMin, int pSec)  /* construtor inicializador */
{
  if (!ValidTime (pHour, pMin, pSec)) return NULL;

  PtTime Time; 
  /* cria o tempo - allocating the supporting record */
  if ((Time = malloc (sizeof (struct time))) == NULL)
  { Error = NO_MEM; return NULL; }

  /* armazenamento da informação horária - storing the time */
  Time->Hour = pHour; Time->Minute = pMin; Time->Second = pSec;

  Error = OK;
  return Time;    /* devolve o tempo criado - returning the new time */
}

void TimeDestroy (PtTime *ptime)  /* destrutor */
{
  PtTime TmpTime = *ptime;

  /* verifica se o tempo existe - verifies if time exists */
  if (TmpTime == NULL) { Error = NO_TIME; return ; }

  /* libertação da memória dinâmica - free dynamic memory */
  free (TmpTime);

  Error = OK;
  *ptime = NULL;  /* programação defensiva - defensive programming */
}

PtTime TimeCopy (PtTime ptime)  /* construtor cópia */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return NULL; }

  /* devolve a copia do tempo - returning the time copy */
  return TimeCreate (ptime->Hour, ptime->Minute, ptime->Second);
}

int  TimeGetHour (PtTime ptime)  /* observador das horas */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return 0; }

  Error = OK;
  return ptime->Hour; 
}

int  TimeGetMinute (PtTime ptime)  /* observador dos minutos */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return 0; }

  Error = OK;
  return ptime->Minute; 
}

int  TimeGetSecond (PtTime ptime)   /* observador dos segundos */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return 0; }

  Error = OK;
  return ptime->Second; 
}

void  TimeSetHour (PtTime ptime, int phour)  /* modificador das horas */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return ; }

  if (phour >= 0 && phour <= 23) { Error = OK; ptime->Hour = phour; }
  else Error = INVALID;
}

void  TimeSetMinute (PtTime ptime, int pmin) /* modificador dos minutos */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return ; }

  if (pmin >= 0 && pmin <= 59) { Error = OK; ptime->Minute = pmin; }
  else Error = INVALID;
}

void  TimeSetSecond (PtTime ptime, int psec)  /* modificador dos segundos */ 
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return ; }

  if (psec >= 0 && psec <= 59) { Error = OK; ptime->Second = psec; }
  else Error = INVALID;
}

int TimeIsZero (PtTime ptime)  /* verificador de tempo 00.00.00 */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return 0; }

  Error = OK;
  return  ptime->Hour == 0 && ptime->Minute == 0 && ptime->Second == 0;
}

int  TimeEquals (PtTime ptime1, PtTime ptime2)  /* comparador de igualdade */
{
  /* validação dos tempos - validating the existence of the two times */
  if (!ValidOperators (ptime1, ptime2)) return 0;

  if (ptime1 == ptime2) return 1;
  return TimeCompareTo (ptime1, ptime2) == 0;
}

int TimeCompareTo (PtTime ptime1, PtTime ptime2)  /* operador relacional (> == <) */
{
  /* validação dos tempos - validating the existence of the two times */
  if (!ValidOperators (ptime1, ptime2)) return 0;

  return TimeTotalSeconds (ptime1) - TimeTotalSeconds (ptime2);
}

char * TimeToString (PtTime ptime)  /* tempo no formato hh/mm/ss */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return NULL; }

  char * Str;  
  /* cria a sequência de caracteres - allocating the string */
  if ((Str = calloc (9, sizeof (char))) == NULL)
  { Error = NO_MEM; return NULL; }

  sprintf (Str, "%02d:%02d:%02d", ptime->Hour, ptime->Minute, ptime->Second);
  Error = OK;
  return Str;
}

PtTime TimeNext (PtTime ptime)  /* novo tempo com o segundo seguinte */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return NULL; }

  int Hour = TimeGetHour (ptime);
  int Minute = TimeGetMinute (ptime);
  int Second = TimeGetSecond (ptime);

  if (Second < 59) Second++;
  else
  {
   Second = 0;
   if (Minute < 59) Minute++;
   else { Minute = 0; Hour++; }
  }

  if (Hour > 23) { Error = INVALID; return NULL; }
  else return TimeCreate (Hour, Minute, Second);
}

PtTime TimePreview (PtTime ptime)  /* novo tempo com o segundo anterior */
{
  /* verifica se o tempo existe - verifies if time exists */
  if (ptime == NULL) { Error = NO_TIME; return NULL; }

  int Hour = TimeGetHour (ptime);
  int Minute = TimeGetMinute (ptime);
  int Second = TimeGetSecond (ptime);

  if (Second > 1) Second--;
  else
  {
   Second = 59;
   if (Minute > 1) Minute--;
   else { Minute = 59; Hour--; }
  }
 
  if (Hour < 0) { Error = INVALID; return NULL; }
  else return TimeCreate (Hour, Minute, Second);
}

PtTime TimeAdd (PtTime ptime1, PtTime ptime2)  /* novo tempo com a soma de dois tempos */
{
  /* validação dos tempos - validating the existence of the two times */
  if (!ValidOperators (ptime1, ptime2)) return NULL;

  int Hour = ptime1->Hour;
  int Minute = ptime1->Minute;
  int Second = ptime1->Second;
  
  Second += ptime2->Second;
  if (Second > 59) { Minute++; Second -= 60; }
  Minute += ptime2->Minute;
  if (Minute > 59) { Hour++; Minute -= 60; }
  Hour += ptime2->Hour;

  /* NULL em caso de erro -  returning NULL if error occurs */
  if (Hour > 23) { Error = INVALID; return NULL; }
  /* devolve o tempo soma - returning the add time */
  else return TimeCreate (Hour, Minute, Second); 
}

PtTime  TimeSub (PtTime ptime1, PtTime ptime2)  /* novo tempo com a diferença de dois tempos */
{
  /* validação dos tempos - validating the existence of the two times */
  if (!ValidOperators (ptime1, ptime2)) return NULL;
 
  /* validação de tempo1 >= tempo2 - validating if time1 >= time2 */
  if (TimeCompareTo (ptime1, ptime2) < 0) { Error = INVALID; return NULL; }

  int Hour = ptime1->Hour;
  int Minute = ptime1->Minute;
  int Second = ptime1->Second;

  Second -= ptime2->Second;
  if (Second < 0) { Minute--; Second += 60; }
  Minute -= ptime2->Minute;
  if (Minute < 0) { Hour--; Minute += 60; }
  Hour -= ptime2->Hour;

  /* devolve o tempo diferença - returning the difference time */ 
  return TimeCreate (Hour, Minute, Second);
}

int TimeTotalSeconds (PtTime ptime)  /* tempo em segundos*/
{
  /* verifica se o o tempo existe - verifies if the time exist */
  if (ptime == NULL) { Error = NO_TIME; return 0; }
  
  Error = OK;
  /* devolve o tempo total em segundos - returning the total seconds of the time */
  return ptime->Hour * 3600 + ptime->Minute * 60 + ptime->Second;
}

/*******************************************************************************
 Função auxiliar que verifica se os dois tempos podem ser operados, ou seja,
 se ambos existem. Devolve 1 em caso afirmativo e 0 em caso contrário.
 Valores de erro: OK ou NO_TIME.
 
 Auxiliary function to verify if the two times can be operated, that is, if they
 exist. Returns 1 in affirmative case and 0 otherwise. Error codes: OK or NO_TIME.
*******************************************************************************/
static int ValidOperators (PtTime ptime1, PtTime ptime2)
{
  /* verifica se os dois tempos existem - verifies if the two times exist */
  if ((ptime1 == NULL) || (ptime2 == NULL)) { Error = NO_TIME; return 0; }

  Error = OK;
  return 1;  /* os dois tempos existem - they both exist */
}

/*******************************************************************************
 Função auxiliar que verifica se um tempo definido por horas, minutos e segundos 
 é válido. Devolve 1 em caso afirmativo e 0 em caso contrário.
 Valores de erro: OK ou INVALID.
 
 Auxiliary function to verify if a time defined by hours, minutes and seconds 
 is valid. Returns 1 in affirmative case and 0 otherwise. Error codes: OK or INVALID.
*******************************************************************************/
static int ValidTime (int ph, int pm, int ps)
{
  
  if (ph > 23 || ph < 0 || pm < 0 || pm > 59 || ps < 0 || ps > 59)
	   { Error = INVALID; return 0; }
  else { Error = OK; return 1; }
}



