
/*******************************************************************************

 Ficheiro de interface do Tipo de Dados Abstrato Arvore Binaria de Pesquisa (ABP)
 (abp.h). A implementação tem capacidade de múltipla instanciação, sendo
 providenciado um construtor para criar uma arvore vazia. É da responsabilidade
 da aplicação, invocar o destructor, para libertar a memória atribuída ao objecto.
 O módulo providencia um controlo centralizado de erro, disponibilizando uma função
 para obter o último erro ocorrido e uma função para obter uma mensagem de erro
 elucidativa.

 Autor : António Manuel Adrego da Rocha    Data : Maio de 2018

 Interface file of the abstract data type Binary Search Tree ABP (abp.h). The 
 implementation provides a constructor for creating an empty tree. The application
 has the responsibility of calling the destructor to release the dynamic memory 
 allocated to the tree. The data-type has a central control error mechanism, 
 providing operations for obtaining the last error occurred and for obtaining the 
 correspondent message. The data-type has also operations to store and retrieve
 trees from text files. The tree is simply represented by a pointer to its root.

*******************************************************************************/

#ifndef _ABP
#define _ABP

# include "queue.h"

/****************** Definição do Tipo Ponteiro para uma ABP *******************/

typedef struct abpnode *PtABPNode;

/************************ Definição de Códigos de Erro ************************/

#define	OK		0	/* operação realizada com sucesso - operation with success */
#define	NO_ABP		1	/* a ABP não existe - tree does not exist */
#define	NO_MEM		2	/* memória esgotada - out of memory */
#define	NULL_PTR	3	/* ponteiro nulo - null pointer */
#define	ABP_EMPTY	4	/* ABP vazia - empty tree */
#define	REP_ELEM	5	/* já existe o elemento - element already exists in the tree */
#define	NO_ELEM		6	/* o elemento não existe - element does not exist in the tree */
#define	NO_FILE		7	/* o ficheiro não existe - file does not exist */
#define INVALID		8	/* parâmetros inválidos - incorrect parameters */

/*************************** Protótipos das Funções ***************************/

int ABPErrorCode (void);
/*******************************************************************************
 Função que devolve o código do último erro ocorrido.Returns the error code.
*******************************************************************************/

char *ABPErrorMessage (void);
/*******************************************************************************
 Função que devolve uma mensagem esclarecedora da causa do último erro ocorrido.
 Returns an error message.
*******************************************************************************/

PtABPNode ABPCreate (void);
/*******************************************************************************
 Cria uma arvore vazia. Devolve um ponteiro a NULL.

 Creates the empty tree returning a NULL reference.
*******************************************************************************/

void ABPDestroy (PtABPNode *proot);
/*******************************************************************************
 Destrói a arvore e coloca a referência a NULL. Valores de erro: OK ou ABP_EMPTY.
 
 Destroys the tree and releases the memory. Error codes: OK or ABP_EMPTY.
*******************************************************************************/

int ABPEmpty (PtABPNode proot);
/*******************************************************************************
 Verifica se a arvore esta ou nao vazia. Devolve 1 em caso afirmativo e 0 em caso 
 contrário. Valores de erro: OK.

 Verifies if the tree pointed by proot is empty or not. Returns 1 in affirmative
 case and 0 otherwise. Error code: OK.
*******************************************************************************/

void ABPInsertRec (PtABPNode *proot, int pelem);  /* versão recursiva */
void ABPInsertRep (PtABPNode *proot, int pelem);  /* versão repetitiva */
/*******************************************************************************
 Coloca pelem na arvore. Não insere elementos repetidos.
 Valores de erro: OK, NO_MEM ou REP_ELE.

 Inserts pelem in the tree pointed by proot. Error codes: OK, NO_MEM or REP_ELE.
*******************************************************************************/

void ABPDeleteRec (PtABPNode *proot, int pelem);  /* versão recursiva */
void ABPDeleteRep (PtABPNode *proot, int pelem);  /* versão repetitiva */
/*******************************************************************************
 Retira pelem da arvore. Valores de erro: OK ou NO_ELEM.

 Deletes pelem from the tree pointed by proot. Error codes: OK or NO_ELEM.
*******************************************************************************/

