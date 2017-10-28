	.data
	.eqv print_str, 4
str:	.asciiz "ITED - orievA ed edadisrevinU"

	.text
	.globl main
	
###################################################################################	
#		char* strrev(char* str)
###################################################################################

# Mapa de registos:
# str	>  $a0 -> $s0 (argumento é passado em $a0)
# p1	>  $s1  (registo callee-saved)
# p2	>  $s2  (registo callee-saved)
# *p1	>  $t0
# *p2	>  $t1

strrev:
	subu $sp, $sp, 16		# reserva espaço na stack
	sw $ra, 0($sp)			# guarda endereço de retorno
	sw $s0, 4($sp)			# guarda valor dos registos
	sw $s1, 8($sp)			#   $s0, $s1 e $s2
	sw $s2, 12($sp) 		# 
	move $s0, $a0  			# registo "callee-saved"
	move $s1, $a0  			# p1 = str
	move $s2, $a0 			# p2 = str
					#
	lb $t0, 0($s1)			#
	lb $t1, 0($s2)			#
					#
while1:	beq $t1, '\0', endWhile1	# while(*p2 != '\0')
	addiu $s2, $s2,	1		#     p2++;
	lb $t1, 0($s2)			#
	j while1			#
endWhile1:				#
	subiu $s2, $s2,	1		# p2--;
					#
while2:	bge $s1, $s2, endWhile2		# while( p1 < p2 )
					# {
	move $a0, $s1			#
	move $a1, $s2			#
	jal exchange			#     exchange(p1, p2);
					#
	addiu $s1, $s1,	1		#     p1++;
	subiu $s2, $s2,	1		#     p2--;
	j while2			#
endWhile2:				# }
					#
	move $v0, $s0			# // (move str to v0, and restore previus register values)
	lw $ra, 0($sp)			#
	lw $s0, 4($sp)			#
	lw $s1, 8($sp)			#
	lw $s2, 12($sp)			#
	addu $sp, $sp, 16		# 
					#
	jr $ra				# return str;

	
###################################################################################	
#		void exchange(char *c1, char *c2)
###################################################################################
		
# Mapa de registos:
# c1 	> $a0
# c2 	> $a1
# ( *c1 > $t0 )
# *c2 	> $t1
# aux 	> $t2

exchange:				# void exchange(char* c1, char* c2)
					# {
	lb $t2, 0($a0)			#     char aux = *c1;
	lb $t1, 0($a1)			#
					#
	sb $t1, 0($a0)			#     *c1 = *c2;
	sb $t2, 0($a1)			#     *c2 = aux;
					#
	jr $ra				# }

	
###################################################################################	
#		int main(void)
###################################################################################

main:					# int main(void)
	# save $ra before		# {
	# calling a function		#
	subiu $sp, $sp, 4		#
	sw $ra, 0($sp)			#    static char str[]= "ITED - orievA ed edadisrevinU";
					#
	la $a0, str			#     print_string( strrev(str) );
	jal strrev			#
					#
	move $a0, $v0			#
	ori $v0, $0, print_str		#
	syscall				#
					#
	lw $ra, 0($sp)			#
	addiu $sp, $sp, 4		#
					#
	ori $v0, $0, 0			#     return 0;
	jr $ra				# }