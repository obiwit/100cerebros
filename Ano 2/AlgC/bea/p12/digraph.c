// Beatriz M B Ribeiro, 79857

/************ Implementação do Dígrafo Dinâmico - digraph.c ************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>

#include "digraph.h"	/* interface do dígrafo */
#include "queue.h"  /* interface da fila */

/************** Definição do Estrutura de Dados do Dígrafo *************/

typedef struct binode *PtBiNode;
typedef struct vertex *PtVertex;
typedef struct edge *PtEdge;

struct binode	/* definição de um binó genérico - definition of the generic double linked list node */
{
	unsigned int Number;	/* número do vértice ou da aresta - number od the vertes or edge */
	PtBiNode PtPrev;	/* ponteiro para o nó anterior da lista - pointer to preview list node */
	PtBiNode PtNext;	/* ponteiro para o nó seguinte da lista - pointer to next list node */
	PtBiNode PtAdj;	/* ponteiro para a lista de adjacências - pointer to the adjacency list of edges */
	void *PtElem;	/* ponteiro para o elemento da lista - pointer to the element (vertex or edge) of the list */
	unsigned int Visit;	/* marcação de vértice visitado - field for marquing the visited vertex */
};

struct vertex	/* definição de um vértice - definition of the vertex */
{
	unsigned int InDeg;	/* semigrau incidente do vértice - in degree */
	unsigned int OutDeg;	/* semigrau emergente do vértice - out degree */
};

struct edge	/* definição de uma aresta - definition of the edge */
{
	int Cost;	/* custo da aresta - edge cost */
};

struct digraph	/* definição do dígrafo - definition of the digraph/graph */
{
	PtBiNode Head;	/* ponteiro para a cabeça do dígrafo - pointer to digraph/graph head of the vertexes list */
	unsigned int NVertexes;	/* número de vértices do dígrafo - number of vertexes */
	unsigned int NEdges;	/* número de arestas do dígrafo - number of edges */
	unsigned int Type;	/* tipo dígrafo (1) / grafo (0) - type of digraph (1) / graph (0) */
};

/***************** Protótipos dos Subprogramas Internos ****************/

static PtVertex CreateVertex (void);
static PtEdge CreateEdge (int);
static PtBiNode CreateBiNode (unsigned int);
static void DestroyBiNode (PtBiNode *);
static PtBiNode InPosition (PtBiNode, unsigned int);
static PtBiNode OutPosition (PtBiNode, unsigned int);
static int InsertEdge (PtBiNode, PtBiNode, int);
static void DeleteEdge (PtBiNode, PtBiNode);

/************************** Função Auxiliar ****************************/
static int isAdjacent(PtBiNode pNode, int targetNodeNumber);

/********************** Definição dos Subprogramas *********************/

PtDigraph Create (unsigned int ptype)
{
	PtDigraph Digraph;

	if ((Digraph = (PtDigraph) malloc (sizeof (struct digraph))) == NULL)
		return NULL;	/* alocar memória para o dígrafo */
	Digraph->Head = NULL;	/* inicializa a cabeça do dígrafo */
	Digraph->NVertexes = 0;	/* inicializa o número de vértices */
	Digraph->NEdges = 0;	/* inicializa o número de arestas */
	Digraph->Type = ptype;	/* inicializa o tipo dígrafo/grafo */

	return Digraph;	/* devolve a referência do dígrafo criado */
}

