#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include "abp.h"

int main (void)
{
	PtABPNode abp; int value, error; char op;

	system ("clear");
	abp = ABPCreate ();

  	do
	{
		printf ("Inserir-Inserting/Remover-Removing/Terminar-Terminating-> ");
		scanf ("%c", &op);
		scanf ("%*[^\n]"); scanf ("%*c");
		op = toupper (op);
	} while (op != 'I' && op != 'R' && op != 'T');

	while (op != 'T')
	{
  		printf ("Valor (Value) -> ");
		scanf ("%d", &value);
		scanf ("%*[^\n]"); scanf ("%*c");

		if (op == 'I')
		{
			ABPInsertRec (&abp, value);
			if ((error = ABPErrorCode ()) != OK) printf ("Erro a inserir (Error in inserting) -> %s\n", ABPErrorMessage ());
		}
		else	if (op == 'R')
			{
				ABPDeleteRec (&abp, value);
				if ((error = ABPErrorCode ()) != OK) printf ("Erro a remover (Error in removing) -> %s\n", ABPErrorMessage ());
			}
			else
			{
				printf ("Erro na operacao escolhida - Error on the chosen operation\n");
				error = OK;
			}

		if (!error)
		{
			printf ("--------------------------------------------------------------------------------------------\n");
			if (ABPEmpty (abp)) printf ("\nArvore vazia! - Empty tree!\n");
			else ABPDisplay (abp);
  			printf ("--------------------------------------------------------------------------------------------\n");
		}

  		printf ("Inserir-Inserting/Remover-Removing/Terminar-Terminating-> ");
		scanf ("%c", &op);
		scanf ("%*[^\n]"); scanf ("%*c");
		op = toupper (op);
	}

	printf ("--------------------------------------------------------------------------------------------\n");
	if (ABPEmpty (abp)) printf ("Arvore vazia! - Empty tree!\n");
	else 
	{
		ABPDisplay (abp);
		printf ("--------------------------------------------------------------------------------------------\n");
		printf ("Numero de nos da arvore (number of nodes) = %d\n", ABPSize (abp));
		printf ("Altura da arvore (tree height) = %d\n", ABPHeight (abp));
	}
	printf ("--------------------------------------------------------------------------------------------\n");

	printf ("\n");

	ABPDestroy (&abp);

	return 0;
}

