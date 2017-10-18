	.data
	.eqv SIZE, 20					#define SIZE 20
	.eqv read_string, 8
	.eqv print_int10, 1
	
str:	.space SIZE					#    static char str[SIZE];  	// Reserva espaço para um array 
							#				//"SIZE" carateres no segmento de
							#				// dados
	
	.text						
	.globl main						
main:							#{
							#    static char str[SIZE];  	// Reserva espaço para um array de
							#				//"SIZE" carateres no segmento de
							#				// dados
							#
							#    int num; 		// num > $t0, p > $t1
							#    char *p; // Declara um ponteiro para carater
							#    // (não há qualquer inicialização)
							#
	ori $v0, $0, read_string			#    read_string(str, SIZE);	// "str" é o endereço inicial do
	la  $a0, str					#				//  espaço reservado para alojar a
	ori $a1, $0, SIZE				#				//  string (na memória externa)
	syscall						#
							#
							#
	ori $t0, $0, 0					#    num = 0;
	la $t1, str					#    p = str; 	// Inicializa o ponteiro "p" com o
							#		//  endereço inicial da string
							#		//  (equivalente a fazer p = &(str[0]))		
							#
while:	lb $t2, ($t1)					#    // *p > $t2
	beq $t2, '\0', endWhile				#    while(*p!='\0') 	//Acede ao byte apontado pelo ponteiro
							#			// "p" (*p) e compara o valor lido com
							#			//  o carater terminador ('\0' = 0x00)
if:	blt $t2, '0', endIf				#
	bgt $t2, '9', endIf				#	if( (*p >= '0') && (*p <= '9') ) {
	addi $t0, $t0, 1				#		num++;
							#	}
endIf:	addi $t1, $t1, 1				#	p++; 	// Incrementa o ponteiro (o ponteiro
							#		// passa a ter o endereço da posição
							#		//  seguinte do array)
	j while						#    }
endWhile:						#
	ori $v0, $0, print_int10			#    print_int10(num);
	or $a0, $0, $t0					#
	syscall						#
							#
	jr $ra						#}