int Destroy (PtDigraph *pdig)
{
	PtDigraph TmpDigraph = *pdig; PtBiNode Vertex, Edge;

	if (TmpDigraph == NULL) return NO_DIGRAPH;

	while (TmpDigraph->Head != NULL)	/* libertar a memória dos vértices */
	{
		Vertex = TmpDigraph->Head;	/* vértice da cabeça do dígrafo */
		TmpDigraph->Head = TmpDigraph->Head->PtNext;	/* atualizar cabeça */

		while (Vertex->PtAdj != NULL)	/* libertar a memória das arestas */
		{
			Edge = Vertex->PtAdj;	/* cabeça da lista das arestas */
			Vertex->PtAdj = Vertex->PtAdj->PtNext;	/* atualizar cabeça */
			free (Edge->PtElem);	/* libertar a memória da aresta */
			free (Edge);	/* libertar o binó da lista de arestas */
		}

		free (Vertex->PtElem);	/* libertar a memória do vértice */
		free (Vertex);	/* libertar o binó da lista de vértices */
	}

	free (TmpDigraph);	/* libertar a memória ocupada pelo dígrafo */
	*pdig = NULL;	/* colocar a referência do dígrafo a NULL */

	return OK;
}

PtDigraph Copy (PtDigraph pdig)
{
  PtDigraph Copy; PtBiNode Vert, PEdge; PtEdge Edge;

  if (pdig == NULL) return NULL;

  Copy = Create (pdig->Type);

  /* inserir os vértices */
  for (Vert = pdig->Head; Vert != NULL; Vert = Vert->PtNext)
    if (InVertex (Copy, Vert->Number)) { Destroy (&Copy); return NULL; }

  /* inserir as arestas */
  for (Vert = pdig->Head; Vert != NULL; Vert = Vert->PtNext)
    for (PEdge = Vert->PtAdj; PEdge != NULL; PEdge = PEdge->PtNext)
    {
      Edge = (PtEdge) PEdge->PtElem;
      if (InEdge (Copy, Vert->Number, PEdge->Number, Edge->Cost))
      { Destroy (&Copy); return NULL; }
    }

  return Copy;  /* devolver a referência do Digrafo criado */
}

int InVertex (PtDigraph pdig, unsigned int pv)
{
	PtBiNode Insert, Node;	/* posição de inserção e novo vértice */

	if (pdig == NULL) return NO_DIGRAPH;

					/* criar o binó e o vértice */
	if ((Node = CreateBiNode (pv)) == NULL) return NO_MEM;
	if ((Node->PtElem = CreateVertex ()) == NULL)
	{ free (Node); return NO_MEM; }

					/* determinar posição de colocação e inserir o vértice */
	if (pdig->Head == NULL || pdig->Head->Number > pv)
	{				/* inserção à cabeça do dígrafo */
		Node->PtNext = pdig->Head; pdig->Head = Node;
		if (Node->PtNext != NULL) Node->PtNext->PtPrev = Node;
	}
	else
	{				/* inserção à frente do nó de inserção */
		if ((Insert = InPosition (pdig->Head, pv)) == NULL)
		{			/* inserção sem sucesso, porque o vértice já existe */
			DestroyBiNode (&Node); return REP_VERTEX;
		}
		Node->PtNext = Insert->PtNext;
		if (Node->PtNext != NULL) Node->PtNext->PtPrev = Node;
		Node->PtPrev = Insert; Insert->PtNext = Node;
	}

	pdig->NVertexes++;	/* atualizar o número de vértices */
	return OK;
}

