	.data
	.eqv print_str, 4
	.eqv print_int, 1
str:	.asciiz "Arquitetura de Computadores I"
	
	.text
	.globl main
	
###################################################################################	
#		strlen
###################################################################################

# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx

# Mapa de registos:
# s	> $t0
# len 	> $t1
# *s 	> $t2

strlen:	li $t1, 0			# len = 0;
	move $t0, $a0			#
	lb $t2,	0($t0)			#
					#
while:	beq $t2, '\0', endWhile		# while(*s++ != '\0')
					# {
        addi $t1, $t1, 1 		#    len++;
        addi $t0, $t0, 1		#    // (s++)
	lb $t2,	0($t0)			#
	j while       			#
endWhile:      				# }
					#
        move $v0, $t1 			# return len;
        jr $ra
   
###################################################################################
#		main
###################################################################################
 
main:					# int main(void)
	# save $ra before		# {
	# calling a function		#
	subiu $sp, $sp, 4		#
	sw $ra, 0($sp)			#     static char str[]="Arquitetura de Computadores I";
					#
	la $a0, str			#     print_int10(strlen(str));
	jal strlen			#
					#
	move $a0, $v0			#
	ori $v0, $0, print_int		#
	syscall				#
					#
	lw $ra, 0($sp)			#
	addiu $sp, $sp, 4		#
					#
	ori $v0, $0, 0			#     return 0;
	jr $ra				# }