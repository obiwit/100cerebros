#include <stdio.h>

int MULTS = 0;

int nth_fibonacci(int n) {
	if (n == 0 || n == 1)
		return n;

	MULTS += 2;
	return 3*nth_fibonacci(n-1) + 2*nth_fibonacci(n-2);
}

void dynamic_fibonacci(int* a, int n) {
	MULTS = 0;

	a[0] = 0; a[1] = 1;
	printf("fibonacci[%d] = %d\t", 0, a[0]);
	printf("MULTS = %d\n", MULTS);
	printf("fibonacci[%d] = %d\t", 1, a[1]);
	printf("MULTS = %d\n", MULTS);	

	for (int i = 2; i < n; ++i) {
		MULTS += 2;
		a[i] = 3*a[i-1] + 2*a[i-2];
		printf("fibonacci[%d] = %d\t", i, a[i]);
		printf("MULTS = %d\n", MULTS);
	}
}

int main() {
	int n = 13;

	printf("RECURSIVE VERSION\n");
	for(int i = 0; i<n; i++) {
		MULTS = 0;
		printf("fibonacci[%d] = %d\t", i, nth_fibonacci(i));
		printf("MULTS = %d\n", MULTS);
	}

	printf("\nDYNAMIC VERSION\n");
	int a[n];
	MULTS = 0;
	dynamic_fibonacci(a, n);
	// for(int i = 0; i<n; i++) {
	// 	printf("fibonacci[%d] = %d\t", i, a[i]);
	// 	printf("MULTS = %d\n", MULTS);
	// }

	return 0;
}