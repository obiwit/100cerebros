#include <stdio.h>
#include "min_pqueue.h"

void get_k_biggest(int* array, int size, int* dst_array, int k) {

	// create priority queue
	PtPQueue pqueue = PQueueCreate(k);

	// insert k biggest array elements in pqueue
	for (int i = 0; i < size; i++) {
		if (i < k)
			PQueueInsert(pqueue, array[i]);
		else { 
			int aux;
			PQueueElement(pqueue, &aux, 0); // get smallest elem in pqueue

			if (array[i] > aux) {			// insert elem only if in biggest k
				PQueueDeleteMin(pqueue, &aux);
				PQueueInsert(pqueue, array[i]);
			}
		}

	}
	
	// sort array elements by removing them from pqueue
	for(int i = 0; i < size; i++) {
		PQueueDeleteMin(pqueue, &dst_array[i]);
	}

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

	int k = 4;
	int dst_array[k];
	get_k_biggest(array, array_size, dst_array, k);

	for (int i = 0; i < k; i++)
		printf("%3d ", dst_array[i]);
	printf("\n");

	return 0;
}