#include <stdio.h>
#include "elapsed_time.h"
typedef unsigned long long int u64;

u64 ADDITION_NUM = 0;

u64 fibonacci(int n) {
	if (n == 0) return 0;
	if (n == 1) return 1;
	ADDITION_NUM += 1;
	return fibonacci(n-1) + fibonacci(n-2);
}

int main() {
	printf("INDEX\t| \tFIBONACCI_NUM\t | \tADDITION_NUM\t   | ELAPSED_TIME\n");
	printf("----------------------------------------------------------------------------\n");

	for(int i = 0; i < 100; i++) {
		(void)elapsed_time(); 

		ADDITION_NUM = 0;
		u64 aux = fibonacci(i);
		double dt = elapsed_time();

		printf("%2d  - %18llu\t | ADDITION_NUM=%10llu  | %10f\n", i, aux, ADDITION_NUM, dt);
	}
}