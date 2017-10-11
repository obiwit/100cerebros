	.data
	.eqv SIZE, 4					#define SIZE 4
	.eqv  print_int10, 1
	
	.align 2						
array:	.word 7692, 23, 5, 234				# int array[4] = {7692, 23, 5, 234}; 	// Declara um array global de 4
							# 					// posições e inicializa-o
	.text
	.globl main
main:							# void main (void)
							# {
							# 	int *p; // Declara um ponteiro para inteiro
	 						# 		// (não há qualquer inicialização)
	# int_array_size_in_bytes > $t0			#
	ori $t0, $0, SIZE				#
	sll $t0, $t0, 2     # int = 4 (2^2) bytes 	#
							# 	int *pultimo; // Declara um ponteiro para inteiro
							#
	# soma > $t1					#
	ori $t1, $0, 0					# 	int soma = 0;
							#
	# p > $t2					#	
	la $t2, array					# 	p = array; 	// "p" é incializado com o endereço
							# 			// incial do array
	# pultimo > $t3					#
	addu $t3, $t2, $t0				# 	pultimo = array+SIZE; 	// "pultimo" é inicializado com o
							# 				// endereço do elemento a seguir ao
							# 				// último (&array[4])
while:	bge $t2, $t3, endWhile				# 	while( p < pultimo )
							# 	{
	# *p > $t5					#
	lw $t5, 0, ($t2)				#
							#
	add $t1, $t1, $t5				# 		soma = soma + (*p);
							#
	addi $t2, $t2, 4				# 		p++; 	// Incrementa o ponteiro (não esquecer
							# 			// que incrementar um ponteiro para um
							# 			// inteiro de 32 bits significa somar a
	j while						# 			// quantidade 4 ao valor do endereço)
endWhile:						# 	}
							#
	ori $v0, $0, print_int10			# 	print_int10(soma);
	or  $a0, $0, $t1				#
	syscall						#
							#
	jr $ra						# }