int OutVertex (PtDigraph pdig, unsigned int pv)
{
	PtBiNode Vertex, Edge, Delete;	/* posição de remoção do vértice */

	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;

					/* determinar posição de remoção do vértice */
	if ((Delete = OutPosition (pdig->Head, pv)) == NULL)
		return NO_VERTEX;

	while (Delete->PtAdj != NULL)	/* remover a lista de adjacências */
	{	/* atualizar semigrau incidente da cabeça da lista das arestas */
		((PtVertex) Delete->PtAdj->PtAdj->PtElem)->InDeg--;
		Edge = Delete->PtAdj;
		Delete->PtAdj = Delete->PtAdj->PtNext;	/* atualizar cabeça */
		DestroyBiNode (&Edge);	/* destruir binó com aresta */
		pdig->NEdges--;	/* atualizar o número de arestas */
	}
					/* remoção do vértice */
	if (Delete == pdig->Head)
	{				/* remoção do vértice da cabeça do dígrafo */
		if (Delete->PtNext != NULL) Delete->PtNext->PtPrev = NULL;
		pdig->Head = Delete->PtNext;
	}
	else
	{				/* remoção de outro vértice do dígrafo */
		Delete->PtPrev->PtNext = Delete->PtNext;
		if (Delete->PtNext != NULL) Delete->PtNext->PtPrev = Delete->PtPrev;
	}
	DestroyBiNode (&Delete);	/* destruir binó com vértice */
	pdig->NVertexes--;	/* atualizar o número de vértices */

					/* remover as arestas incidentes */
	Vertex = pdig->Head;	/* vértice da cabeça do dígrafo */
	while (Vertex != NULL)
	{				/* remover a aresta deste vértice para o vértice removido */
		if ((Edge = OutPosition (Vertex->PtAdj, pv)) != NULL)
		{
			if (Edge == Vertex->PtAdj)
			{		/* remoção da aresta da cabeça da lista das arestas */
				if (Edge->PtNext != NULL) Edge->PtNext->PtPrev = NULL;
				Vertex->PtAdj = Vertex->PtAdj->PtNext;
			}
			else
			{		/* remoção de outra aresta da lista das arestas */
				Edge->PtPrev->PtNext = Edge->PtNext;
				if (Edge->PtNext != NULL) Edge->PtNext->PtPrev = Edge->PtPrev;
			}
			((PtVertex) Vertex->PtElem)->OutDeg--;	/* atualizar semigrau */
			DestroyBiNode (&Edge);	/* destruir binó com aresta */
			if (pdig->Type) pdig->NEdges--;	/* atualizar o número de arestas */
		}
		Vertex = Vertex->PtNext;	/* vértice seguinte do dígrafo */
	}
	return OK;
}

int InEdge (PtDigraph pdig, unsigned int pv1, unsigned int pv2, int pcost)
{
	PtBiNode V1, V2;	/* posição dos vértices adjacentes */

	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return NO_VERTEX;	/* sem vértices */
	if (pv1 == pv2) return REP_EDGE;	/* lacetes proibidos */

			/* verificar se os vértices existem e se a aresta já existe */
	if ((V1 = OutPosition (pdig->Head, pv1)) == NULL)
		return NO_VERTEX;	/* vértice emergente inexistente */
	if (V1->PtAdj != NULL && OutPosition (V1->PtAdj, pv2) != NULL)
		return REP_EDGE;	/* aresta existente */
	if ((V2 = OutPosition (pdig->Head, pv2)) == NULL)
		return NO_VERTEX;	/* vértice incidente inexistente */

					/* inserir a aresta v1-v2 */
	if (InsertEdge (V1, V2, pcost) != OK) return NO_MEM;
	if (!pdig->Type)	/* se é grafo, inserir também a aresta v2-v1 */
		if (InsertEdge (V2, V1, pcost) != OK)
		{		/* se a aresta v2-v1 não foi inserida, remover a aresta v1-v2 */
			DeleteEdge (V1, V2); return NO_MEM;
		}

	pdig->NEdges++;	/* incrementar o número de arestas */
	return OK;
}

int OutEdge (PtDigraph pdig, unsigned int pv1, unsigned int pv2)
{
	PtBiNode V1, V2;	/* posição dos vértices adjacentes */

	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return NO_VERTEX;
	if (pdig->NEdges == 0 || pv1 == pv2) return NO_EDGE;

			/* verificar se os vértices e a aresta existem */
	if ((V1 = OutPosition (pdig->Head, pv1)) == NULL)
		return NO_VERTEX;	/* vértice emergente inexistente */
	if (V1->PtAdj == NULL || OutPosition (V1->PtAdj, pv2) == NULL)
		return NO_EDGE;	/* aresta inexistente */
	if ((V2 = OutPosition (pdig->Head, pv2)) == NULL)
		return NO_VERTEX;	/* vértice incidente inexistente */

 
	DeleteEdge (V1, V2);	/* remover a aresta v1-v2 */
					/* se é grafo, remover também a aresta v2-v1 */
	if (!pdig->Type) DeleteEdge (V2, V1);

	pdig->NEdges--;	/* decrementar o número de arestas */
	return OK;
}

