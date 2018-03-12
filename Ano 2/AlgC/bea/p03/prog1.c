#include <stdio.h>

int COMP_NUM = 0;

int count_elements(int* a, int len) {
	int counter = 0;
	for(int i = 1; i < len; i++) {
		COMP_NUM++;
		if (a[i-1] != a[i])
			counter++;
	}
	return counter;
}

int main(void) {
	int array[10] = {4, 3, 3, 3, 3, 3, 3, 3, 3, 3};
	int aux = count_elements(array, 10);
	printf("%d - %d ops\n", aux, COMP_NUM);
}