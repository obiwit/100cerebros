# --------------------------------
# Guião 6, Ex 4b)
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of strcat subroutine

	.data
	.eqv print_str, 4
	.align 2
str1:	.asciiz"Arquitetura de "# 	static char str1[]="Arquitetura de ";
	.align 2
str2:	.space 50		# 	static char str2[50];
	.align 2
str3:	.asciiz"\nConcatenated: "#	"\n"	
	.align 2
str4:	.asciiz"Computadores I" #	"Computadores I"
	
	.text
	.globl main

main:				# int main(void) {
	subiu $sp, $sp, 4	# 	Save $ra register
	sw $ra, 0($sp)	
	
	la $a0, str2		# 	strcpy(str2, str1);
	la $a1, str1
	jal strcpy
	
	move $s0, $v0
	move $a0, $v0		# 	print_string(str2);
	li $v0, print_str			
	syscall			
	
	la $a0, str3		# 	print_string(str3);
	syscall			
				
	move $a0, $s0
	la $a0, str2		#	strcat(str2, str4)
	la $a1, str4			
	jal strcat
	
	move $a0, $v0		# 	print_string( strcat(str2, str4) );
	li $v0, print_str
	syscall					
				
	li $v0, 0		# 	return 0;
				
	lw $ra, 0($sp)		# 	Restore $ra register
	addiu $sp, $sp, 4

	jr $ra			# }
