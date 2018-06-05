#include <stdio.h>

#include "stack.h"

int main() {

	unsigned int WORD_LEN = 256;
	PtStack pStack = StackCreate(sizeof(char));

	// ler uma string
	char word[WORD_LEN];
	fgets(word, WORD_LEN, stdin);

	for (int i =0; i < WORD_LEN; i++) {
		if (word[i] == '\0') // '\n')
			break;
		// this way will print a newline; change '\0' to '\n' to prevent that
		StackPush(pStack, &(word[i]));
	}

	// imprimi-la usando uma stack pela ordem inversa
	while(!StackIsEmpty(pStack)) {
		char aux;
		StackPop(pStack, &aux);
		printf("%c", aux);

	}
	printf("\n");

	StackDestroy(&pStack);

	return 0;
}