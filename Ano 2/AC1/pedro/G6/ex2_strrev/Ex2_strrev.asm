# --------------------------------
# Guião 6, Ex 2
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# strrev    
# param   $a0: char *str (pointer to a String)
# returns $v0: string reversed

	.data
	.align 2
	.text
	.globl strrev
		
# -------------------------------------------------------------------------		
exchange:			# void exchange(char* c1, char* c2) {
	lb $t0, 0($a0)		# 	char aux = *c1;
	lb $t1, 0($a1)
	
	sb $t1, 0($a0)		#     *c1 = *c2;
	sb $t0, 0($a1)		#     *c2 = aux;
	
	jr $ra			# }

# -------------------------------------------------------------------------		
strrev: 			# char* strrev(char* str) {
	subiu $sp, $sp, 16	# saves $s, $ra registers ("callee-saved")
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	
	move $s0, $a0		# IMPORTANT: I need to return str
	move $s1, $a0		# 	char* p1 = str;
	move $s2, $a0		# 	char* p2 = str;
	
	lb $t0, 0($s2)

whileA: 
	beq $t0, '\0', endWA	# 	while(*p2 != '\0')		: ok
	addiu $s2, $s2, 1	# 		p2++;
	lb  $t0, 0($s2)		# 		$t2 = *(p2++)
	j whileA	
endWA:	
	
	subiu $s2, $s2, 1	# 	p2--;

whileB:	bge $s1, $s2, endWB	# 	while( p1 < p2 ) {
	
	move $a0, $s1
	move $a1, $s2
	jal exchange		# 		exchange(p1, p2);
	
	addiu $s1, $s1, 1	#		p1++;
	subiu $s2, $s2, 1	# 		p2--;
	
	j whileB		# 	}
endWB:   			
	move $v0, $s0		# return str;
	
	lw $ra, 0($sp)		# restores registers
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	addiu $sp, $sp, 16
	
	jr $ra			# }