int ABPSearch (PtABPNode proot, int pelem);
/*******************************************************************************
 Pesquisa se pelem existe na arvore. Devolve 1 em caso afirmativo e 0 em caso 
 contrário. Valores de erro: OK, ABP_EMPTY ou NO_ELEM.

 Searchs pelem in the tree pointed by proot. Returns 1 if it exists and 0 otherwise.
 Error codes: OK, ABP_EMPTY or NO_ELEM.
*******************************************************************************/

PtABPNode ABPMinRec (PtABPNode proot);  /* pesquisa de mínimo recursiva - minimum recursive search */
PtABPNode ABPMinRep (PtABPNode proot);  /* pesquisa de mínimo repetitiva - minimum repetitive search */
/*******************************************************************************
 Pesquisa o menor elemento da arvore. Valores de erro: OK ou ABP_EMPTY.

 Returns a pointer to the minimum element of the tree pointed by proot.
 Error codes: OK or ABP_EMPTY.
*******************************************************************************/

PtABPNode ABPMaxRec (PtABPNode proot);  /* pesquisa de máximo recursiva - maximum recursive search */
PtABPNode ABPMaxRep (PtABPNode proot); /* pesquisa de máximo repetitiva - maximum repetitive search */
/*******************************************************************************
 Pesquisa o maior elemento da arvore. Valores de erro: OK ou ABP_EMPTY.

 Returns a pointer to the maximum element of the tree pointed by proot.
 Error codes: OK or ABP_EMPTY.
*******************************************************************************/

int ABPElement (PtABPNode pnode);
/*******************************************************************************
 Devolve o elemento armazenado em pnode. Valores de erro: OK ou NULL_PTR.

 Returns the element pointed by pnode. Error codes: OK or NULL_PTR.
*******************************************************************************/

PtABPNode ABPKMin (PtABPNode proot, unsigned int pk);  /* pesquisa de K-mínimo */
/*******************************************************************************
 Pesquisa o K-menor elemento da arvore. Valores de erro: OK, ABP_EMPTY ou NO_ELEM.

 Searchs the Kth minimal element of the tree pointed by proot returning a pointer
 to its node. Error codes: OK, ABP_EMPTY or NO_ELEM.
*******************************************************************************/

unsigned int ABPSize (PtABPNode proot);
/*******************************************************************************
 Calcula o numero de nos da arvore. Valores de erro: OK.

 Calculates the number of elements stores in the tree pointed by proot. Error code: OK.
*******************************************************************************/

unsigned int ABPHeight (PtABPNode proot);
/*******************************************************************************
 Calcula a altura da arvore. Valores de erro: OK.

 Calculates the height of the tree pointed by proot. Error code: OK.
*******************************************************************************/

PtABPNode ABPCreateFile (char *pnomef);
/*******************************************************************************
 Cria uma arvore a partir do ficheiro pnomef. Devolve a referência da arvore criada
 ou NULL, caso não consiga criar a arvore por falta de memória. Valores de erro: 
 OK, NO_MEM ou NO_FILE.

 Creates a tree from a text file. Returns a reference to the new tree or NULL if
 there isn't enough memory. Error codes: OK, NO_MEM or NO_FILE.
*******************************************************************************/

void ABPStoreFile (PtABPNode proot, char *nomef);
/*******************************************************************************
 Armazena a arvore, caso ela exista, no ficheiro pnomef. O ficheiro tem na
 primeira linha o número de elementos da arvore, seguido dos elementos, um por
 linha. Valores de erro: OK, ABP_EMPTY ou NO_FILE.

 Stores the tree pointed by proot in text file pfname. The first line of the file
 constains the number of elements of the tree, followed by the emenets one per line.
 Error codes: OK, ABP_EMPTY or NO_FILE. 
*******************************************************************************/

void ABPPreOrderRec (PtABPNode proot);  /* travessia recursiva - recursive traversal */
void ABPPreOrderRep (PtABPNode proot);  /* travessia repetitiva - repetitive traversal */
/*******************************************************************************
 Lista a arvore em pre-ordem. Valores de erro: OK ou ABP_EMPTY.

 Lists the tree using a pre-order traversal. Error codes: OK or ABP_EMPTY.
*******************************************************************************/

void ABPInOrderRec (PtABPNode proot);  /* travessia recursiva - recursive traversal */
void ABPInOrderRep (PtABPNode proot);  /* travessia repetitiva - repetitive traversal */
/*******************************************************************************
 Lista a arvore em ordem (versão recursiva). Valores de erro: OK ou ABP_EMPTY.

 Lists the tree using a in-order traversal. Error codes: OK or ABP_EMPTY.
*******************************************************************************/

