#include <stdio.h>

int main(void) {

	int divisions = 0;
	int multiplications = 0;
	int factorials[10] = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880};

	printf("---------------------------------------\n");
	printf("| Factorion numbers smaller than 10^6 |\n");
	printf("---------------------------------------\n\n| ");

	// FIRST, LESS FLEXIBLE VERSION
	// for (int a = 0; a < 10; a++) {
	// 	for (int b = 0; b < 10; b++) {
	// 		for (int c = 0; c < 10; c++) {
	// 			for (int d = 0; d < 10; d++) {
	// 				for (int e = 0; e < 10; e++) {
	// 					for (int f = 0; f < 10; f++) {
	// 						int num = 100000*a + 10000*b + 1000*c + 100*d + 10*e + f;
	// 						multiplications += 5;

	// 						int fact_sum = factorials[a] + factorials[b] + factorials[c] + factorials[d] + factorials[e] + factorials[f];
	// 						if ( a == 0) {
	// 							fact_sum = factorials[b] + factorials[c] + factorials[d] + factorials[e] + factorials[f];
	// 							if (b == 0) {
	// 								fact_sum = factorials[c] + factorials[d] + factorials[e] + factorials[f];
	// 								if (c == 0) {
	// 									fact_sum = factorials[d] + factorials[e] + factorials[f];
	// 									if (d == 0) {
	// 										fact_sum = factorials[e] + factorials[f];
	// 										if (e == 0) {
	// 											fact_sum = factorials[f];
	// 										}
	// 									}
	// 								}
	// 							}
	// 						}

	// 						if (num == fact_sum) {
	// 							printf("%d | ", num);
	// 						}
	// 					}
	// 				}
	// 			}
	// 		}
	// 	}
	// }

	for (int num = 0; num < 1000000; num++) {
		// get digits of the number
		int a = num / 100000; int b = num / 10000 % 10; int c = num / 1000 % 10;
		int d = num / 100 % 10;  int e = num / 10 % 10;  int f = num % 10;
		divisions += 10;

		// check if factorion number
		int fact_sum;
		if (a != 0) {
			fact_sum = factorials[a] + factorials[b] + factorials[c] + factorials[d] + factorials[e] + factorials[f];
		} else if (b != 0) {
			fact_sum = factorials[b] + factorials[c] + factorials[d] + factorials[e] + factorials[f];
		} else if (c != 0) {
			fact_sum = factorials[c] + factorials[d] + factorials[e] + factorials[f];
		} else if (d != 0) {
			fact_sum = factorials[d] + factorials[e] + factorials[f];
		} else if (e != 0) {
			fact_sum = factorials[e] + factorials[f];
		} else {
			fact_sum = factorials[f];
		}

		if (num == fact_sum) {
			printf("%d | ", num);
		}
	}
	printf("\n\n");

	printf("Number of divisions: %d\n", divisions);
	printf("Number of multiplications: %d\n", multiplications);

	return 0;
}