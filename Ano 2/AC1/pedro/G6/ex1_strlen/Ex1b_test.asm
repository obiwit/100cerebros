# --------------------------------
# Guião 6, Ex 1b
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of strlen subroutine 

# Map of registers:
# $t0 : s
# $t1 : len			
# $t2 : *s
			
	.data			
	.eqv print_int10, 1		
	.eqv print_str, 4		
str:	.asciiz "Arquitectura de Computadores I"
	
	.text		
	.globl main			
							
strlen:				# int strlen(char *s) {
	li $t1, 0		# 	int len=0;
		
while:  lb    $t2, 0($a0)		# *s
	addiu $a0, $a0, 1		# *s++
	beq  $t2, '\0', endW		# 	while(*s++ != '\0')
        addi $t1, $t1, 1		# 		len++
	j while
endW:	move $v0, $t1		# 	return len;
				# }							
	jr $ra

##########################################################################	
##########################################################################	

main:  
	subiu $sp, $sp, 4	# store $ra at stack	
	sw $ra, 0($sp)
	la $a0, str
	
	jal strlen		
	move $t0, $v0
		
	li $v0, print_int10	#	print_int10(length);
	move $a0, $t0
	syscall
	
	li $v0, 0		# return 0
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