int Type (PtDigraph pdig, unsigned int *pty)
{
	if (pdig == NULL) return NO_DIGRAPH;
	if (pty == NULL) return NULL_PTR;

	*pty = pdig->Type;
	return OK;
}

int VertexNumber (PtDigraph pdig, unsigned int *pnv)
{
	if (pdig == NULL) return NO_DIGRAPH;
	if (pnv == NULL) return NULL_PTR;

	*pnv = pdig->NVertexes;
	return OK;
}

int EdgeNumber (PtDigraph pdig, unsigned int *pne)
{
	if (pdig == NULL) return NO_DIGRAPH;
	if (pne == NULL) return NULL_PTR;

	*pne = pdig->NEdges;
	return OK;
}

int GetVertexList (PtDigraph pdig, unsigned int ppos, char *pvlist)
{
	PtBiNode PVert, PEdge; PtEdge Edge; char NodeList[20];

	if (pdig == NULL) return NO_DIGRAPH;
	if (ppos > pdig->NVertexes) return NO_VERTEX;
	if (pvlist == NULL) return NULL_PTR;

	ppos--;
	for (PVert = pdig->Head; ppos > 0; ppos--) PVert = PVert->PtNext;

	sprintf (NodeList, "Vertice %2d > ", PVert->Number);
	strcpy (pvlist, NodeList);

	for (PEdge = PVert->PtAdj; PEdge != NULL; PEdge = PEdge->PtNext)
	{
		sprintf (NodeList, "%2d (", PEdge->Number);
		strcat (pvlist, NodeList);
		Edge = (PtEdge) PEdge->PtElem;
		sprintf (NodeList, "%2d) ", Edge->Cost);
		strcat (pvlist, NodeList);
	}

	return OK;
}

PtDigraph CreateFile (char *pfilename)
{
  PtDigraph Digraph; FILE *PtF;
  unsigned int Type, NVertexes, NEdges, V, E, Vert1, Vert2; int Status, Cost;

  /* abertura com validação do ficheiro para leitura */
  if ( (PtF = fopen (pfilename, "r")) == NULL) return NULL;

  /* leitura do tipo de digrafo/grafo e criação do vazio */
  fscanf (PtF, "%d", &Type); fscanf (PtF, "%*c");

  /* leitura do número de vértices e de arestas do ficheiro e criação do digrafo vazio */
  fscanf (PtF, "%d %d", &NVertexes, &NEdges); fscanf (PtF, "%*c");

  if ((Digraph = Create (Type)) == NULL) { fclose (PtF); return NULL; }

  /* leitura dos vértices do ficheiro */
  for (V = 0; V < NVertexes ; V++)
    {
      fscanf (PtF, "%d", &Vert1); fscanf (PtF, "%*c");
      if (InVertex (Digraph, Vert1))
      { Destroy (&Digraph); fclose (PtF); return NULL; }
    }

  /* leitura das arestas do ficheiro */
  for (E = 0; E < NEdges ; E++)
    {
      Status = fscanf (PtF, "%d %d %d", &Vert1, &Vert2, &Cost); fscanf (PtF, "%*c");
      if (Status != 3)
      { Destroy (&Digraph); fclose (PtF); return NULL; }

      if (InEdge (Digraph, Vert1, Vert2, Cost))
      { Destroy (&Digraph); fclose (PtF); return NULL; }
    }

  fclose (PtF);  /* fecho do ficheiro */

  return Digraph;  /* devolve o digrafo criado */
}

