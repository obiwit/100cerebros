# Guião 2, Ex 3 d)
# Directives
# Pedro Teixeira, MIECT, 84715

# ---------------------------------------------------

	.data

	.align 2

strA: 	.asciiz "Introduza 2 numeros: \n"
strB: 	.asciiz "A soma dos dois numeros: "
	
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv read_int, 5
	
	
	.text
	.globl main
	
main: 	
	la $a0, strA 			# print_string("Introduza 2 numeros ");
	ori $v0,$0, print_string 
	syscall
	
	ori $v0,$0,read_int		# a = read_int();
	syscall
	or $t0,$v0,$0
							
	ori $v0,$0,read_int		# b = read_int();
	syscall				
	
	add $t0, $v0, $t0		# a + b 
	
	la $a0, strB			# print_string("A soma dos dois numeros e': ");
	ori $v0,$0, print_string 
	syscall		
					
	or $a0, $0, $t0			# print_int(a + b);
	ori $v0, $0, print_int10
	syscall
	
	jr $ra 
	
