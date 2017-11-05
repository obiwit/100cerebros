# --------------------------------
# Guião 7, Ex 1
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# atoi    
# param   $a0: char *s (pointer to a String)
# returns $v0: 32 bits integer equal to the quantity represented by a numeric string

	.text		
	.globl atoi
	
atoi:			# unsigned int atoi(char *s) {	
	li $t0, 0	# 	unsigned int digit, res = 0;

w1:	lb $t3, 0($a0)
	blt $t3, '0', endW		# 	while( (*s >= '0') && (*s <= '9') ) {
	bgt $t3, '9', endW		
					# 		digit = *s++ - '0';
	sub $t4, $t3, '0'
	addiu $a0, $a0, 1				
					
	mul $v0, $v0, 10		# 		res = 10 * res + digit;
	add $v0, $v0, $t4
	j w1
endW:			# 	}
	jr $ra		# 	return res;
			# }