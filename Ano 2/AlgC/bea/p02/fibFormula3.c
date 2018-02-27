#include <stdio.h>
#include <math.h>
#include "elapsed_time.h"
typedef unsigned long long int u64;

long double C1 = 0.447213595499957939281834733746255247088123671922305144854; // = 1/sqrt(5)
long double C2 = 0.481211825059603447497758913424368423135184334385660519661; // = ln(GOLDEN_NUM) // natural log

u64 fibonacci(int n) {
	return roundl(C1 * expl(n * C2));
}

int main() {
	printf("INDEX\t| \tFIBONACCI_NUM\t | ELAPSED_TIME\n");
	printf("-------------------------------------------------------\n");

	for(int i = 0; i < 100; i++) {
		(void)elapsed_time();
		u64 aux =  fibonacci(i);
		double dt = elapsed_time();

		printf("%2d  - %18llu\t | %10f\n", i, aux, dt);
	}
}