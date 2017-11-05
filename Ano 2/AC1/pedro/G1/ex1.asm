# --------------------------------
# Guião 1, Ex 1
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

	.data
				# nada a colocar aqui, de momento
	.text
	.globl main		# Define o ponto de entrada do programa

main: 	ori $t0,$0,3		# $t0 = x (substituir val_x pelo # valor de x pretendido)
	ori $t2,$0,8 		# $t2 = 8
	add $t1,$t0,$t0 	# $t1 = $t0 + $t0 = x + x = 2 * x
	add $t1,$t1,$t2 	# $t1 = $t1 + $t2 = y = 2 * x + 8
	jr $ra 			# fim do programa