int StoreFile (PtDigraph pdig, char *pfilename)
{
  FILE *PtF; PtBiNode Vert, PEdge; PtEdge Edge;

  if (pdig == NULL) return NO_DIGRAPH;

  /* abertura com validação do ficheiro para escrita */
  if ((PtF = fopen (pfilename, "w")) == NULL) return NO_FILE;

  /* escrita do tipo do digrafo no ficheiro */
  fprintf (PtF, "%u\n", pdig->Type);

  /* escrita do número de vértices e de arestas do digrafo no ficheiro */
  fprintf (PtF, "%u\t%u\n", pdig->NVertexes, pdig->NEdges);

  /* escrita dos vértices do digrafo no ficheiro */
  for (Vert = pdig->Head; Vert != NULL; Vert = Vert->PtNext)
    fprintf (PtF, "%u\n", Vert->Number);

  /* escrita das arestas do digrafo no ficheiro */
  for (Vert = pdig->Head; Vert != NULL; Vert = Vert->PtNext)
    for (PEdge = Vert->PtAdj; PEdge != NULL; PEdge = PEdge->PtNext)
    {
      Edge = (PtEdge) PEdge->PtElem;
      fprintf (PtF, "%u\t%u\t%d\n", Vert->Number, PEdge->Number, Edge->Cost);
    }

  fclose (PtF);  /* fecho do ficheiro */

  return OK;
}

/**************************** Aulas 12 e 13 ****************************/

int VertexType (PtDigraph pdig, unsigned int pv)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pv > pdig->NVertexes) return NO_VERTEX;

	PtVertex pVertex = OutPosition(pdig->Head, pv)->PtElem;

	if (pVertex->InDeg == 0) 
	{
		if (pVertex->OutDeg == 0) 
			return DISC;
		return SOURCE;
	}
	if (pVertex->OutDeg == 0) 
		return SINK;

	return OK;
}

int VertexOutDegreeCentrality (PtDigraph pdig, unsigned int pv, double *pcent)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pv > pdig->NVertexes) return NO_VERTEX;
	if (pcent == NULL) return NULL_PTR;

	/* get vertex and calculate its centrality */
	PtVertex pVertex = OutPosition(pdig->Head, pv)->PtElem;
	*pcent = (double)pVertex->OutDeg / (pdig->NVertexes-1);

	return OK;
}

int MaxOutDegreeCentrality (PtDigraph pdig, unsigned int *pv, double *pmax)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pmax == NULL || pv == NULL) return NULL_PTR;

	PtBiNode pNode = pdig->Head;

	/* initialize pointers with values for first vertex */
	*pv = pNode->Number;
	*pmax = (double)((PtVertex)(pNode->PtElem))->OutDeg / (pdig->NVertexes-1);

	/* search digraph for max out degree centrality */
	while(*pmax != 1 && pNode->PtNext) 
	{
		pNode = pNode->PtNext;
		
		double aux = (double)((PtVertex)(pNode->PtElem))->OutDeg / (pdig->NVertexes-1);
		if (aux > *pmax) 
		{
			*pmax = aux;
			*pv = pNode->Number;
		}
	}


	return OK;
}

int AverageSucessorOutDegree (PtDigraph pdig, unsigned int pv, double *pmsuc)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pv > pdig->NVertexes) return NO_VERTEX;
	if (pmsuc == NULL) return NULL_PTR;

	PtBiNode targetNode = OutPosition(pdig->Head, pv);
	PtVertex pVertex = targetNode->PtElem;

	/* no sense in calculating average (equal to diving by 0) */
	if (pVertex->OutDeg == 0) 
		return NO_EDGE;

	/* get out degree for each vertex that pv points to */
	int totalOutEdges = 0;
	PtBiNode adjNode = targetNode->PtAdj;

	while (adjNode)
	{
		totalOutEdges += ((PtVertex)(adjNode->PtAdj->PtElem))->OutDeg;
		adjNode = adjNode->PtNext;
	}

	/* average = pointed to vertexes' edges number / number of pointed to vertexes */
	*pmsuc = (double)totalOutEdges / pVertex->OutDeg;

	return OK;
}

