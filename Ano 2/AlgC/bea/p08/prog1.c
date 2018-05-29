#include <stdio.h>

unsigned int MULTS = 0;
// unsigned int ADDS = 0;

/*************************************************************
 *
 * 	RECURSIVE PROGRAMMING
 *
 ************************************************************/

unsigned long long int recursive_shroder_v1(unsigned int n) {
	if (n == 0) return 1;

	unsigned long long int sum = 0;
	for (int i = 0; i < n; i++) {
		MULTS++;
		sum += recursive_shroder_v1(i)*recursive_shroder_v1(n-i-1);
	}

	return recursive_shroder_v1(n-1) + sum;
}

unsigned long long int recursive_shroder_v2(unsigned int n) {
	if (n == 0) return 1;

	unsigned long long int sum = 0;
	for (int i = 0; i < n/2; i++) {
		MULTS++;
		sum += recursive_shroder_v2(i)*recursive_shroder_v2(n-i-1);
	}

	sum *= 2;
	MULTS++;

	if (n%2 != 0) {
		unsigned long long int aux = recursive_shroder_v2(n/2);
		sum += aux*aux;
		MULTS++;
	}

	return recursive_shroder_v2(n-1) + sum;
}

unsigned long long int recursive_shroder_v3(unsigned int n) {
	if (n == 0) return 1;
	if (n == 1) return 2;

	unsigned long long int prev_schroder = recursive_shroder_v3(n-1);

	unsigned long long int sum = prev_schroder;
	for (int i = 1; i < n/2; i++) {
		MULTS++; // ADDS++;
		sum += recursive_shroder_v3(i)*recursive_shroder_v3(n-i-1);
	}
	sum += sum;
	// ADDS++;

	if (n%2 != 0) {
		unsigned long long int aux = recursive_shroder_v3(n/2);
		sum += aux*aux;
		MULTS++; // ADDS++;
	}

	// ADDS++;
	return prev_schroder + sum;
}

/*************************************************************
 *
 * 	DYNAMIC PROGRAMMING
 *
 ************************************************************/

unsigned long long int dynamic_shroder_v1(unsigned int n) {
	unsigned long long int array[n+1];
	array[0] = 1;

	for (int i = 1; i <= n; i++) {

		unsigned long long int sum = 0;

		for (int j = 0; j < i; j++) {
			MULTS++;
			sum += array[j]*array[i-j-1];
		}

		array[i] = array[i-1] + sum;
	}
	return array[n];
}

unsigned long long int dynamic_shroder_v2(unsigned int n) {
	unsigned long long int array[n+1];
	array[0] = 1;

	for (int i = 1; i <= n; i++) {

		unsigned long long int sum = 0;

		for (int j = 0; j < i/2; j++) {
			MULTS++;
			sum += array[j]*array[i-j-1];
		}
		sum *= 2;
		MULTS++;

	 	if (i%2 != 0) {
	 		sum += array[i/2]*array[i/2];
			MULTS++;
	 	}

		array[i] = array[i-1] + sum;
	}
	return array[n];
}

unsigned long long int dynamic_shroder_v3(unsigned int n) {
	unsigned long long int array[n+1];
	array[0] = 1; array[1] = 2;

	for (int i = 2; i <= n; i++) {

		unsigned long long int sum = array[i-1];

		for (int j = 1; j < i/2; j++) {
			MULTS++;
			sum += array[j]*array[i-j-1];
		}
		sum += sum;

		if (i%2 != 0) {
			sum += array[i/2]*array[i/2];
			MULTS++;
		}

		array[i] = array[i-1] + sum;
	}
	return array[n];
}

/*************************************************************
 *
 * 	MAIN
 *
 ************************************************************/

int main() {

	int table_size = 13;

	printf("--------------------------------------------------------------------------------------\n");
	printf("|--------------------- RECURSIVE TABLE ----------------------------------------------|\n");
	printf("|------------------------------------------------------------------------------------|\n");
	printf("|-            Shroder(n)            |   Version 1   |   Version 2   |   Version 3   -|\n");
	printf("|------------------------------------------------------------------------------------|\n");

	for(int i = 0; i < table_size; i++) {
		MULTS = 0; recursive_shroder_v1(i); unsigned int MULTS_v1 = MULTS; 
		MULTS = 0; recursive_shroder_v2(i); unsigned int MULTS_v2 = MULTS; 
		MULTS = 0; 
		unsigned long long int aux = recursive_shroder_v3(i); 

		printf("| shroder(%2d) = %19lld |   %9d   |   %9d   |   %9d    |\n", i, aux, MULTS_v1, MULTS_v2, MULTS);
	}

	printf("|------------------------------------------------------------------------------------|\n");
	printf("--------------------------------------------------------------------------------------\n");

	printf("\n\n");

	printf("--------------------------------------------------------------------------------------\n");
	printf("|---------------------  DYNAMIC TABLE  ----------------------------------------------|\n");
	printf("|------------------------------------------------------------------------------------|\n");
	printf("|-            Shroder(n)            |   Version 1   |   Version 2   |   Version 3   -|\n");
	printf("|------------------------------------------------------------------------------------|\n");

	for(int i = 0; i < table_size; i++) {
		MULTS = 0; dynamic_shroder_v1(i); unsigned int MULTS_v1 = MULTS; 
		MULTS = 0; dynamic_shroder_v2(i); unsigned int MULTS_v2 = MULTS; 
		MULTS = 0; 
		unsigned long long int aux = dynamic_shroder_v3(i); 

		printf("| shroder(%2d) = %19lld |   %9d   |   %9d   |   %9d    |\n", i, aux, MULTS_v1, MULTS_v2, MULTS);
	}

	printf("|------------------------------------------------------------------------------------|\n");
	printf("--------------------------------------------------------------------------------------\n");

	// printf("--- RECURSIVE v1\n");
	// for (int i = 0; i < 13; i++) {
	// 	MULTS = 0;
	// 	printf("shroder(%d) = %lld\n", i, recursive_shroder_v1(i));
	// 	printf("MULTS = %d\n", MULTS);
	// }

	// printf("\n--- RECURSIVE v2\n");
	// for (int i = 0; i < 13; i++) {
	// 	MULTS = 0;
	// 	printf("shroder(%d) = %lld\n", i, recursive_shroder_v2(i));
	// 	printf("MULTS = %d\n", MULTS);
	// }

	// printf("\n--- RECURSIVE v3\n");
	// for (int i = 0; i < 13; i++) {
	// 	MULTS = 0; ADDS = 0;
	// 	printf("shroder(%d) = %lld\n", i, recursive_shroder_v3(i));
	// 	printf("MULTS = %d; ADDs = %d\n", MULTS, ADDS);
	// }

	// printf("\n--- DYNAMIC v1\n");
	// for (int i = 0; i < 13; i++) {
	// 	MULTS = 0;
	// 	printf("shroder(%d) = %lld\n", i, dynamic_shroder_v1(i));
	// 	printf("MULTS = %d\n", MULTS);
	// }

	// printf("\n--- DYNAMIC v2\n");
	// for (int i = 0; i < 13; i++) {
	// 	MULTS = 0;
	// 	printf("shroder(%d) = %lld\n", i, dynamic_shroder_v2(i));
	// 	printf("MULTS = %d\n", MULTS);
	// }

	return 0;
}

// shroder(0) = 1
// shroder(1) = 1 + 1*1 = 2
// shroder(2) = 2 + 1*2 + 2*1 = 6
// shroder(3) = 6 + 1*6 + 2*2 + 6*1 = 22
// shroder(4) = 22 + 1*22 + 2*6 + 6*2 + 22*1 = 90