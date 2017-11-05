# --------------------------------
# Guião 6, Ex 2b
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of strrev subroutine

	.data
str:	.asciiz "ITED - orievA ed edadisrevinU"		# 	static char str[]="ITED - orievA ed edadisrevinU";
	.align 2
	.eqv print_string, 4
	
	.text
	.globl main
main:				# int main(void) {
			
	subiu $sp, $sp, 4 	# save $ra register ("callee-saved")
	sw $ra, 0($sp)		
			
	la $a0, str
	jal strrev		# $v0 = strrev(str) 
	
	move $a0, $v0		# $t0 = $v0
	
	li $v0, print_string	# 	print_string( strrev(str) );
	syscall			
	
	li $v0, 0		# 	return 0;
	
	lw $ra, 0($sp)		# resets $ra
	addiu $sp, $sp, 4
	
	jr $ra			# }
