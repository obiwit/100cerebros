# Guião 2, Ex 3 c)
# Directives
# Pedro Teixeira, MIECT, 84715

# ---------------------------------------------------

	.data
str1: 	.asciiz "So para chatear"
str2: 	.asciiz"AC1 – aulas praticas"
	.eqv print_string,4

	.text
	.globl main
	
main: 	
	la $a0,str2 	# instrução virtual, decomposta pelo
			# assembler em 2 instruções nativas
	
	ori $v0,$0,print_string # $v0 = 4
	syscall			# print_string(str2);
	
	jr $ra 
	
