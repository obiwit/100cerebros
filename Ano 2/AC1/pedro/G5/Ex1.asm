# --------------------------------
# Guião 5, Ex 1
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Mapa de registos
# i         : $t0
# lista     : $t1
# lista + i : $t2

	.data
	.eqv SIZE 5 		#define SIZE 5
str:	.asciiz	"\nIntroduza um número: "
	.align 2
list:	.space 20		# static int lista[SIZE]
	.eqv read_int, 5
	.eqv print_string, 4
	
	.text
	.globl main
	
main:	li $t0, 0		# i = 0	
while:	beq $t0, SIZE, endW	# while (i < size) {
	
	la $a0, str 		# 	print_string(str)			
	li $v0, print_string
	syscall
			
	li $v0, read_int	#	 read_int()
	syscall
	
	la $t1, list		# 	$t1 = &list[0]
	sll $t2, $t0, 2
	
	addu $t2, $t2, $t1	# 	$t2 = &list[i]
	sw $v0, 0($t2)		# 	lista[i] = read_int();		
														
	addi $t0, $t0, 1	# 	i++
	j while
endW: 				# }
	jr $ra			# Exit Program
				
	
