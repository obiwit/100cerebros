/*******************************************************************************

 Ficheiro de interface do Tipo de Dados Abstrato Fila com Prioridade (Priority
 Queue - PQUEUE) (pqueue.h) orientada aos máximos, baseada num amontoado binário,
 para armazenar números inteiros. A implementação tem capacidade de múltipla
 instanciação, sendo providenciado um construtor para criar uma fila com prioridade
 vazia. É da responsabilidade da aplicação, invocar o destructor, para libertar
 a memória atribuída ao objecto. O módulo providencia um controlo de erro no 
 retorno das operações. 

 Autor : António Manuel Adrego da Rocha    Data : Maio de 2017

 Interface file of the abstract data type Priority Queue - PQUEUE (pqueue.h), basead
 on a binary heap, and that stores integers. The implementation provides a constructor
 for creating an empty priority queue. The application has the responsibility of 
 calling the destructor to release the dynamic memory allocated to the queue. The
 data-type has a control error mechanism, basead on the return value of the functions.
 The data-type has also operations to store and retrieve priority queues from text files. 

*******************************************************************************/

#ifndef _PQUEUE_HEAP
#define _PQUEUE_HEAP

/******* Definição do Tipo Ponteiro para uma Fila com Prioridade *******/

typedef struct pqueue *PtPQueue;

/******************** Definição de Códigos de Erro ********************/

#define	OK            0  /* operação realizada com sucesso - operation with success */
#define	NO_PQUEUE     1  /* fila com prioridade inexistente - priority queue does not exist */
#define	NO_MEM        2  /* memória esgotada - out of memory */
#define	NULL_PTR      3  /* ponteiro nulo - null pointer */
#define	PQUEUE_EMPTY  4  /* fila com prioridade vazia - priority queue empty */
#define	PQUEUE_FULL   5  /* fila com prioridade cheia - priority queue full */
#define	NO_ELEM       6  /* elemento inexistente na fila com prioridade - element does not exist in the priority queue */
#define	WRONG_VALUE   7  /* novo valor do elemento incorrecto - new value of the element incorrect */
#define	NO_FILE       8  /* ficheiro inexistente - file does not exist */

/********************* Protótipos dos Subprogramas ********************/

PtPQueue PQueueCreate (unsigned int pdim);
/*******************************************************************************
 Cria uma fila com prioridade com capacidade para armazenar pdim elementos inteiros.
 Devolve a referência da fila com prioridade criada ou NULL em caso de inexistência
 de memória ou se pdim for nulo.

 Creates the empty priority queue with size pdim to store integers. Returns a reference
 to the new priority queue or NULL if there isn't enough memory or if pdim is zero.
*******************************************************************************/

int PQueueDestroy (PtPQueue *ppqueue);
/*******************************************************************************
 Destrói a fila com prioridade ppqueue e coloca a referência a NULL. Valores de
 retorno: OK ou NO_PQUEUE.

 Destroys the priority queue ppqueue and releases the memory. Returning error 
 codes: OK or NO_PQUEUE.
*******************************************************************************/

int PQueueInsert (PtPQueue ppqueue, int pelem);
/*******************************************************************************
 Coloca pelem na fila com prioridade ppqueue. Valores de retorno: OK, NO_PQUEUE
 ou PQUEUE_FULL.

 Stores pelem in the priority queue ppqueue. Returning error codes: OK, NO_PQUEUE
 or PQUEUE_FULL.
*******************************************************************************/

int PQueueDeleteMax (PtPQueue ppqueue, int *pelem);
/*******************************************************************************
 Retira o maior elemento da fila com prioridade ppqueue. Valores de retorno: OK,
 NO_PQUEUE, PQUEUE_EMPTY ou NULL_PTR.

 Removes the maximum element from the priority queue ppqueue. Returning error 
 codes: OK, NO_PQUEUE, PQUEUE_EMPTY or NULL_PTR
*******************************************************************************/

