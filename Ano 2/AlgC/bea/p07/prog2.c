#include <stdio.h> 

int DIVS = 0;

int is_power_of(int a, int b) {
	// base case
	if (a == b || a == 1) return 1;

	DIVS += 1;

	if (a%b == 0) {
		DIVS += 1;
		return is_power_of(a/b, b);
	}
	return 0;
}

void power_check(int a, int b) {
	DIVS = 0;

	if (is_power_of(a,b)) {
		printf("%2d is  a  power  of  %d!\t", a, b);
	}
	else {
		printf("%2d is not a power of %d!\t", a, b);
	}
	printf("DIVS = %d\n", DIVS);
}

int main() {
	int b = 3;

	for(int i = 1; i<29; i++)
		power_check(i, b);

	return 0;
}