#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int COMP_NUM = 0;

int find_smaller(int* a, int len, int ref_elem) {
	int counter = 0;
	for(int i = 0; i < len; i++) {
		COMP_NUM++;
		if (a[i] < ref_elem)
			counter++;
	}
	return counter;
}

int count_smaller_prev_elements(int* a, int len) {
	// sanity check
	if(len == 0) return -1;

	int best_index = len-1;
	int smaller_num = find_smaller(a, len-1, a[len-1]);

	for(int i = len-2; i>=smaller_num; i--) {
		if (a[i] > a[best_index]) {
			COMP_NUM--; // compensate for COMP+=2 at the end of the if block

			int elems_to_search = i;
			int temp_smaller = 0;

			while(elems_to_search > 0 && elems_to_search+temp_smaller >= smaller_num) {
				if(a[elems_to_search-1]<a[i]) {
					temp_smaller++;
				}
				elems_to_search--;
				COMP_NUM++;
			}

			COMP_NUM++;
			if(temp_smaller>=smaller_num){		
				best_index = i;
				smaller_num = temp_smaller;
			}
		} else if(a[i] == a[best_index] && i == best_index-1) {
			best_index = i;
		}
		COMP_NUM+=2;
	}

	// for(int i = len-2; i >= smaller_num; i--) {

	// 	if (a[i] == a[best_index] && i == best_index-1) {

	// 			best_index = i;
	// 			COMP_NUM--; // compensate for COMP+=2 at end of if-block

	// 	} else if (a[i] > a[best_index]) {

	// 		// int current_smaller_elem = find_smaller(a, i, a[i]);
	// 		int current_smaller_elem = 0;
	// 		for(int j = i-1; j+1+current_smaller_elem >= smaller_num && j>=0; j--) {
	// 			COMP_NUM++;
	// 			if (a[j] < a[i]) 
	// 				current_smaller_elem++;
	// 		}
	// 		COMP_NUM++;
	// 		if (current_smaller_elem >= smaller_num) {
	// 			best_index = i;
	// 			smaller_num = current_smaller_elem;
	// 		}

	// 	}
	// 	COMP_NUM+=2;

	// }

	return (smaller_num == 0)? -1 : best_index;
}


int main(void) {
	int ARRAY_SIZE = 10;
	int ITERATIONS_NUM = 20;

	srand(time(NULL));

	int prev_average = 0;

	for(int k = 0; k < 20; k++) {
		printf("\nARRAY_SIZE=%d\n", ARRAY_SIZE);

		int total_comps = 0;

		for(int i = 0; i < ITERATIONS_NUM; i++) {
			COMP_NUM = 0;
			int array[ARRAY_SIZE];

			for (int j = 0; j < ARRAY_SIZE; j++) {
				array[j] = floor(((double)rand() / (double)RAND_MAX)*1000.0);
				//printf("%d | ", array[j]);
			}
			// printf("\n\t%d\n", count_smaller_prev_elements(array, ARRAY_SIZE));
		 //    printf("\tComp = %d\n\t--------------\n", COMP_NUM);
			count_smaller_prev_elements(array, ARRAY_SIZE);
		    total_comps += COMP_NUM;
		}
		float average = (float)total_comps/ITERATIONS_NUM;

		printf(" Average Iterations Num -> %f\n", average);
		printf(" N to Average Iter Ratio -> %f\n", average/ARRAY_SIZE);
		if(prev_average != 0) {
			printf(" Average / Prev_Average -> %f\n", average/prev_average);
		}
		prev_average = average;
		ARRAY_SIZE*=2;
	}

	// COMP_NUM = 0;
	// int array_test_0[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	// printf("%d\n", count_smaller_prev_elements(array_test_0, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);
	// COMP_NUM = 0;
	// int array_test_01[10] = {1, 2, 3, 4, 5, 6, 7, 10, 10, 10};
	// printf("%d\n", count_smaller_prev_elements(array_test_01, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);
	// COMP_NUM = 0;
	// COMP_NUM = 0;
	// int array_test_1[10] =  {1, 2, 3, 4, 8, 6, 7, 10, 1, 8};
	// printf("%d\n", count_smaller_prev_elements(array_test_1, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);
	// COMP_NUM = 0;
	// int array_test_12[10] =  {1, 2, 3, 4, 8, 6, 7, 10, 8, 8};
	// printf("%d\n", count_smaller_prev_elements(array_test_12, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);
	// COMP_NUM = 0;
	// int array_test_2[10] = {1, 21, 31, 4, 5, 6, 7, 10, 8, 8};
	// printf("%d\n", count_smaller_prev_elements(array_test_2, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);
	// COMP_NUM = 0;
	// int array_test_4[10] = {1, 2, 3, 4, 5, 6, 10, 8, 8, 7};
	// printf("%d\n", count_smaller_prev_elements(array_test_4, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM);

	// COMP_NUM = 0;
	// int array6[20] = {20, 19, 18, 17, 16, 15, 14, 13, 12, 11,
	// 				  10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
	// printf("%d\n", count_smaller_prev_elements(array6, 20));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); // 208

	// int array1[50] = {1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
	// 				  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
	// 				  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
	// 				  1, 9, 2, 5, 8, 4, 3, 2, 7, 5, 
	// 				  1, 9, 2, 5, 8, 4, 3, 2, 7, 5};
	// printf("%d\n", count_smaller_prev_elements(array1, 50));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); // 203; P=152
	// COMP_NUM = 0;
	// printf("%d\n", count_smaller_prev_elements(array1, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  22; P=14

	// COMP_NUM = 0;
	// int array2[10] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
	// printf("%d\n", count_smaller_prev_elements(array2, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  25; P=19

	// COMP_NUM = 0;
	// int array3[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	// printf("%d\n", count_smaller_prev_elements(array3, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //   9; P=10

	// COMP_NUM = 0;
	// int array4[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
	// printf("%d\n", count_smaller_prev_elements(array4, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  53; P=64

	// COMP_NUM = 0;
	// int array5[10] = {1, 4, 5, 4, 3, 7, 6, 10, 10, 1};
	// printf("%d\n", count_smaller_prev_elements(array5, 10));
	// printf("Comp = %d\n----------------------------------------------------\n", COMP_NUM); //  20; P=14

}