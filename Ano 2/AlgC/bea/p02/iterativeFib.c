#include <stdio.h>
#include "elapsed_time.h"
typedef unsigned long long int u64;

u64 ADDITION_NUM = 0;

int main() {
	printf("INDEX\t| \tFIBONACCI_NUM\t | \tADDITION_NUM\t   | ELAPSED_TIME\n");
	printf("----------------------------------------------------------------------------\n");

	u64 most_recent_fibs[2] = {(u64)0, (u64)1};
	printf("0\t- %18llu\n", most_recent_fibs[0]);
	printf("1\t- %18llu\n", most_recent_fibs[1]);

	for(int i = 2; i < 94; i++) { // fib(94) > 2^64 -1
		(void)elapsed_time(); 

		u64 aux = most_recent_fibs[0] + most_recent_fibs[1];
		ADDITION_NUM += 1;

		most_recent_fibs[0] = most_recent_fibs[1];
		most_recent_fibs[1] = aux;
		double dt = elapsed_time();

		printf("%2d  - %18llu\t | ADDITION_NUM=%10llu  | %10f\n", i, aux, ADDITION_NUM, dt);
	}
}