int AllIsolates (PtDigraph pdig, PtQueue *pqueue)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pqueue == NULL) return NULL_PTR;

	/* create queue */
	*pqueue = QueueCreate(sizeof(int));
	if (!pqueue)
		return NO_MEM; 

	/* iterate through graph */
	PtBiNode pNode = pdig->Head;

	/* search digraph for isolated vertexes */
	while(pNode) 
	{	
		if (!((PtVertex)(pNode->PtElem))->OutDeg && !((PtVertex)(pNode->PtElem))->InDeg) 
		{
			if (QueueEnqueue(*pqueue, &(pNode->Number)) == NO_MEM) 
			{
				/* free queue since it's not possible to create the complete data structure */
				QueueDestroy(pqueue);
				return NO_MEM;
			}
		}

		pNode = pNode->PtNext;
	}
	return OK;
}

int AllPredecessors (PtDigraph pdig, unsigned int pv, PtQueue *pqueue)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pv > pdig->NVertexes) return NO_VERTEX;
	if (pqueue == NULL) return NULL_PTR;

	/* get vertex */
	PtBiNode targetNode = OutPosition(pdig->Head, pv);
	PtVertex pVertex = targetNode->PtElem;

	/* create queue */
	*pqueue = QueueCreate(sizeof(int));
	if (!pqueue)
		return NO_MEM; 

	/* get predecessors */

	/* if in degree equals 0, then there are no predecessors */
	if (pVertex->InDeg == 0)
		return OK;

	if (pVertex->InDeg == pdig->NVertexes-1) 
	{
		/* all other vertexes are predecessors */	

		/* iterate through all other vertexes to get their number (general case) */
		PtBiNode pNode = pdig->Head;
		while(pNode) 
		{	
			if (pNode->Number != targetNode->Number) 
			{
				if (QueueEnqueue(*pqueue, &(pNode->Number)) == NO_MEM) 
				{
					/* free queue since it's not possible to create the complete data structure */
					QueueDestroy(pqueue);
					return NO_MEM;
				}
			}

			pNode = pNode->PtNext;
		}
		return OK;
	} 


	/* else, must go through adjacency lists*/
	PtBiNode pNode = pdig->Head;
	int accountedVertexes = 0;
	while (accountedVertexes < pVertex->InDeg) 
	{
		/* add vertex if target vertex is in adjacency list*/
		if (isAdjacent(pNode, targetNode->Number)) 
		{
			if (QueueEnqueue(*pqueue, &(pNode->Number)) == NO_MEM) 
			{
				/* free queue since it's not possible to create the complete data structure */
				QueueDestroy(pqueue);
				return NO_MEM;
			}
			accountedVertexes++;
		}
		pNode = pNode->PtNext;
	}

	return OK;
}