int PQueueIncrease (PtPQueue ppqueue, int pelem, int pval);
/*******************************************************************************
 Promove o elemento pelem da fila com prioridade ppqueue, caso ele exista, para 
 o novo valor valor pval, que tem de ser maior do que o valor antigo. Valores de
 retorno: OK, NO_PQUEUE, PQUEUE_EMPTY, WRONG_VALUE ou NO_ELEM.

 Replaces pelem, if it exists in the priority queue ppqueue, by pval, that must 
 be bigger than the old value. Returning error codes: OK, NO_PQUEUE, PQUEUE_EMPTY,
 WRONG_VALUE or NO_ELEM.
*******************************************************************************/

int PQueueDecrease (PtPQueue ppqueue, int pelem, int pval);
/*******************************************************************************
 Despromove o elemento pelem da fila com prioridade ppqueue, caso ele exista, para 
 o novo valor valor pval, que tem de ser menor do que o valor antigo. Valores de
 retorno: OK, NO_PQUEUE, PQUEUE_EMPTY, WRONG_VALUE ou NO_ELEM.

 Replaces pelem, if it exists in the priority queue ppqueue, by pval, that must 
 be smaller than the old value. Returning error codes: OK, NO_PQUEUE, PQUEUE_EMPTY,
 WRONG_VALUE or NO_ELEM.
*******************************************************************************/

int PQueueDimension (PtPQueue ppqueue, unsigned int *pdim);
/*******************************************************************************
 Determina e coloca em pdim a capacidade de armazenamento da fila com prioridade  
 ppqueue. Valores de retorno: OK, NO_PQUEUE ou NULL_PTR.

 Evaluates and stores in pdim the capacity of the priority queue ppqueue.
 Returning error codes: OK, NO_PQUEUE or NULL_PTR.
*******************************************************************************/

int PQueueSize (PtPQueue ppqueue, unsigned int *pnelem);
/*******************************************************************************
 Determina e coloca em pnelem o número de elementos armazenados na fila com 
 prioridade ppqueue. Valores de retorno: OK, NO_PQUEUE, NULL_PTR ou PQUEUE_EMPTY.

 Evaluates and stores in pnelem the size of the priority queue ppqueue. Returning
 error codes: OK, NO_PQUEUE, NULL_PTR or PQUEUE_EMPTY.
*******************************************************************************/

int PQueueElement (PtPQueue ppqueue, int *pelem, int ppos);
/*******************************************************************************
 Copia o elemento que se encontra na posição ppos da fila com prioridade ppqueue.
 Valores de retorno: OK, NO_PQUEUE, PQUEUE_EMPTY ou NO_ELEM.

 Copies the element stored in the position ppos of the priority queue ppqueue.
 Returning error codes: OK, NO_PQUEUE, PQUEUE_EMPTY or NO_ELEM.
*******************************************************************************/

int PQueueIsEmpty (PtPQueue ppqueue);
/*******************************************************************************
 Verifica se a fila com prioridade ppqueue está vazia. Valores de retorno: OK, 
 NO_PQUEUE ou PQUEUE_EMPTY.

 Verifies if the priority queue ppqueue is empty. Returning error codes: OK, 
 NO_PQUEUE or PQUEUE_EMPTY.
*******************************************************************************/

int PQueueStoreFile (PtPQueue ppqueue, char *pnomef);
/*******************************************************************************
 Armazena a fila com prioridade ppqueue, caso ela exista, no ficheiro pnomef. O 
 ficheiro tem na primeira linha a capacidade de armazenamento da fila com 
 prioridade, na segunda linha o número de elementos armazenados, seguido dos
 elementos, um por linha. Valores de erro: OK, NO_PQUEUE, PQUEUE_EMPTY ou NO_FILE.

 Stores the priority ppqueue ppqueue in text file pfname. The first line of the file
 contains the capacity, the second line the number of elements, followed by the
 elements one per line. Error codes: OK, NO_PQUEUE, PQUEUE_EMPTY or NO_FILE. 
*******************************************************************************/

PtPQueue PQueueCreateFile (char *pnomef);
/*******************************************************************************
 Recupera a fila com pritoridade do ficheiro pnomef. Devolve a  referência da
 fila com prioridade criada ou NULL, em caso de inexistência de memória ou de 
 inexistência do ficheiro.

 Retrieves the priority from text file pfname. Returns a reference to the 
 new priority queue or NULL if there isn't enough memory or if the file does not exist.
*******************************************************************************/

#endif
