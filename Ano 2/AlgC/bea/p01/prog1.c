#include <stdio.h>

// int NUM_ADDS_F1;
// int NUM_ADDS_F2;
// int NUM_ADDS_F3;

int f1 (int n) {
	int i, j, r = 0;
	for (i = 1; i <= n; i++) 
		for (j = 1; j <= n; j++) {
			r += 1; 
			// NUM_ADDS_F1++;
		}
	return r;
}	

int f2 (int n) {
	int i, j, r = 0;
	for (i = 1; i <= n; i++)
		for (j = 1; j <= i; j++) {
			r += 1; 
			// NUM_ADDS_F2++;
		}
	return r;
}	

int f3 (int n) {
	int i, j, r = 0;
	for (i = 1; i <= n; i++) 
		for (j = i; j <= n; j++) {
			r += j; 
			// NUM_ADDS_F3++;
		}
	return r;
}	

int main(void) {

	printf("-------------------------------------------------\n");
	printf("|\tf1\t|\tf2\t|\tf3\t|\n");
	printf("-------------------------------------------------\n");

	for(int i = 1; i <= 10; i++) {

		// NUM_ADDS_F1 = 0;
		// NUM_ADDS_F2 = 0;
		// NUM_ADDS_F3 = 0;

		printf("|\t%d\t|\t%d\t|\t%d\t|\n", f1(i), f2(i), f3(i));
	}
	printf("-------------------------------------------------\n");

	return 0;
}