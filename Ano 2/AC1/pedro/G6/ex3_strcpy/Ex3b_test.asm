# --------------------------------
# Guião 6, Ex 3b
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Test of strcpy subroutine

	.data			
	.eqv print_string, 4 
	.eqv print_int10, 1
	
	.eqv STR_MAX_SIZE, 30		# define STR_MAX_SIZE 30
str1:	.asciiz	"Arquitectura de Computadores I"		# static char str1[]="I serodatupmoC ed arutetiuqrA";
str2:	.space 31			# static char str2[STR_MAX_SIZE + 1];		
str3:	.asciiz "\n"
str4:	.asciiz "String too long: "
					
	.text				# char *strcpy(char *dst, char *src);
	.globl main
	
	# Mapa de registos
	# strlen(str1) : $t0

main:					# int main(void) {
	subiu $sp, $sp, 4		#	Save $ra		
	sw $ra, 0($sp)
	
	la $a0, str1 			# 	strlen(str1)
	jal strlen
	move $t0, $v0

	bgt $t0, STR_MAX_SIZE, else	# 	if(strlen(str1) <= STR_MAX_SIZE) {
	la $a0, str2			# 		strcpy(str2, str1);
	la $a1, str1
	jal strcpy
	
	move $a0, $v0 			# 		print_string(str2);
	li $v0, print_string
	syscall				
					
	la $a0, str3			# 		print_string("\n");
	syscall				
					
					# 		print_string(strrev(str2));
	
	li $v0, 0			# 		exit_value = 0;
	j endIf				
else:					# 	} else {
	la $a0, str4			# 		print_string("String too long: ");
	li $v0, print_string
	syscall	
	
	move $a0, $t0			# 		print_int10(strlen(str1));
	li $v0, print_int10
	syscall	
	
	li $v0, -1			# 		exit_value = -1;
					# 	}
endIf:				
	lw $ra, 0($sp)			# 	restore $ra
	addiu $sp, $sp, 4
	
	jr $ra				# }
