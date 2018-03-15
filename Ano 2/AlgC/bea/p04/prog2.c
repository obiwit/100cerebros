#include <stdio.h>

int COMP_NUM = 0;
int MOVES_NUM = 0;

void print_array(int* a, int n) {
	printf("%d", a[0]);
	for (int i = 1; i < n; ++i) {
		printf(", %d", a[i]);
	}
	printf("\n");
}

int belongs(int elem, int* a, int n) {
	for (int i = 0; i < n; ++i) {
		COMP_NUM++;
		if (a[i] == elem)
			return 1;
	}
	return 0;
}

void remove_duplicates(int* a, int* n) {
	if (*n == 0) return;

	int real_index;
	int non_repeated_index;

	for (real_index = 1, non_repeated_index = 1; real_index < *n; real_index++) {

		// print_array(a, non_repeated_index);
		// printf("Current elem: %d\n", a[real_index]);

		if (belongs(a[real_index], a, non_repeated_index) == 0) {
			if (real_index == non_repeated_index) {
				non_repeated_index++;
			} else {
				MOVES_NUM++;
				a[non_repeated_index++] = a[real_index];
			}
		}
	}

	*n = non_repeated_index;
}

int main() {
	int size;
	int* size_pt = &size;

	/*********************************************************/

	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_0[10] = {1, 2, 2, 3, 2, 2, 4, 3, 4, 3};
	remove_duplicates(array_0, size_pt);
	print_array(array_0, *size_pt);

	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	/*********************************************************
	 * Best Comparisons & Moves Case
	 */

	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_1[10] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
	remove_duplicates(array_1, size_pt);
	print_array(array_1, *size_pt);
	
	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	/*********************************************************/

	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_2[10] = {1, 2, 2, 2, 3, 3, 4, 5, 8, 8};
	remove_duplicates(array_2, size_pt);
	print_array(array_2, *size_pt);
	
	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	/*********************************************************/
	
	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_3[10] = {1, 2, 2, 2, 3, 3, 3, 3, 8, 8};
	remove_duplicates(array_3, size_pt);
	print_array(array_3, *size_pt);
	
	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	/*********************************************************
	 * Worst Comparisons Case
	 */

	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_4[10] = {1, 2, 5, 4, 7, 0, 3, 9, 6, 8};
	remove_duplicates(array_4, size_pt);
	print_array(array_4, *size_pt);
	
	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	/*********************************************************
	 * Worst Moves Case
	 */

	COMP_NUM = 0; MOVES_NUM = 0; size = 10;

	int array_5[10] = {1, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	remove_duplicates(array_5, size_pt);
	print_array(array_5, *size_pt);
	
	printf("%d Comparisons, %d Moves\n", COMP_NUM, MOVES_NUM);

	return 0;
}