int AllNonEdges (PtDigraph pdig, PtQueue *pqueue)
{ 
	if (pdig == NULL) return NO_DIGRAPH;
	if (pdig->NVertexes == 0) return DIGRAPH_EMPTY;
	if (pqueue == NULL) return NULL_PTR;

	/* create queue */
	*pqueue = QueueCreate(sizeof(int));
	if (!pqueue)
		return NO_MEM; 

	int missingEdgesNum = pdig->NVertexes*(pdig->NVertexes-1) - pdig->NEdges;

	/* if no missing edges, graph is complete */
	if (missingEdgesNum == 0)
		return OK;

	/* get a list of vertexes in the graph */
	int vertexes[pdig->NVertexes];
	PtBiNode pNode = pdig->Head; 
	int i = 0;
	while(pNode) 
	{
		vertexes[i++] = pNode->Number;
		pNode = pNode->PtNext;
	}

	/* for each vertex, add missing edges in its adjacency list to queue*/
	pNode = pdig->Head; 
	while(pNode) 
	{
		/* if out degree equals #V-1, there are no vertexes to add to queue */
		if (((PtVertex)(pNode->PtElem))->OutDeg == pdig->NVertexes-1) 
			continue;


		if (((PtVertex)(pNode->PtElem))->OutDeg == 0) 
		{
			/* need to add all other vertexes to queue*/
			for (i = 0; i < pdig->NVertexes; i++) 
			{
				if (pNode->Number != vertexes[i])
				{
					if (QueueEnqueue(*pqueue, &(pNode->Number)) == NO_MEM ||
						QueueEnqueue(*pqueue, &(vertexes[i])) == NO_MEM) 
					{
						/* free queue since it's not possible to create the complete data structure */
						QueueDestroy(pqueue);
						return NO_MEM;
					}
				}
			}
			continue;
		}

		
		/* else, must search in adjacency list for the missing edges */
		int accountedEdges = 0;
		int missingEdgesNum = pdig->NVertexes-1 - ((PtVertex)(pNode->PtElem))->OutDeg;
		for (i = 0; accountedEdges < missingEdgesNum; i++) 
		{
			if ((pNode->Number != vertexes[i]) && !isAdjacent(pNode, vertexes[i])) 
			{
				if (QueueEnqueue(*pqueue, &(pNode->Number)) == NO_MEM ||
					QueueEnqueue(*pqueue, &(vertexes[i])) == NO_MEM) 
				{
					/* free queue since it's not possible to create the complete data structure */
					QueueDestroy(pqueue);
					return NO_MEM;
				}
				accountedEdges++;
			}
		}

		pNode = pNode->PtNext;		
	}

	return OK;
}

/************************** Função Auxiliar ****************************/
int isAdjacent(PtBiNode pNode, int targetNodeNumber) 
{
	pNode = pNode->PtAdj;
	while(pNode) 
	{	
		if (pNode->Number == targetNodeNumber) 
			return 1;

		pNode = pNode->PtNext;
	}

	return 0;
}


/***************** Definição dos Subprogramas Internos *****************/

/* Função que insere, de facto, uma aresta no dígrafo/grafo. Em caso de sucesso devolve OK, senão devolve NO_MEM para assinalar falta de memória. */

static int InsertEdge (PtBiNode pv1, PtBiNode pv2, int pcost)
{
	PtBiNode Insert, Node;	/* posição de inserção e nova aresta */

					/* criar o binó e a aresta */
	if ((Node = CreateBiNode (pv2->Number)) == NULL) return NO_MEM;
	if ((Node->PtElem = CreateEdge (pcost)) == NULL)
	{ free (Node); return NO_MEM; }

					/* determinar posição de colocação e inserir a aresta */
	if (pv1->PtAdj == NULL || pv1->PtAdj->Number > pv2->Number)
	{				/* inserção à cabeça da lista das arestas */
		Node->PtNext = pv1->PtAdj; pv1->PtAdj = Node;
		if (Node->PtNext != NULL) Node->PtNext->PtPrev = Node;
	}
	else
	{				/* inserção à frente do nó de inserção */
		Insert = InPosition (pv1->PtAdj, pv2->Number);
		Node->PtNext = Insert->PtNext;
		if (Node->PtNext != NULL) Node->PtNext->PtPrev = Node;
		Node->PtPrev = Insert; Insert->PtNext = Node;
	}

	Node->PtAdj = pv2;	/* ligar o vértice 1 ao vértice 2 */
	/* incrementar semigraus dos vértices emergente do 1 e incidente do 2 */
	((PtVertex) pv1->PtElem)->OutDeg++;
	((PtVertex) pv2->PtElem)->InDeg++;

	return OK;
}

/* Função que remove, de facto, uma aresta do dígrafo/grafo. */

