/************ Interface da Pilha Dinâmica Genérica - stack.h ***********/
/********* Interface File of a Generic Dynamic Stack - stack.h *********/

#ifndef _STACK_GENERIC
#define _STACK_GENERIC

/************** Definição do Tipo Ponteiro para uma Pilha **************/
/************** Definition of the Pointer type to a Stack **************/

typedef struct stack *PtStack;
 
/********************* Definição de Códigos de Erro ********************/
/********************* Definition of the Error Codes *******************/

#define	OK		0	/* operação realizada com sucesso - operation with sucess */
#define	NO_STACK	1	/* pilha inexistente - stack does not exist */
#define	NO_MEM		2	/* memória esgotada - out of memory */
#define	NULL_PTR	3	/* ponteiro nulo - null pointer */
#define	STACK_EMPTY	4	/* pilha vazia - empty stack */

/********************* Protótipos dos Subprogramas *********************/
/********************* Prototypes of the Operations ********************/

PtStack StackCreate (unsigned int psize);
/*******************************************************************************
 Cria uma pilha para armazenar elementos com psize bytes. Devolve a referência
 da pilha criada ou NULL, no caso de inexistência de memória ou se psize for nulo.
 
 Creates an empty stack to store elements of psize bytes. Returns a reference to
 the new stack or NULL if there isn't enough memory.
*******************************************************************************/

int StackDestroy (PtStack *pstack);
/*******************************************************************************
 Destrói a pilha pstack e coloca a referência a NULL. Valores de retorno: OK ou NO_STACK.

 Destroys the stack pstack and releases the memory. Returning error codes: OK or NO_STACK.
*******************************************************************************/

int StackPush (PtStack pstack, void *pelem);
/*******************************************************************************
 Coloca pelem no topo da pilha pstack. Valores de retorno: OK, NO_STACK, NO_MEM ou NULL_PTR.

 Stores pelem in the pstack stack top. Returning error codes: OK, NO_STACK,
 NO_MEM or NULL_PTR.
*******************************************************************************/

int StackPop (PtStack pstack, void *pelem);
/*******************************************************************************
 Retira o elemento do topo da pilha pstack. Valores de retorno: OK, NO_STACK,
 NULL_PTR ou STACK_EMPTY.

 Removes pelem from the pstack stack top. Returning error codes: OK, NO_STACK,
 NULL_PTR or STACK_EMPTY.
*******************************************************************************/

int StackTop (PtStack pstack, void *pelem);
/*******************************************************************************
 Copia o elemento do topo da pilha pstack. Valores de retorno: OK, NO_STACK
 NULL_PTR ou STACK_EMPTY.

 Copies pelem from the pstack stack top. Returning error codes: OK, NO_STACK,
 NULL_PTR or STACK_EMPTY.
*******************************************************************************/

int StackIsEmpty (PtStack pstack);
/*******************************************************************************
 Verifica se a pilha pstack está vazia. Valores de retorno: OK, NO_STACK ou STACK_EMPTY.

 Verifies if the pstack stack is empty. Returning error codes: OK, NO_STACK or STACK_EMPTY.
*******************************************************************************/

int StackSize (PtStack pstack, unsigned int *pnelem);
/*******************************************************************************
 Determina e coloca em pnelem o número de elementos armazenados na pilha pstack.
 Valores de retorno: OK, NO_STACK ou NULL_PTR.

 Evaluates and stores in pnelem the size of the pstack stack. Returning error
 codes: OK, NO_STACK or NULL_PTR.
*******************************************************************************/

#endif
