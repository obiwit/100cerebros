/*******************************************************************************
 Ficheiro de interface do Tipo de Dados Abstracto SEQ_ARRAY (seqarray.h). Este
 tipo de dados serve para armazenar e processar sequências de números inteiros.
 A sequência é armazenada num array - cuja capacidade é definida na invocação do
 construtor -, e tem associado o número de elementos efectivamente armazenados.
 A implementação providencia um construtor para criar uma sequência vazia com
 a dimensão pretendida. É da responsabilidade da aplicação, invocar o destrutor,
 para libertar a memória atribuída ao objecto. O módulo providencia um controlo
 centralizado de erro, disponibilizando funções para: consultar o último erro
 ocorrido; obter uma mensagem de erro elucidativa; e limpar o erro. Também são
 disponibilizadas funções para: criar uma sequência a partir de um ficheiro de
 texto e armazenar uma sequência num ficheiro de texto. Este ficheiro tem na
 primeira linha a dimensão do array e o número de elementos armazenados, seguido
 dos elementos, um por linha.
 
 Autor : António Manuel Adrego da Rocha    Data : Março de 2018
*******************************************************************************/

#ifndef _SEQ_ARRAY
#define _SEQ_ARRAY

/*********** Definição do Tipo Ponteiro para a sequência de Números ***********/

typedef struct seqarray *PtSeqArray;

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

/************************* Protótipos dos Subprogramas ************************/

void SeqArrayClearError (void);
/*******************************************************************************
 Inicialização do erro.
*******************************************************************************/

int SeqArrayError (void);
/*******************************************************************************
 Indicação do código de erro ocorrido na última operação.
*******************************************************************************/

char *SeqArrayErrorMessage (void);
/*******************************************************************************
 Obtenção da mensagem esclarecedora da causa do erro ocorrido.
*******************************************************************************/

PtSeqArray SeqArrayCreate (unsigned int pdim);
/*******************************************************************************
 Criação de uma sequência indicando a sua capacidade de armazenamento. Devolve a
 referência da sequência criada ou NULL, caso não exista  memória.
 Valores de erro: OK, BAD_SIZE ou NO_MEM.
*******************************************************************************/

void SeqArrayDestroy (PtSeqArray *pseq);
/*******************************************************************************
 Destruição de uma sequência de números. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

PtSeqArray SeqArrayCopy (PtSeqArray pseq);
/*******************************************************************************
 Cópia de uma sequência. Valores de erro: OK, NO_SEQ ou NO_MEM.
*******************************************************************************/

PtSeqArray SeqArrayFileCreate (char * pfname);
/*******************************************************************************
 Criação de uma sequência a partir do ficheiro de texto pfname. Devolve a
 referência da sequência criada ou NULL, caso não consiga criar a sequência.
 Valores de erro: OK, NO_FILE, BAD_SIZE ou NO_MEM.
*******************************************************************************/

void SeqArrayStoreFile (PtSeqArray pseq, char *pfname);
/*******************************************************************************
 Armazena a sequência pseq, caso ela exista e não esteja vazia, no ficheiro pfname.
 Valores de erro: OK, NO_SEQ, SEQ_EMPTY ou NO_FILE.
*******************************************************************************/

int  SeqArrayGetDimension (PtSeqArray pseq);
/*******************************************************************************
 Determinar a capacidade de armazenamento da sequência. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

int SeqArrayGetSize (PtSeqArray pseq);
/*******************************************************************************
 Determinar o número de elementos da sequência. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

int SeqArrayGetElement (PtSeqArray pseq, int pindex);
/*******************************************************************************
 Consultar o elemento armazenado na posição pindex da sequência. A posição tanto pode
 ser indicada por um valor: positivo (0<=pindex<size) para acesso do início para o
 fim da sequência; ou negativo (-1<=pindex<=-size) para acesso do fim para o início
 da sequência. Valores de erro: OK, NO_SEQ ou BAD_INDEX.
*******************************************************************************/

void SeqArraySetElement (PtSeqArray pseq, int pindex, int pvalue);
/*******************************************************************************
 Modificar o elemento armazenado na posição pindex da sequência. A posição tanto
 pode ser indicada por um valor: positivo (0<=pindex<size) para acesso do início
 para o fim da sequência; ou negativo (-1<=pindex<=-size) para acesso do fim para
 o início da sequência. Valores de erro: OK, NO_SEQ ou BAD_INDEX.
*******************************************************************************/

int SeqArrayEquals (PtSeqArray pseq1, PtSeqArray pseq2);
/*******************************************************************************
 Comparação de igualdade de duas sequências, considerando sequências iguais quando
 elas têm os mesmos elementos pela mesma ordem. Devolve 1 em caso afirmativo e 0 em
 caso contrário. Valores de erro: OK ou NO_SEQ.
*******************************************************************************/

void SeqArrayInsert (PtSeqArray pseq, int pvalue);
/*******************************************************************************
 Inserir o elemento pvalue no fim da sequência. Valores de erro: OK, NO_SEQ ou
 SEQ_FULL.
*******************************************************************************/

void SeqArrayDelete (PtSeqArray pseq, int pvalue);
/*******************************************************************************
 Eliminar o elemento pvalue da sequência. Valores de erro: OK, NO_SEQ, SEQ_EMPTY
 ou NO_NUMBER.
*******************************************************************************/

void SeqArrayDuplicate (PtSeqArray pseq);
/*******************************************************************************
 Duplicar a dimensão da sequência caso ela não esteja vazia e haja memória.
 Valores de erro: OK, NO_SEQ, SEQ_EMPTY ou NO_MEM.
*******************************************************************************/

int SeqArrayIsOrdered (PtSeqArray pseq);
/*******************************************************************************
 Verificar se a sequência está ordenada por ordem não decrescente. Devolve 1 em
 caso afirmativo e 0 em caso contrário. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqArrayIsEvenOdd (PtSeqArray pseq);
/*******************************************************************************
 Verificar se a sequência é uma sequência alternativamente composta por números
 pares e ímpares ou ímpares e pares. Devolve 1 em caso afirmativo e 0 em caso
 contrário. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqArrayNumberOfMultiples (PtSeqArray pseq, int pvalue);
/*******************************************************************************
 Determinar quantos elementos da sequência são múltiplos de pvalue. Valores de
 erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

void SeqArraySmallerBigger (PtSeqArray pseq, int * psmall, int * pbig);
/*******************************************************************************
 Determinar o menor e o maior elementos da sequência, que são devolvidos pelos,
 parâmetros de saída, respectivamente, psmall e pbig. Valores de erro: OK,
 NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

int SeqArrayIsPalindromic (PtSeqArray pseq);
/*******************************************************************************
 Verificar se a sequência é a mesma quando se percorre em ambos os sentidos, ou
 seja, uma "capicua". Devolve 1 em caso afirmativo e 0 em caso contrário.
 Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

double SeqArrayAverage (PtSeqArray pseq);
/*******************************************************************************
 Determinar a média dos elementos da sequência. Valores de erro: OK, NO_SEQ ou SEQ_EMPTY.
*******************************************************************************/

#endif
