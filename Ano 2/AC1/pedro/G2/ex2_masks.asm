# Guião 2, Ex 2
# Shift Instructions with masks
# Pedro Teixeira, MIECT, 84715

# val >> $t0
# Results from And, Or, Nor, Xor, Not val_1, Not val_2 >> $t2 to $t7
	
	.data
	.eqv print_int16,34
	.eqv print_char,11
	.text
	.globl main
	
main: 	ori $t0,$0,0x862A5C1B 	# valor
				
				# ---------------------------------------------
				# Digito 3 (val & 0x0000F000) >> 12)
	andi $a0,$t0,0xF000 	# $a0 = $t0 & 0x0000F000 (val & 0x0000F000)
	srl $a0,$a0,12 		# $a0 = digito3 (val & 0x0000F000) >> 12
	
				# Print
	ori $v0,$0,print_int16  # assembl. substitui por 34
	syscall 		# print_int16(digito3)
	ori $v0,$0,print_char   
	ori $a0,$0,' '
	syscall 		# print_char(' ')
				
				# ---------------------------------------------
				# Dígito 2 (val & 0x00000F00) >> 8);
	andi $a0,$t0,0x0F00 	# $a0 = $t0 & 0x00000F00
	srl $a0,$a0,8 		# $a0 = digito2
	
				# Print
	ori $v0,$0,print_int16  
	syscall 		# print_int16(digito2)
	ori $v0,$0,print_char   
	ori $a0,$0,' '
	syscall 		
			
				# ---------------------------------------------
				# Dígito 1 (val & 0x00000F00) >> 8);
	andi $a0,$t0,0x00F0 	# $a0 = $t0 & 0x000000F0
	srl $a0,$a0,4 		# $a0 = digito1
	
				# Print
	ori $v0,$0,print_int16  
	syscall 		# print_int16(digito1)
	ori $v0,$0,print_char   
	ori $a0,$0,' '
	syscall 		
				
				# ---------------------------------------------
				# Dígito 0 (val & 0x00000F00) >> 8);
	andi $a0,$t0,0x000F 	# $a0 = $t0 & 0x0000000F
	
				# Print
	ori $v0,$0,print_int16  
	syscall 		# print_int16(digito0)
	ori $v0,$0,print_char   
	ori $a0,$0,' '
	syscall 		
				# ---------------------------------------------
	jr $ra 			# fim do programa