#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "digraph.h"  /* Ficheiro de interface do TAD */

void EscreverMensagemErro (unsigned int, char *);
void LerVertice (unsigned int *);
void EscreverDigrafo (PtDigraph);
void PrintQueue (PtQueue, char *);
void PrintQueuePair (PtQueue);

int main (int argc, char *argv[])
{
	PtDigraph Digrafo = NULL; PtQueue Queue = NULL;
	int Erro; unsigned int Vert, NVertices, NEdges; double Central;

	if (argc < 2)
	{
		printf ("Usage %s filename\n", argv[0]);
		exit (1);
	}

	Digrafo = CreateFile (argv[1]);
	printf ("---------------------- Apresentar Digrafo ---------------------\n");
	printf ("Digrafo lido do ficheiro %s\n", argv[1]);
	if (Digrafo == NULL) EscreverMensagemErro (NO_MEM, "Leitura");
	VertexNumber (Digrafo, &NVertices);
	EdgeNumber (Digrafo, &NEdges);
	printf ("V = %d / A = %d\n", NVertices, NEdges);
	EscreverDigrafo (Digrafo);

	printf ("---------------------------------------------------------------\n");
	for (Vert = 1; Vert <= NVertices; Vert++)
	{
		Erro = VertexType (Digrafo, Vert);
		switch (Erro)
		{
			case OK     : printf ("vertice %d normal\n", Vert);  break;
			case SINK   : printf ("vertice %d sumidouro\n", Vert);  break;
			case SOURCE : printf ("vertice %d fonte\n", Vert);  break;
			case DISC   : printf ("vertice %d desconexo\n", Vert);  break;
			default     : EscreverMensagemErro (Erro, "Teste Vertice");
		}
	}
	printf ("---------------------------------------------------------------\n");

	for (Vert = 1; Vert <= NVertices; Vert++)
	{
		Erro = VertexOutDegreeCentrality (Digrafo, Vert, &Central);
		if (Erro) EscreverMensagemErro (Erro, "Centralidade");
		else printf ("Centralidade do vertice %d = %f\n", Vert, Central);
	}
	printf ("---------------------------------------------------------------\n");

	Erro = MaxOutDegreeCentrality (Digrafo, &Vert, &Central);
	if (Erro) EscreverMensagemErro (Erro, "Maxima centralidade");
	else printf ("Maxima centralidade vertice %d = %f\n", Vert, Central);
	printf ("---------------------------------------------------------------\n");

	for (Vert = 1; Vert <= NVertices; Vert++)
	{
		Erro = AverageSucessorOutDegree (Digrafo, Vert, &Central);
		if (Erro) EscreverMensagemErro (Erro, "Media de sucessores");
		else printf ("Media de sucessores dos sucessores do vertice %d = %f\n", Vert, Central);
	}
	printf ("---------------------------------------------------------------\n");

	Erro = AllIsolates (Digrafo, &Queue);
	if (Erro) EscreverMensagemErro (Erro, "Vertices isolados");
	else if (QueueIsEmpty (Queue)) printf("Nao existem vertices desconexos\n");
		 else { PrintQueue (Queue, "Vertices desconexos"); QueueDestroy (&Queue); }
	printf ("---------------------------------------------------------------\n");

	for (Vert = 1; Vert <= NVertices; Vert++)
	{
		Erro = AllPredecessors (Digrafo, Vert, &Queue);
		if (Erro) EscreverMensagemErro (Erro, "Vertices predecessores");
		else
		{
			printf("Vertices predecessores do vertice %d", Vert);
			if (QueueIsEmpty (Queue)) printf (" -> nenhum\n");
			else { PrintQueue (Queue, " ->"); QueueDestroy (&Queue); }
		}
	}
	printf ("---------------------------------------------------------------\n");

	Erro = AllNonEdges (Digrafo, &Queue);
	if (Erro) EscreverMensagemErro (Erro, "Arestas inexistentes");
	else if (QueueIsEmpty (Queue)) printf("Nao faltam arestas no digrafo\n");
		 else { PrintQueuePair (Queue); QueueDestroy (&Queue); }
	printf ("---------------------------------------------------------------\n");

	printf ("\nPrima uma tecla para continuar ");
	scanf ("%*[^\n]"); scanf ("%*c");

	return 0;
}

void EscreverMensagemErro (unsigned int perro, char *pmsg)
{
	printf ("%s -> ", pmsg);
	switch (perro)
	{
		case NO_DIGRAPH    : printf ("%s", "Digrafo inexistente\n"); break;
		case NO_MEM        : printf ("%s", "Memoria esgotada\n"); break;
		case NULL_PTR      : printf ("%s", "Ponteiro nulo\n"); break;
		case DIGRAPH_EMPTY : printf ("%s", "Digrafo vazio\n"); break;
		case NO_VERTEX     : printf ("%s", "Vertice inexistente\n"); break;
		case REP_VERTEX    : printf ("%s", "Vertice repetido\n"); break;
		case NO_EDGE       : printf ("%s", "Aresta inexistente\n"); break;
		case REP_EDGE      : printf ("%s", "Aresta repetida\n"); break;
		case NO_FILE       : printf ("%s", "Ficheiro inexistente\n"); break;
		case NO_DAG        : printf ("%s", "Digrafo aciclico\n"); break;
		case NEG_CYCLE     : printf ("%s", "Digrafo com ciclo negativo\n"); break;
		default            : printf ("Erro desconhecido\n");
	}
}

void LerVertice (unsigned int *pvertice)
{
  do
  {
    printf ("Vertice No -> "); scanf ("%d", pvertice);
    scanf ("%*[^\n]"); scanf ("%*c");
  } while (*pvertice < 0);
}

void EscreverDigrafo (PtDigraph pdigraph)
{
  unsigned int NVertices, Linha; char ListaVert[256];

  VertexNumber (pdigraph, &NVertices);

  for (Linha = 1; Linha <= NVertices; Linha++)
  {
    GetVertexList (pdigraph, Linha, ListaVert);
    printf ("%s\n", ListaVert);
  }
}

void PrintQueue (PtQueue pqueue, char *pmsg)
{
	if (pqueue == NULL) { printf ("Erro\n"); return ; }
	
	int Number;
	printf("%s ", pmsg);
	while (!QueueIsEmpty (pqueue))
	{
		QueueDequeue (pqueue, &Number);
		printf ("%d ", Number);
	}
	printf ("\n");
}

void PrintQueuePair (PtQueue pqueue)
{
	if (pqueue == NULL) { printf ("Erro\n"); return ; }
	
	int Number;
	printf("Arestas inexistentes ");
	while (!QueueIsEmpty (pqueue))
	{
		QueueDequeue (pqueue, &Number); printf ("(%d ", Number);
		QueueDequeue (pqueue, &Number); printf ("- %d) ", Number);
	}
	printf ("\n");
}