static void DeleteEdge (PtBiNode pv1, PtBiNode pv2)
{
	PtBiNode Delete;	/* posição de remoção da aresta */

					/* determinar posição de remoção da aresta */
	Delete = OutPosition (pv1->PtAdj, pv2->Number);

	if (Delete == pv1->PtAdj)	/* remoção da aresta */
	{				/* remoção da aresta da cabeça da lista das arestas */
		if (Delete->PtNext != NULL) Delete->PtNext->PtPrev = NULL;
		pv1->PtAdj = Delete->PtNext;
	}
	else
	{				/* remoção de outra aresta do vértice */
		Delete->PtPrev->PtNext = Delete->PtNext;
		if (Delete->PtNext != NULL) Delete->PtNext->PtPrev = Delete->PtPrev;
	}

	DestroyBiNode (&Delete);	/* destruir binó com aresta */

	/* decrementar semigraus dos vértices emergente do 1 e incidente do 2 */
	((PtVertex) pv1->PtElem)->OutDeg--;
	((PtVertex) pv2->PtElem)->InDeg--;
}

/* Função que cria o vértice do dígrafo/grafo. Devolve a referência do vértice criado ou NULL, caso não consiga criá-lo por falta de memória. */
 
static PtVertex CreateVertex (void)
{
	PtVertex Vertex;

	if ((Vertex = (PtVertex) malloc (sizeof (struct vertex))) == NULL)
		return NULL;

	Vertex->InDeg = 0;	/* inicializa o semigrau incidente */
	Vertex->OutDeg = 0;	/* inicializa o semigrau emergente */
	return Vertex;	/* devolve o vértice criado */
}

/* Função que cria a aresta do dígrafo/grafo. Devolve a referência da aresta criada ou NULL, caso não consiga criá-la por falta de memória. */

static PtEdge CreateEdge (int pcost)
{
	PtEdge Edge;

	if ((Edge = (PtEdge) malloc (sizeof (struct edge))) == NULL)
		return NULL;

	Edge->Cost = pcost;	/* armazena o custo da aresta */
	return Edge;	/* devolve a aresta criada */
}

/* Função que cria o binó da lista de vértices ou da lista de arestas. Devolve a referência do binó criado ou NULL, caso não consiga criá-lo por falta de memória. */

static PtBiNode CreateBiNode (unsigned int pnumber)
{
	PtBiNode Node;

	if ((Node = (PtBiNode) malloc (sizeof (struct binode))) == NULL)
		return NULL;

	Node->PtNext = NULL;	/* binó aponta para a frente para NULL */
	Node->PtPrev = NULL;	/* binó aponta para a trás para NULL */
	Node->PtAdj = NULL;	/* lista de adjacências nula */
	Node->Number = pnumber;	/* armazena o identificador do binó */
	return Node;	/* devolve o binó criado */
}

/* Função que liberta a memória ocupada pelo binó e pelo seu elemento. */

static void DestroyBiNode (PtBiNode *pbinode)
{
	if (*pbinode == NULL) return;

	free ((*pbinode)->PtElem);
	free (*pbinode);
	*pbinode = NULL;
}

/* Função de pesquisa para inserção. Devolve um ponteiro para o binó à frente do qual deve ser feita a inserção do novo vértice (nova aresta) ou NULL, caso o vértice (a aresta) já exista. */
 
static PtBiNode InPosition (PtBiNode phead, unsigned int pnumber)
{
	PtBiNode Node, Prev;

	for (Node = phead; Node != NULL; Node = Node->PtNext)
	{
		if (Node->Number >= pnumber) break;
		Prev = Node;
	}

	if (Node == NULL || Node->Number > pnumber) return Prev;
	else return NULL;	/* o elemento já existe */
}

/* Função de pesquisa para remoção. Devolve um ponteiro para o binó onde se encontra o vértice (a aresta) ou NULL, caso o vértice (a aresta) não exista. */

static PtBiNode OutPosition (PtBiNode phead, unsigned int pnumber)
{
	PtBiNode Node;

	for (Node = phead; Node != NULL; Node = Node->PtNext)
		if (Node->Number == pnumber) break;
	return Node;
}


