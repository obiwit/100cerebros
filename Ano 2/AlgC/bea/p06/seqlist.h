/*******************************************************************************
 Ficheiro de interface do Tipo de Dados Abstracto SEQ_LIST (seqlist.h). Este
 tipo de dados serve para armazenar e processar sequências de números inteiros.
 A sequência é armazenada numa lista biligada e tem associado o número de elementos
 efectivamente armazenados. A implementação providencia um construtor para criar
 uma sequência vazia. É da responsabilidade da aplicação, invocar o destrutor,
 para libertar a memória atribuída ao objecto. O módulo providencia um controlo
 centralizado de erro, disponibilizando funções para: consultar o último erro
 ocorrido; obter uma mensagem de erro elucidativa; e limpar o erro. Também são
 disponibilizadas funções para: criar uma sequência a partir de um ficheiro de
 texto e armazenar uma sequência num ficheiro de texto. Este ficheiro tem na
 primeira linha o número de elementos armazenados na sequência, seguido dos
 elementos, um por linha.
 
 Autor : António Manuel Adrego da Rocha    Data : Março de 2018
*******************************************************************************/

#ifndef _SEQ_LIST
#define _SEQ_LIST

/*********** Definição do Tipo Ponteiro para a sequência de Números ***********/

typedef struct seqlist *PtSeqList;

/************************ Definição de Códigos de Erro ************************/

#define	OK                0         /* operação realizada com sucesso */
#define	NO_SEQ            1         /* a(s) sequência(s) não existe(m) */
#define	NO_MEM            2         /* memória esgotada */
#define BAD_INDEX         3         /* posição incorrecta */
#define NO_NUMBER         4         /* elemento inexistente */
#define	SEQ_EMPTY         5         /* sequência vazia */
#define	SEQ_FULL          6         /* sequência cheia */
#define BAD_SIZE          7         /* dimensão da sequência errada - wrong size */
#define	NO_FILE           8         /* ficheiro inexistente */
#define	NULL_PTR          9         /* ponteiro nulo */

/************************* Protótipos dos Subprogramas ************************/

void SeqListClearError (void);
/*******************************************************************************
 Inicialização do erro.
*******************************************************************************/

int SeqListError (void);
/*******************************************************************************
 Indicação do código de erro ocorrido na última operação.
*******************************************************************************/

char *SeqListErrorMessage (void);
/*******************************************************************************
 Obtenção da mensagem esclarecedora da causa do erro ocorrido.
*******************************************************************************/

PtSeqList SeqListCreate ();
/*******************************************************************************
 Criação de uma sequência vazia. Devolve a referência da sequência criada ou NULL,
 caso não exista memória. Valores de erro: OK ou NO_MEM.
*******************************************************************************/

void SeqListDestroy (PtSeqList *pseq);
/*******************************************************************************
 Destruição de uma sequência. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

PtSeqList SeqListCopy (PtSeqList pseq);
/*******************************************************************************
 Cópia de uma sequência. Valores de erro: OK, NO_SEQ ou NO_MEM.
*******************************************************************************/

PtSeqList SeqListFileCreate (char * pfname);
/*******************************************************************************
 Criação de uma sequência a partir do ficheiro de texto pfname. Devolve a
 referência da sequência criada ou NULL, caso não consiga criar a sequência.
 Valores de erro: OK, NO_FILE, BAD_SIZE ou NO_MEM.
*******************************************************************************/

void SeqListStoreFile (PtSeqList pseq, char *pfname);
/*******************************************************************************
 Armazena a sequência pseq, caso ela exista, no ficheiro pfname.
 Valores de erro: OK, NO_SEQ, SEQ_EMPTY ou NO_FILE.
*******************************************************************************/

int SeqListGetSize (PtSeqList pseq);
/*******************************************************************************
 Determinar o número de elementos da sequência. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

int SeqListGetElement (PtSeqList pseq, int pindex);
/*******************************************************************************
 Consultar o elemento armazenado na posição pindex da sequência. A posição tanto pode
 ser indicada por um valor: positivo (0<=pindex<size) para acesso do início para o
 fim da sequência; ou negativo (-1<=pindex<=-size) para acesso do fim para o início
 da sequência. Valores de erro: OK ou BAD_INDEX.
*******************************************************************************/

void SeqListSetElement (PtSeqList pseq, int pindex, int pvalue);
/*******************************************************************************
 Modificar o elemento armazenado na posição pindex da sequência. A posição tanto
 pode ser indicada por um valor: positivo (0<=pindex<size) para acesso do início
 para o fim da sequência; ou negativo (-1<=pindex<=-size) para acesso do fim para
 o início da sequência. Valores de erro: OK ou BAD_INDEX.
*******************************************************************************/

int SeqListEquals (PtSeqList pseq1, PtSeqList pseq2);
/*******************************************************************************
 Comparação de igualdade de duas sequências, considerando sequências iguais quando
 elas têm os mesmos elementos pela mesma ordem. Devolve 1 em caso afirmativo e 0
 em caso contrário. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

void SeqListInsert (PtSeqList pseq, int pvalue);
/*******************************************************************************
 Inserir o elemento pvalue no fim da sequência. Valores de erro: OK, NO_SEQ ou NO_MEM.
*******************************************************************************/

void SeqListDelete (PtSeqList pseq, int pvalue);
/*******************************************************************************
 Eliminar o elemento pvalue da sequência. Valores de erro: OK, NO_SEQ, SEQ_EMPTY
 ou NO_NUMBER.
*******************************************************************************/

int SeqListIsOrdered (PtSeqList pseq);
/*******************************************************************************
 Verificar se a sequência está ordenada por ordem não decrescente. Devolve 1 em
 caso afirmativo e 0 em caso contrário. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqListIsEvenOdd (PtSeqList pseq);
/*******************************************************************************
 Verificar se a sequência é uma sequência alternativamente composta por números
 pares e ímpares ou ímpares e pares. Devolve 1 em caso afirmativo e 0 em caso
 contrário. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqListNumberOfMultiples (PtSeqList pseq, int pvalue);
/*******************************************************************************
 Determinar quantos elementos da sequência são múltiplos de pvalue. Valores de
 erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

void SeqListSmallerBigger (PtSeqList pseq, int * psmall, int * pbig);
/*******************************************************************************
 Determinar o menor e o maior elementos da sequência, que são devolvidos pelos,
 parâmetros de saída, respectivamente, psmall e pbig. Valores de erro: OK,
 NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqListIsPalindromic (PtSeqList pseq);
/*******************************************************************************
 Verificar se a sequência é a mesma quando se percorre em ambos os sentidos, ou
 seja, uma "capicua". Devolve 1 em caso afirmativo e 0 em caso contrário.
 Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

double SeqListAverage (PtSeqList pseq);
/*******************************************************************************
 Determinar a média dos elementos da sequência. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

#endif