void ABPPostOrderRec (PtABPNode proot);  /* travessia recursiva - recursive traversal */
void ABPPostOrderRep (PtABPNode proot);  /* travessia repetitiva - repetitive traversal */
/*******************************************************************************
 Lista a arvore em pos-ordem. Valores de erro: OK ou ABP_EMPTY.

 Lists the tree using a post-order traversal. Error codes: OK or ABP_EMPTY.
*******************************************************************************/

void ABPByLevel (PtABPNode proot);
/*******************************************************************************
 Lista a arvore por niveis. Valores de erro: OK, ABP_EMPTY ou NO_MEM.

 Lists the tree by levels. Error codes: OK, ABP_EMPTY or NO_MEM.
*******************************************************************************/

PtABPNode ABPBalance (PtABPNode proot);
/*******************************************************************************
 Cria uma uma nova arvore balanceada. Devolve a referência da ABP criada ou NULL
 em caso de inexistência de memória. Valores de erro: OK, ABP_EMPTY ou NO_MEM.

 Creates a new balanced tree from the tree pointed by proot. Returns a reference
 to the new tree or NULL if there isn't enough memory. Error codes: OK, ABP_EMPTY or NO_MEM.
*******************************************************************************/

void ABPDisplay (PtABPNode proot);
/*******************************************************************************
 Imprime no monitor os elementos da arvore de forma hierárquica.
 Valores de erro: OK ou ABP_EMPTY.

 Display hierarchically the tree pointed by proot. Error codes: OK or ABP_EMPTY.
*******************************************************************************/

PtABPNode ABPCopy (PtABPNode proot);
/*******************************************************************************
 Copia a arvore. Devolve a referência da ABP criada ou NULL em caso de
 inexistência de memória. Valores de erro: OK ou NO_MEM.

 Creates a copy tree of the tree pointed by proot. Returns a reference to the new
 tree or NULL if there isn't enough memory. Error codes: OK or NO_MEM.
*******************************************************************************/

/* trabalho da aula 9 */

void ABPDeleteMin (PtABPNode *proot);
/*******************************************************************************
 Elimina o menor elemento da arvore. Valores de erro: OK ou ABP_EMPTY.
*******************************************************************************/

void ABPDeleteMax (PtABPNode *proot);
/*******************************************************************************
 Elimina o maior elemento da arvore. Valores de erro: OK ou ABP_EMPTY.
*******************************************************************************/

PtABPNode ABPFloorValue (PtABPNode proot, int pvalue);
/*******************************************************************************
 Obtem um ponteiro para o nó do elemento pvalue ou, caso ele não exista, para o 
 nó do maior dos elementos menores do que ele. Se esse nó não existir, devolve o
 ponteiro nulo. Valores de erro: OK, ABP_EMPTY ou NO_ELEM.
*******************************************************************************/

PtABPNode ABPCeilValue (PtABPNode proot, int pvalue);
/*******************************************************************************
 Obtem um ponteiro para o nó do elemento pvalue ou, caso ele não exista, para o 
 nó do menor dos elementos maiores do que ele. Se esse nó não existir, devolve o
 ponteiro nulo. Valores de erro: OK, ABP_EMPTY ou NO_ELEM.
*******************************************************************************/

int ABPRank (PtABPNode proot, int pvalue);
/*******************************************************************************
 Determina o número de elementos inferiores a pvalue. Valores de erro: OK ou 
 ABP_EMPTY.
*******************************************************************************/

void ABPElements (PtABPNode proot, PtQueue pqueue, int plow, int phigh);
/*******************************************************************************
 Regista ordenadamente, numa fila de inteiros já existente e referenciada pelo 
 ponteiro pqueue, os elementos da árvore pertencentes ao intervalo fechado
 [plow, phigh]. Valores de erro: OK, ABP_EMPTY, NULL_PTR, INVALID ou NO_MEM.
*******************************************************************************/

int ABPIsEvenOdd (PtABPNode proot);
/*******************************************************************************
 Verifica se a arvore é alternadamente composta por números pares e ímpares ou
 ímpares e pares. Devolve 1 em caso afirmativo e 0 em caso contrário. Valores de
 erro: OK ou ABP_EMPTY.
*******************************************************************************/

#endif
