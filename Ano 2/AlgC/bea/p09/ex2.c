#include <stdio.h>

#include "stack.h"
#include "queue.h"

int main() {

	unsigned int WORD_LEN = 256;
	PtStack pStack = StackCreate(sizeof(char));
	PtQueue pQueue = QueueCreate(sizeof(char));

	// ler um numero
	char word[WORD_LEN];
	fgets(word, sizeof(word), stdin);

	for (int i =0; i < WORD_LEN; i++) {
		if (word[i] == '\n')
			break;
		StackPush(pStack, &(word[i]));
		QueueEnqueue(pQueue, &(word[i]));
	}

	// verificar se numero e uma capicua usando uma stack e uma queue
	int flag = 1;
	while(!StackIsEmpty(pStack)) {
		// could optimize by exchanging the while condition by for(int i = 0; i <= actual_word_len/2; i++)

		char aux_stack;
		StackPop(pStack, &aux_stack);
		char aux_queue;
		QueueDequeue(pQueue, &aux_queue);

		if (aux_stack == aux_queue) {
			printf("%c and %c are equal!\n", aux_stack, aux_queue);
		} else {
			printf("%c and %c are not equal!\n", aux_stack, aux_queue);
			flag = 0;
		}

	}
	if (flag) 
		printf("The number is a palindrome!");
	printf("\n");

	StackDestroy(&pStack);
	QueueDestroy(&pQueue);
	return 0;
}