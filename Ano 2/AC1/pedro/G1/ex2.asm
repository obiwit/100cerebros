# --------------------------------
# Guião 1, Ex 2
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

		.data
		.text
		.globl main

main: 	ori $t0,$0,3		# $t0 = x 
	ori $t2,$0,8 		# $t2 = 8
	add $t1,$t0,$t0 	# $t1 = $t0 + $t0 = x + x = 2 * x add is signed (addu is unsigned)
	sub $t1,$t1,$t2 	# $t1 = $t1 - $t2 = y = 2 * x - 8
	jr $ra 				# fim do programaP
