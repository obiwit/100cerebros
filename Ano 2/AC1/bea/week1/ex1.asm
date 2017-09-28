	.data
				# nada a colocar aqui, de momento
	.text 
	.globl main 
main: 	ori $v0, $0, 5		# 5 => syscall "read_int()"
	syscall			# chamada ao syscall "read_int()"; $v0 = valor lido do teclado
	or $t0, $0, $v0 	# (e so or [vs. ori] porque ja nao e imediato)

	ori $t2,$0,8 		# $t2 = 8
	add $t1,$t0,$t0 	# $t1 = $t0 + $t0 = x + x = 2*x 
	sub $t1,$t1,$t2 	# $t1 = $t1 + $t2 = y = 2*x + 8
	
	or $a0, $0, $t1
	ori $v0, $0, 36		# 1 => "print_int10()"; 34 => "print_int16()"; 36 => "print_intu10()"
	syscall			# chamada ao syscall "print_int10()"	
	
	jr $ra			# fim do programa

