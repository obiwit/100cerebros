#include <stdio.h>
#include <string.h> // for strcspn

int main(int argc, char* argv[]) {

	char name[50];

	puts("What's your name?");

	//scanf("%s", name);
	fgets(name, 50, stdin);

    // Remove potential \n
    name[strcspn(name, "\n")] = 0;

	printf("Hello, %s!\n", name);

	return 0;
}