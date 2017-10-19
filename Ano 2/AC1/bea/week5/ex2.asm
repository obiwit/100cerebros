	.data
							
	.eqv SIZE, 10					# #define SIZE 10
	.eqv print_string, 4
	.eqv print_int10, 1
	
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
str1: 	.asciiz "\nConteudo do array:\n"
str2: 	.asciiz "; "

	.text
	
	.globl main
							#  void main(void)
main:							#  {
	# p = lista = *lista[0] > $t0			# 	static int lista[]={8, -4, 3, 5, 124, -15, 87, 9, 27, 15}; 
	la $t0, lista					# 	int *p; 	// Declara um ponteiro para inteiro (reserva
							#                   	//  espaço para o ponteiro, mas não o inicializa)
	# lista + SIZE > $t1				#    
	ori $t1, $0, SIZE	# size in words		#
	sll $t1, $t1, 2		# size in bytes		#
	addu $t1, $t0, $t1				#
							#
	ori $v0, $0, print_string			#     print_string("\nConteudo do array:\n");
	la $a0, str1					#
	syscall 					#
							#     for(p = lista; p < lista + SIZE; p++) {
for:	bge $t0, $t1, endFor				#
							#
	ori $v0, $0, print_int10			#     	   print_int10( *p );		// Imprime o conteúdo da posição do
	lw $a0, 0($t0)					# 					//  array cujo endereço é "p"
	syscall						#
							#
	ori $v0, $0, print_string			# 	   print_string("; ");
	la $a0, str2					#
	syscall						#
							#
	addu $t0, $t0, 4				#
							# 
	j for						#
endFor:							#     }
	jr $ra						# }
