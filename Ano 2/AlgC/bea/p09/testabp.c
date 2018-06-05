#include <stdio.h>
#include <stdlib.h>
#include "abp.h"

int main (void)
{
	PtABPNode abp1, abp2, abp3; int st; char filename[21];

	system ("clear");
	printf ("\nLer arvore binaria de pesquisa do ficheiro - Read binary search tree from a text file\n");
	do
	{
  		printf ("Nome do ficheiro (Filename) -> ");
		st = scanf ("%20[^\n]", filename);
		scanf ("%*[^\n]"); scanf ("%*c");
	} while (st == 0);

	abp1 = ABPCreateFile (filename);

	if (ABPEmpty (abp1)) printf ("\nArvore vazia! Empty tree!\n");

	printf ("\nNumero de nos da arvore (node number) = %d\n", ABPSize (abp1));

	printf ("\nAltura da arvore (tree height) = %d\n", ABPHeight (abp1));

	printf ("\nArvore listada em pre-ordem (versao recursiva)\n");
	printf ("Tree listed using a pre-order traversal (recursive version)\n");
	ABPPreOrderRec (abp1);
	printf ("\n");

	printf ("\nArvore listada em ordem (versao recursiva)\n");
	printf ("Tree listed using a in-order traversal (recursive version)\n");
	ABPInOrderRec (abp1);
	printf ("\n");

	printf ("\nArvore listada em pos-ordem (versao recursiva)\n");
	printf ("Tree listed using a post-order traversal (recursive version)\n");
	ABPPostOrderRec (abp1);
	printf ("\n");

	printf ("\nArvore listada em pre-ordem (versao repetitiva)\n");
	printf ("Tree listed using a pre-order traversal (repetitive version)\n");
	ABPPreOrderRep (abp1);
	printf ("\n");

	printf ("\nArvore listada em ordem (versao repetitiva)\n");
	printf ("Tree listed using a in-order traversal (repetitive version)\n");
	ABPInOrderRep (abp1);
	printf ("\n");

	printf ("\nArvore listada em pos-ordem (versao repetitiva)\n");
	printf ("Tree listed using a post-order traversal (repetitive version)\n");
	ABPPostOrderRep (abp1);
	printf ("\n");

	printf ("\nArvore listada por niveis - Tree listed using a traversal by level\n");
	ABPByLevel (abp1);
	printf ("\n");

	printf ("\nArvore listada hierarquicamente - Tree listed hierarchically\n");
	ABPDisplay (abp1);
	printf ("\n");

	printf ("\nBalanceamento da arvore Balancing the tree\n");
	abp2 = ABPBalance (abp1);

	printf ("\nNumero de nos da arvore (node number) = %d\n", ABPSize (abp2));

	printf ("\nAltura da arvore (tree height) = %d\n", ABPHeight (abp2));

	printf ("\nArvore listada hierarquicamente - Tree listed hierarchically\n");
	ABPDisplay (abp2);
	printf ("\n");
	
	printf ("\nCopia da arvore - Copy the tree\n");
	abp3 = ABPCopy (abp1);

	printf ("\nNumero de nos da arvore (node number) = %d\n", ABPSize (abp3));

	printf ("\nAltura da arvore (tree height)= %d\n", ABPHeight (abp3));

	printf ("\nArvore listada hierarquicamente - Tree listed hierarchically\n");
	ABPDisplay (abp3);
	printf ("\n");

	printf ("\nArvore listada em ordem (versao recursiva)\n");
	printf ("Tree listed using a in-order traversal (recursive version)\n");
	ABPInOrderRec (abp3);
	printf ("\n");

	printf ("\nDestruir as arvores - Releasing the trees\n\n");
	
	ABPDestroy (&abp1);
	ABPDestroy (&abp2);
	ABPDestroy (&abp3);

	return 0;
}
