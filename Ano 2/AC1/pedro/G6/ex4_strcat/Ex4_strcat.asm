# --------------------------------
# Guião 6, Ex 4
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# strrcpy    
# Concatenates two Strings
# param   $a0: char* dst 
# param   $a1: char* src 
# returns $v0: char* dst

# Map of Registers:
#  p: $s0
# *p: $s1

	.data
	.text
	.globl strcat
	
strcat:				# char *strcat(char *dst, char *src) {
	subiu $sp, $sp, 8	#	Save $ra, $a0		
	sw $ra, 0($sp)		
	sw $a0, 4($sp)
	
	move $t0, $a0		# 	char* p = dst;
while:	lb $t1, 0($t0)
	beq $t1, '\0', endW	# 	while(*p != '\0')
	addi $t0, $t0, 1	# 		p++;
	j while
endW:				

	move $a0, $t0		# 	strcpy(p, src);
	jal strcpy		# %a1 already has src pointer
	
	lw $ra, 0($sp)		#	Restore $ra, $a0	
	lw $v0, 4($sp)		# 	return dst;
	addiu $sp, $sp, 8
	
	jr $ra			# }