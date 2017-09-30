# Guião 2, Ex 2
# Shift Instructions
# Pedro Teixeira, MIECT, 84715

# ---------------------------------------------------
# val_1 >> $t0
# Results from sll, srl, sra, >> $t2 to $t4
	
	.data
	.text
	.globl main
	
main:	ori $t0, $0, 0x862A5C1B	# unsigned long val_1 = 0x12345678;
	
	sll $t2, $t0, 4 	# Left Shift
	srl $t3, $t0, 4		# Logical    Right Shift
	sra $t4, $t0, 4		# Arithmetic Right Shift
	
				# Print  ---------------------------------------------------
				
				# Print value @ $t2
	ori $v0,$0,34		# System call print_int10(int value) ($v0 = 1)
	or  $a0,$0,$t2		# Copy value to print from $t2 to $a0
	syscall
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
				
				# Print value @ $t3
	ori $v0,$0,34		# return syscall to print int
	or  $a0,$0,$t3		# Copy value to print from $t3 to $a0
	syscall
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	
				# Print value @ $t4
	ori $v0,$0,34		# return syscall to print int
	or  $a0,$0,$t4		# Copy value to print from $t4 to $a0
	syscall
	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A
	syscall
	
	jr $ra