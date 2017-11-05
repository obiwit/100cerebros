#define SIZE 5
int main(void)
{
	static int lista[SIZE]; // declara um array de inteiros
	// residente no segmento de dados
	int i;
	for(i=0; i < SIZE; i++)
	{
		printf("\nIntroduza um numero: ");
		lista[i] = read_int();
	}
	return 0;
}