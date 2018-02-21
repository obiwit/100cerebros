#include <stdio.h>

int main(void) {

	int divisions = 0;
	int multiplications = 0;
	int cubes[10] = {0, 1, 8, 27, 64, 125, 216, 343, 512, 729};

	printf("---------------------\n");
	printf("| Armstrong numbers |\n");
	printf("---------------------\n\n| ");

	// FIRST, LESS FLEXIBLE VERSION
	// for (int i = 0; i < 10; i++) {
	// 	for (int j = 0; j < 10; j++) {
	// 		for (int k = 0; k < 10; k++) {
	// 			int num = 100*i + 10*j + k;
	// 			multiplications += 2;
	// 			if (num == cubes[i] + cubes[j] + cubes[k]) {
	// 				printf("%d | ", num);
	// 			}
	// 		}
	// 	}
	// }

	for (int num = 0; num < 1000; num++) {
		// get digits of the number
		int a = num / 100; int b = num / 10 % 10; int c = num % 10;
		divisions += 4;

		// check if armstrong number
		if (a != 0) {
			if (num == cubes[a] + cubes[b] + cubes[c]) {
				printf("%d | ", num);
			}
		} else if (b != 0) {
			if (num == b*b + c*c) {
				printf("%d | ", num);
			}
			multiplications += 2;
		} else {
			printf("%d | ", num);
		}
	}

	printf("\n\n");

	printf("Number of divisions: %d\n", multiplications);
	printf("Number of multiplications: %d\n", multiplications);

	return 0;
}