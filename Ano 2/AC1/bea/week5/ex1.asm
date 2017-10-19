	.data
lista:	.space 20  # 5*4 = 20
str:	.asciiz "\nIntroduza um numero: "

	.eqv SIZE, 5
	.eqv print_string, 4
	.eqv read_int, 5

	.text
	
	.globl main
main:
	# i > $t0				# #define SIZE 5
	or $t0, $0, $0				# void main(void)
						# {
	# *lista[0] > $t1			#
	la $t1, lista				#     static int lista[SIZE]; 		// declara um array de inteiros
						# 					//  residente no segmento de dados
	# *str > $t2				#
	la $t2, str				#
						#
	# *lista[0] + 4*i > $t3			#
	or $t3, $0, $t1				#	
						#
for:	beq $t0, SIZE, endFor			#     int i;
						#
	ori $v0, $0, print_string		#     for(i=0; i < SIZE; i++)
	or  $a0, $0, $t2			#     {
	syscall					#     
						#         print_string("\nIntroduza um numero: ");
						# 		
	ori $v0, $0, read_int			#	  lista[i] = read_int();
	syscall					#
						#
	# save lista[i] in external memory	#
	sll $t3, $t0, 2				#
	addu $t3, $t1, $t3			#		
	#addi $t1, $t1, 4	# <- if we were using pointers
	sw $v0, 0($t3)				#		
						#
	addi $t0, $t0, 1			# 
	j for					#
endFor:						#     }
	jr $ra					# }
