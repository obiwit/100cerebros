#include <stdio.h>

int ADD_NUM = 0;

int is_continuous_sequence(int* a, int n) {
	for (int i = 1; i < n; i++) {
		ADD_NUM++;
		if (a[i] != a[i-1] + 1)
			return 0;
	}
	return 1;
}

int main() {
	int result;

	int aux = 0;

	ADD_NUM = 0;
	int array_0[10] = {1, 3, 4, 5, 5, 6, 7, 7, 8, 9};
	result = is_continuous_sequence(array_0, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_1[10] = {1, 2, 4, 5, 5, 6, 7, 8, 8, 9};
	result = is_continuous_sequence(array_1, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_2[10] = {1, 2, 3, 6, 8, 8, 8, 9, 9, 9};
	result = is_continuous_sequence(array_2, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_3[10] = {1, 2, 3, 4, 6, 7, 7, 8, 8, 9};
	result = is_continuous_sequence(array_3, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_4[10] = {1, 2, 3, 4, 5, 7, 7, 8, 8, 9};
	result = is_continuous_sequence(array_4, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_5[10] = {1, 2, 3, 4, 5, 6, 8, 8, 9, 9};
	result = is_continuous_sequence(array_5, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_6[10] = {1, 2, 3, 4, 5, 6, 7, 9, 9, 9};
	result = is_continuous_sequence(array_6, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_7[10] = {1, 2, 3, 4, 5, 6, 7, 8, 8, 9};
	result = is_continuous_sequence(array_7, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_8[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 9};
	result = is_continuous_sequence(array_8, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	ADD_NUM = 0;
	int array_9[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	result = is_continuous_sequence(array_9, 10);
	printf("%d - %d additions\n", result, ADD_NUM);
	aux += ADD_NUM;

	printf("%d additions total\n", aux);

	return 0;
}