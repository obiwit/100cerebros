	
# include <stdio.h>
# include <stdint.h>

int main(int argc, char **argv) {
	long val = 0x862A5C1B;

	printf("0x0000000%X ", ((val & 0x0000F000) >> 12)); // Digito 3
	printf("%c ", ' ');
	printf("0x0000000%X " , ((val & 0x00000F00) >> 8)); // Digito 2
	printf("%c ", ' ');
	printf("0x0000000%X ", ((val & 0x000000F0) >> 4)); // Digito 1
	printf("%c ", ' ');
	printf("0x0000000%X ", val & 0x0000000F); // Digito 0

	return 0;
}
