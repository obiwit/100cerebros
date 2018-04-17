/*******************************************************************************
 Ficheiro de interface do Tipo de Dados Abstracto Informação Horária (time.h).
 A informação horária é composta pelas horas, minutos e segundos. A implementação
 providencia um construtor para criar e inicializar uma informação horária válida.
 É da responsabilidade da aplicação, invocar o destrutor, para libertar a memória
 atribuída ao objecto. O módulo providencia um controlo centralizado de erro,
 disponibilizando uma função para obter o último erro ocorrido, uma função para
 obter uma mensagem de erro elucidativa e uma função para limpar o erro.

 Autor : António Manuel Adrego da Rocha    Data : Março de 2018
*******************************************************************************/

#ifndef _TIME
#define _TIME

/*********** Definição do Tipo Ponteiro para uma Informação Horária ***********/

typedef struct time *PtTime;

/************************ Definição de Códigos de Erro ************************/

#define	OK      0	/* operação realizada com sucesso */
#define	NO_TIME 1	/* o(s) tempo(s) não existe(m) */
#define	NO_MEM  2	/* memória esgotada */
#define	INVALID 3	/* tempo inválido */

/************************* Protótipos dos Subprogramas ************************/

void TimeClearError (void);
/*******************************************************************************
 Inicialização do erro.
*******************************************************************************/

int TimeError (void);
/*******************************************************************************
 Indicação do código de erro ocorrido na última operação.
*******************************************************************************/

char *TimeErrorMessage (void);
/*******************************************************************************
 Obtenção da mensagem esclarecedora da causa do erro ocorrido.
*******************************************************************************/

PtTime TimeCreate (int ph, int pm, int ps);
/*******************************************************************************
 Criação e inicialização de uma informação horária na forma ph:pm:ps. O tempo tem
 de ser válido. Devolve a referência do tempo criado ou NULL, caso não exista 
 memória. Valores de erro: OK, NO_MEM ou INVALID.
*******************************************************************************/

PtTime TimeCopy (PtTime ptime);
/*******************************************************************************
 Cópia de uma informação horária. Valores de erro: OK, NO_TIME ou NO_MEM.
*******************************************************************************/

void TimeDestroy (PtTime *ptime);
/*******************************************************************************
 Destruição de uma informação horária. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

int  TimeGetHour (PtTime ptime);
/*******************************************************************************
 Obter as horas da informação horária. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

int  TimeGetMinute (PtTime ptime);
/*******************************************************************************
 Obter os minutos da informação horária. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

int  TimeGetSecond (PtTime ptime);
/*******************************************************************************
 Obter os segundos da informação horária. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

void  TimeSetHour (PtTime ptime, int ph);
/*******************************************************************************
 Coloca as horas da informação horária a ph.
 Valores de erro: OK, INVALID ou NO_TIME.
*******************************************************************************/

void TimeSetMinute (PtTime ptime, int pm);
/*******************************************************************************
 Coloca os minutos da informação horária a pm.
 Valores de erro: OK, INVALID ou NO_TIME.
*******************************************************************************/

void TimeSetSecond (PtTime ptime, int ps);
/*******************************************************************************
 Coloca os segundos da informação horária a ps.
 Valores de erro: OK, INVALID ou NO_TIME.
*******************************************************************************/

int TimeIsZero (PtTime ptime);
/*******************************************************************************
 Verifica se a informação horária é 00:00:00. Devolve 1 em caso afirmativo e 0
 em caso contrário. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

int TimeEquals (PtTime ptime1, PtTime ptime2);
/*******************************************************************************

 Comparação de igualdade de duas informações horárias. Devolve 1 em caso afirmativo
 e 0 em caso contrário. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

int TimeCompareTo (PtTime ptime1, PtTime ptime2);
/*******************************************************************************
 Comparação relacional de duas informações horárias. Devolve um valor negativo se
 ptime1 for menor do que ptime2, o valor zero se forem iguais e um valor positivo
 se ptime1 for maior do que ptime2. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

char * TimeToString (PtTime ptime);
/*******************************************************************************
 Devolve uma sequência de caracteres que representa a informação horária no 
 formato hh:mm:ss ou uma sequência de caracteres nula, caso não exista memória.
 Valores de erro: OK, NO_TIME ou NO_MEM.
*******************************************************************************/

PtTime TimeNext (PtTime ptime);
/*******************************************************************************
 Informação horária seguinte (ptime mais um segundo). Devolve a referência da
 nova informação horária ou NULL, caso não exista memória ou ela seja invalida.
 Valores de erro: OK, NO_TIME, INVALID ou NO_MEM.
*******************************************************************************/

PtTime TimePreview (PtTime ptime);
/*******************************************************************************
 Informação horária anterior (ptime menos um segundo). Devolve a referência da
 nova informação horária ou NULL, caso não exista memória ou ela seja invalida.
 Valores de erro: OK, NO_TIME, INVALID ou NO_MEM.
*******************************************************************************/

PtTime TimeAdd (PtTime ptime1, PtTime ptime2);
/*******************************************************************************
 Adição de duas informações horárias. Devolve a referência da nova informação 
 horária ou NULL, caso não exista memória, ou a operação não possa ser realizada.
 Valores de erro: OK, NO_TIME, INVALID ou NO_MEM.
*******************************************************************************/

PtTime TimeSub (PtTime ptime1, PtTime ptime2);
/*******************************************************************************
 Subtracção de duas informações horárias se ptime1 for maior ou igual a ptime2.
 Devolve a referência da nova informação horária ou NULL, caso não exista memória,
 ou a operação não possa ser realizada. Valores de erro: OK, NO_TIME, INVALID ou NO_MEM.
*******************************************************************************/

int TimeTotalSeconds (PtTime pt);
/*******************************************************************************
 Número total de segundos de uma informação horária. Valores de erro: OK ou NO_TIME.
*******************************************************************************/

#endif
