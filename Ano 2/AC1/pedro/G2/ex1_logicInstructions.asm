# Guião 2, Ex 1
# Logic Instructions
# Pedro Teixeira, MIECT, 84715

# val_1 >> $t0, val_2 >> $t1
# Results from And, Or, Nor, Xor, Not val_1, Not val_2 >> $t2 to $t7

# C Soure Code: 
# unsigned long val_1 = 0x1234;
# unsigned long val_2 = 0x000F;

# val_1 & val_2        // AND
# val_1 | val_2        // OR
# ~(val_1 | val_2))    // NOR
# val_1 ^ val_2        // XOR
# ~ val_1              // NOT value1
# ~ val_2	       // NOT value2
	
	.data
	.text
	.globl main
	
main:	ori $t0, $0, 0xE543	# Load value into register $t0
	ori $t1, $0, 0x0614	# Load value into register $t1
	
				# The following operations are between values @$t0 and $t1
	and $t2, $t1, $t0 	# And operation
	or  $t3, $t1, $t0	# Or operation
	nor $t4, $t1, $t0	# Nor operation
	xor $t5, $t1, $t0 	# Xor operation
	
	nor $t6, $0,  $t0	# Not operation on value @$t0 
	nor $t7, $0,  $t1	# Not operation on value @$t1 	
	
				# Print  ---------------------------------------------------
	ori $v0,$0,34		# System call print_int10(int value) ($v0 = 1)
	
	or  $a0,$0,$t2		# Copy value to print from $t2 to $a0
	syscall
	
	
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	ori $v0,$0,34		# return syscall to print int
	
	
	or  $a0,$0,$t3		# Copy value to print from $t3 to $a0
	syscall

		
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	ori $v0,$0,34		# return syscall to print int
	
			
	or  $a0,$0,$t4		# Copy value to print from $t4 to $a0
	syscall
		
		
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	ori $v0,$0,34		# return syscall to print int
	

	or  $a0,$0,$t5		# Copy value to print from $t5 to $a0
	syscall
	
		
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	ori $v0,$0,34		# return syscall to print int
	

	or  $a0,$0,$t6		# Copy value to print from $t6 to $a0
	syscall
	
		
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	ori $v0,$0,34		# return syscall to print int
	

	or  $a0,$0,$t7		# Copy value to print from $t7 to $a0
	syscall
	
	jr $ra