#include <stdio.h>
#include <math.h>
#include "elapsed_time.h"
typedef unsigned long long int u64;

long double GOLDEN_NUMBER = (1 + sqrtl(5)) / 2; // (1+sqrt(5))/2

u64 fibonacci(int n) {
	return floorl(powl(GOLDEN_NUMBER, n) / sqrtl(5));
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