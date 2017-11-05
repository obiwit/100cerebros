# --------------------------------
# Guião 6, Ex 1
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# strlen    
# param   $a0: char *s (pointer to a String)
# returns $v0: the length of a string

# Map of registers:
# $t0 : s
# $t1 : len			
			
	.data			
			
	.text		
	.globl strlen			
							
strlen:				# int strlen(char *s) {
	li $t1, 0		# 	$t1 = int len = 0
	move $t0, $a0		# 	$a0 = char* s
	
while:  lb $t2, 0($t0)		#	*s++
	beq $t2, '\0', endW	# 	while(*s++ != '\0') {
        addu $t1, $t1, 1	# 		len++
   	addu $t0, $t0, 1	#		*s++
	j while			# 	}
endW:	
	move $v0, $t1		# 	return len;								
	jr $ra			# }
