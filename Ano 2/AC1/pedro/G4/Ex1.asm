# --------------------------------
# Guião 4, Ex 1
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Mapa de registos
# num     : $t0
# i   	  : $t1
# &str[0] : $t2
# str+i   : $t3
# str[i]  : $t4

	.data	
	.eqv SIZE, 20					# #define SIZE 20
	.eqv read_string, 8
	.eqv print_int10, 1
str:	.space SIZE					#    static char str[SIZE];  	// Reserva espaço para um array de "SIZE" carateres no segmento de dados
	.text
	.globl main
	
main:							#void main (void)
							#{
	la  $a0, str					#
	ori  $v0, $0, read_string				#
	li  $a1, SIZE					#    read_string(str, SIZE);	// "str" é o endereço inicial do
	syscall						#				//  espaço reservado para alojar a
							#				//  string (na memória externa)
	
	ori  $t0, $0, 0					#    num = 0;
	ori  $t1, $0, 0					#    i = 0;
	
while:							#    // Acede ao carater (byte) na
	la   $t2, str					#    //  posição "i" do array e compara-o
	addu $t3, $t2, $t1				#    //  com o carater terminador (i.e.
	lb   $t4, ($t3) 					#    //  '\0' = 0x00)
	
	beq  $t4, '\0', endLoop				#    while( str[i] != '\0' ) {
if:	blt  $t4, '0', endIf				#	if( (str[i] >= '0') && (str[i] <= '9') ) {
	bgt  $t4, '9', endIf				#
	addi $t0, $t0, 1				#		num++;

endIf:  						#	}
	addi $t1, $t1, 1				#	i++;
	j while						#    }
							
endLoop:ori $v0, $0, print_int10			#    print_int10(num);
	or $a0, $0, $t0
	syscall
	
	jr $ra						#}
							
							