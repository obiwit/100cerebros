	.data
	.text
	.globl main

main: 	
	ori $v0,$0,5		# System Call read_int ($v0 = 5)
	syscall

	or  $t0,$0,$v0		# x ($t0) = $v0
	ori $t2,$0,8 		# $t2 = 8
	add $t1,$t0,$t0 	# $t1 = $t0 + $t0 = x + x = 2 * x add is signed (addu is unsigned)
	sub $t1,$t1,$t2 	# $t1 = $t1 - $t2 = y = 2 * x - 8
	
	or  $a0,$0,$t1		# Copy value to print from $t1 to $a0
	ori $v0,$0,36		# System call print_int10(int value) ($v0 = 1)
	syscall
	
	jr $ra 			# fim do programa