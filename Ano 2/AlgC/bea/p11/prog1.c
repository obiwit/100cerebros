#include <stdio.h>
#include "pqueue.h"

void order_array(int* array, int size) {

	// create priority queue
	PtPQueue pqueue = PQueueCreate (size);

	// insert array elements
	for (int i = 0; i < size; i++)
		PQueueInsert(pqueue, array[i]);

	// sort array elements by removing them from pqueue
	for(int i = size - 1; i >= 0; i--) 
		PQueueDeleteMax(pqueue, &array[i]);

	// free priority queue
	PQueueDestroy(&pqueue);

}

int main() {

	// for a given array of numbers
	int array[] = {5, 88, 14, 20, 12, 6, 7, 97, 21, 5};
	int array_size = 10;

	for (int i = 0; i < array_size; i++)
		printf("%3d ", array[i]);
	printf("\n");

	order_array(array, array_size);

	for (int i = 0; i < array_size; i++)
		printf("%3d ", array[i]);
	printf("\n");

	return 0;
}