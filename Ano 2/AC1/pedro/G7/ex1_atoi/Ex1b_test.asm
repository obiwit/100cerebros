# --------------------------------
# Guião 7, Ex 1b
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of atoi subroutine

# Map of Registers:
# digit : $t0
# res   : $v0 
# s     : $a0
# *s    : $t3
# digit	: $t4

	.data
s:	.asciiz "2016 e 2020 sao anos bissextos"
	.eqv print_int10, 1
	.align 2
	
	.text		
	.globl 	main

main:
	subiu $sp, $sp, 4	# saves $ra
	sw $ra, 0($sp)
	
	la $a0, s		
	jal atoi
	
	move $a0, $v0
	li $v0, print_int10	# 	print_int10("atoi[str]");
	syscall			
	
	lw $ra, 0($sp)		# restores $ra
	addiu $sp, $sp, 4
	
	li $v0, 0
	
	jr $ra
				