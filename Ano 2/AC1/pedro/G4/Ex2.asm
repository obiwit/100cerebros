# --------------------------------
# Guião 4, Ex 2
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Registers Map
# num : $t0
# p   : $t1 
# &p  : $t2

	.data	
	.eqv SIZE, 20		# define SIZE 20
	.eqv read_string, 8
	.eqv print_int10, 1
str:	.space SIZE

	.text
	.globl main	
			
main:						# void main (void) {
						# 	static char str[SIZE];  // Reserva espaço para um array de
						# 				// "SIZE" carateres no segmento de dados
	ori $t0, $0, 0				# 	int num = 0;
						# 	char *p; 		// Declara um ponteiro para carater
						# 		 		// (não há qualquer inicialização)
	ori $v0, $0, read_string 		#	read_string(str, SIZE); // Le do teclado uma string com um
	la  $a0, str				# 				// máximo de 20 carateres
	li  $a1, SIZE
	syscall					
	
	la  $t1, str				#	p = str; 		// Inicializa o ponteiro "p" com o
						#	 			// endereço inicial da string
						# 				// (equivalente a fazer p = &(str[0]))

	
	
while:  lb  $t2, ($t1)	
	beq $t2, '\0', endLoop 			# 	while( *p != '\0' ) {	// Acede ao byte apontado pelo ponteiro
if:  	blt $t2,  '0', endIf			# 				// "p" (*p) e compara o valor lido com
	bgt $t2,  '9', endIf			# 				// o carater terminador ('\0' = 0x00)
						# 			
						# 		if( (*p >= '0') && (*p <= '9') )
	addi $t0, $t0, 1			#			num++;
endIf:	addi $t1, $t1, 1			#		p++; 	// Incrementa o ponteiro (o ponteiro
	j while					# 			// passa a ter o endereço da posição
						# 			// seguinte do array)
						# 		}
endLoop:ori $v0, $0, print_int10		# 		print_int10(num);
	or  $a0, $0, $t0
	syscall
	  
	jr $ra					# 	}
