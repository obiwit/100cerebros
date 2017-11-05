# include <stdio.h>
int main(void)
{
	int soma, value, i;
	for(i=0, soma=0; i < 5; i++)
	{
		printf("Introduza um numero: ");
		value = scanf("%d", &value);
		if(value > 0)
			soma = soma + value;
		else
			printf("Valor ignorado\n");
	}
	printf("A soma dos positivos e': ");
	printf("%d", soma);

	return 0;
}

