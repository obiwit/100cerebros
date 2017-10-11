	.data
	.eqv SIZE, 20					#define SIZE 20
	.eqv read_string, 8
	.eqv print_int10, 1
	
str:	.space SIZE					#    static char str[SIZE];  	// Reserva espaço para um array 
							#				//"SIZE" carateres no segmento de
							#				// dados
	
	.text						
	.globl main						
main:							#void main (void)
							#{
							#    static char str[SIZE];  	// Reserva espaço para um array de
							#				//"SIZE" carateres no segmento de
							#				// dados
							#
							#    int num, i; 		// num > $t0, i > $t1
							#
	ori $v0, $0, read_string			#    read_string(str, SIZE);	// "str" é o endereço inicial do
	la  $a0, str					#				//  espaço reservado para alojar a
	ori $a1, $0, SIZE				#				//  string (na memória externa)
	syscall						#
							#
	ori $t0, $0, 0					#    num = 0;
	ori $t1, $0, 0					#    i = 0;
							#
while:	la $t2, str					#    // str > $t2
	addu $t3, $t2, $t1				#    // &str[i] > $t3
	lb $t4, ($t3)					#    // str[i] > $t4
	beq $t4, '\0', endWhile				#    while( str[i] != '\0' ) { 	// Acede ao carater (byte) na				
							#				//  posição "i" do array e compara-o
							#				//  com o carater terminador (i.e.
							#				//  '\0' = 0x00)
if:	blt $t4, '0', endIf				#
	bgt $t4, '9', endIf				#	if( (str[i] >= '0') && (str[i] <= '9') ) {
	addi $t0, $t0, 1				#		num++;
							#	}
endIf:	addi $t1, $t1, 1				#	i++;
	j while						#    }
endWhile:						#
	ori $v0, $0, print_int10			#    print_int10(num);
	or $a0, $0, $t0					#
	syscall						#
							#
	jr $ra						#}