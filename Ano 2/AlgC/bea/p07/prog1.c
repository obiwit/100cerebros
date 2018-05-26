#include <stdio.h> 

int MULTS = 0;

double power(double x, unsigned int n) {
	// sanity check
	// if (n<0) return -1.0;

	if (n == 0) return 1.0;
	// if (n == 1) return x;
	MULTS += 1;
	return x*power(x, n-1);
}

double power_v2(double x, unsigned int n) {
	// sanity check
	// if (n<0) return -1.0;

	if (n == 0) return 1.0;

	double aux = power_v2(x, n/2);	
	if (n % 2 == 0) {
		MULTS += 1;
		return aux*aux;
	}
	else {
		MULTS += 2;
		return x*aux*aux;
	}
}

int main() {
	double d = 0.5;

	printf("--- VERSION 1\n");
	for (int i = 1; i < 17; i++) {
		MULTS = 0;
		printf("%.6f to the power of %d = %f\t", d, i, power(d, i));
		printf("-------------> MULTS = %d\n", MULTS);
	}

	printf("\n--- VERSION 2\n");
	for (int i = 1; i < 17; i++) {
		MULTS = 0;
		printf("%.6f to the power of %d = %f\t", d, i, power_v2(d, i));
		printf("-------------> MULTS = %d\n", MULTS);
	}

	return 0;
}