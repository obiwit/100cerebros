# --------------------------------
# Guião 7, Ex 2 
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Testing itoa subroutine
# Map of registers:
# $s0 : val

	.data
	.eqv read_int, 5
	.eqv print_string, 4
	.eqv MAX_STR_SIZE, 33	# define MAX_STR_SIZE 33
str:	.space 33		# static char str[MAX_STR_SIZE]
	.text
	.globl main
	
main:				# int main(void) {
				
	subiu $sp, $sp, 12	# Save $ra, $s registers
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	
do:				# 	do {
	li $v0, read_int	# 		val = read_int();
	syscall
	move $s0, $v0		#		val -> $s0
	
	jal println	
			
	move $a0, $s0		#		itoa(val, 2, str)
	li $a1, 2
	la $a2, str
	jal itoa
	
	li $a0, 2
	jal printbaseinfo
	
	move $a0, $v0		# 		print_string( itoa(val, 2, str) );
	li $v0, print_string
	syscall			
				
				#		--------------------------------
	jal println
	move $a0, $s0		#		itoa(val, 8, str)
	li $a1, 8
	la $a2, str
	jal itoa
	
	li $a0, 8
	jal printbaseinfo
				
	move $a0, $v0		# 		print_string( itoa(val, 8, str) );
	li $v0, print_string
	syscall	
				
				#		--------------------------------
	jal println
	move $a0, $s0		#		itoa(val, 16, str)
	li $a1, 16
	la $a2, str
	jal itoa
	
	li $a0, 16
	jal printbaseinfo
	
	move $a0, $v0		# 		print_string( itoa(val, 16, str) );
	li $v0, print_string
	syscall			
	
	jal println
	jal println
	
endDo:	bne $s0, 0, do		# 	} while(val != 0);
		
	li $v0, 0		# 	return 0;
	
	lw $ra, 0($sp)		# Restore $ra, $s registers
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	addiu $sp, $sp, 12
	
	jr $ra			# }
