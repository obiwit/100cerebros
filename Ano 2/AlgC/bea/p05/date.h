/*******************************************************************************
 Ficheiro de interface do Tipo de Dados Abstracto Data (date.h). A informação
 horária é composta pelasvhoras, minutos e segundos. A implementação providencia
 um construtor para criar e inicializar uma informação horária válida. É da 
 responsabilidade da aplicação, invocar o destrutor, para libertar a memória
 atribuída ao objecto. O módulo providencia um controlo centralizado de erro,
 disponibilizando uma função para obter o último erro ocorrido, uma função para
 obter uma mensagem de erro elucidativa e uma função para limpar o erro.

 Autor : António Manuel Adrego da Rocha    Data : Março de 2018
*******************************************************************************/

#ifndef _DATE
#define _DATE

/****************** Definição do Tipo Ponteiro para uma Data ******************/

typedef struct date *PtDate;

/************************ Definição de Códigos de Erro ************************/

#define	OK			0	/* operação realizada com sucesso */
#define	NO_DATE		1	/* a(s) data(s) não existe(m) */
#define	NO_MEM		2	/* memória esgotada */
#define	INVALID		3	/* data inválida */
#define	NULL_PTR	4	/* ponteiro inexistente */

/************************* Protótipos dos Subprogramas ************************/

void DateClearError (void);
/*******************************************************************************
 Inicialização do erro.
*******************************************************************************/

int DateError (void);
/*******************************************************************************
 Indicação do código de erro ocorrido na última operação.
*******************************************************************************/

char *DateErrorMessage (void);
/*******************************************************************************
 Obtenção da mensagem esclarecedora da causa do erro ocorrido.
*******************************************************************************/

PtDate DateCreate (int pd, int pm, int py);
/*******************************************************************************
 Criação e inicialização de uma data na forma ano/mês/dia. A data tem de ser 
 válida. Valores de erro: OK, NO_MEM ou INVALID.
*******************************************************************************/

PtDate DateStringCreate (char *pstrdate);
/*******************************************************************************
 Criação e inicialização de uma data a partir de uma sequência de caracteres no
 formato "yyyy-mm-dd", que pode eventualmente não ser válida. Valores de erro: 
 OK, NULL_PTR, NO_MEM ou INVALID.
*******************************************************************************/

PtDate DateCopy (PtDate pdate);
/*******************************************************************************
 Cópia de uma data. Valores de erro: OK, NO_DATE ou NO_MEM.
*******************************************************************************/

void DateDestroy (PtDate *pdate);
/*******************************************************************************
 Destruição de uma data. Valores de erro: OK ou NO_DATE.
*******************************************************************************/

int  DateGetDay (PtDate pdate);
/*******************************************************************************
 Obter o dia da data. Valores de erro: OK ou NO_DATE.
*******************************************************************************/

int  DateGetMonth (PtDate pdate);
/*******************************************************************************
 Obter o mês da data. Valores de erro: OK ou NO_DATE.
*******************************************************************************/

int  DateGetYear (PtDate pdate);
/*******************************************************************************
 Obter o ano da data. Valores de erro: OK ou NO_DATE.
*******************************************************************************/

void DateSet (PtDate pdate, int pday, int pmonth, int pyear);
/*******************************************************************************
 Modificar a data para pday/pmonth/pyear. Valores de erro: OK, NO_DATE ou INVALID.
*******************************************************************************/

int DateEquals (PtDate pdate1, PtDate pdate2);
/*******************************************************************************
 Comparação de igualdade de duas datas. Devolve 1 em caso afirmativo e 0 em caso
 contrário. Valores de erro:OK ou NO_DATE.
*******************************************************************************/

int DateCompareTo (PtDate pdate1, PtDate pdate2);
/*******************************************************************************
 Comparação relacional de duas datas. Devolve um valor negativo se pdate1 for 
 anterior a pdate2, o valor zero se forem iguais e um valor positivo se pdate1
 for posterior a pdate2. Valores de erro: OK ou NO_DATE.
*******************************************************************************/

int  DateDayMonth (int pmonth, int pyear);
/*******************************************************************************
 Obter o número de dias do mês. Valores de erro: OK, INVALID ou NO_DATE.
*******************************************************************************/

char * DateToString (PtDate pdate);
/*******************************************************************************
 Devolve uma sequência de caracteres que representa a data no formato dd/mm/yyyy
 ou NULL, caso não exista memória. Valores de erro: OK, NO_DATE ou NO_MEM.
*******************************************************************************/

char * DateToFullString (PtDate pdate);
/*******************************************************************************
 Devolve uma sequência de caracteres que representa a data por extenso ou NULL, 
 caso não exista memória. Valores de erro: OK, NO_DATE ou NO_MEM.
*******************************************************************************/

PtDate DateYesterday (PtDate pdate);
/*******************************************************************************
 Dia anterior da data pdate. Devolve a referência da nova data ou NULL, caso não
 exista memória. Valores de erro: OK, NO_DATE ou NO_MEM.
*******************************************************************************/

PtDate DateTomorrow (PtDate pdate);
/*******************************************************************************
 Dia seguinte da data pdate. Devolve a referência da nova data ou NULL, caso não
 exista memória. Valores de erro: OK, NO_DATE ou NO_MEM.
*******************************************************************************/

#endif
