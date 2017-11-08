# --------------------------------
# Função auxiliar printbase info
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

	.data
	.eqv print_int10, 1
	.eqv print_string, 4

str1:	.asciiz "Base "		
str2:	.asciiz ": "		
	.text
	.globl printbaseinfo

printbaseinfo:
	move $t0, $a0
	jal println
	
	la $a0, str1			# Print "Base"
	li $v0, print_string
	syscall	
					 
	li $v0, print_int10	 	# Print base number (arg $a0 stored in $t0)
	syscall
	
	la $a0, str2			# Print ":"
	li $v0, print_string
	syscall	
	
	jr $ra
