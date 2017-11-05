# --------------------------------
# Guião 5, Ex 4
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# Mapa de registos
# Read Array
# i         : $t0
# lista     : $t1
# lista + i : $t2

# Bubble Sort
# i 		: $t3
# houveTroca: $t4
# i * 4  	: $t5
# lista		: $t6
# lista + i : $t7
# lista[lista + i]

# Print Array
# p: $t3
# *p: $t4
# lista+Size: $t5

	.data
	.eqv SIZE, 10	#define SIZE 10
	.eqv TRUE, 1	#define TRUE 1
	.eqv FALSE,0	#define FALSE 0		
	.eqv print_int10, 1
	.eqv read_int, 5
	.eqv print_string, 4

	
strA:	.asciiz	"\nIntroduza um número: "
	.align 2
strB:	.asciiz "\nConteúdo do array:\n"
	.align 2
strC: 	.asciiz "; "
	.align 2
list:	.space 40 	#static int lista[SIZE];
	.align 2
			
	.text
	.globl main 	
	
main:				
				# -------------------------------------------------------------
				# Read array
	li  $t0, 0		# i = 0	
while1:	beq $t0, SIZE, endW1	# while (i < size) {
	
	la $a0, strA 		# 	print_string(str)			
	li $v0, print_string
	syscall
			
	li $v0, read_int	#	 read_int()
	syscall
	
	la  $t1, list		# 	$t1 = &list[0]
	sll $t2, $t0, 2
	
	addu $t2, $t2, $t1	# 	$t2 = &list[i]
	sw $v0, 0($t2)		# 	lista[i] = read_int();		
														
	addi $t0, $t0, 1	# 	i++
	j while1
endW1: 				# }
	 			
	 			# -------------------------------------------------------------
				# Bubble Sort (versão com ponteiros)
	
do:				# do {
	li $t3, FALSE		# 	houveTroca = FALSE;
	la $t4, list		#	p = lista
	
	li $t5, SIZE		# 	$t5 = size	
	sll $t5, $t5, 2		# 	$t5 = size * 4 (each word uses 4 positions in memory)
	addu $t5, $t5, $t4	# 	$t5 = $t5 + $t4 == size * 4 + p == pUltimo

for:	bge $t4, $t5, endFor	# 	for (p = lista; p < pUltimo; p++) {
	lw $t6, 0($t4)		#		$t6 = *(p)
	lw $t7, 4($t4)		#		$t7 = *(p+1)
if:	ble $t6, $t7, endIf	# 		if (*p > *(p+1)) {
				# 			aux = *p;
	sw $t6, 4($t4)		# 			*p = *(p+1);
	sw $t7, 0($t4)		# 			*(p+1) = aux;
	li $t3, TRUE		# 			houveTroca = TRUE;
endIf:				# 		}
	addi $t4, $t4, 4	# p++	
	j for
endFor: 			# 	}
	beq $t3, TRUE, do	# } while (houveTroca==TRUE);
endDo:
				# -------------------------------------------------------------
	li $v0, print_string	# print_string("\nConteudo do array:\n");
	la $a0, strB
	syscall
	
	la $t0, list		# p = lista (posição em memória do início do array)
				
				# $t2 = lista + size; (posição em memória do fim do array)
	li $t2, SIZE		# $t2 = size	
	sll $t2, $t2, 2		# $t2 = size * 4 (each word uses 4 positions in memory)
	addu $t2, $t2, $t0	# $t2 = $t2 + $t0 == size * 4 + list
				
whileB: bge $t0, $t2, endWB	# while (p < lista + SIZE) {
	lw $t1, 0($t0)		#	$t1 = *p	(could store word in $a0...)
	
	li $v0, print_int10	#	print_int10( *p );
	move $a0, $t1
	syscall
					
	li $v0, print_string	# 	print_string("; ");
	la $a0, strC
	syscall			

	addu $t0, $t0, 4	# 	$t0++ = p++;

	j whileB			# }
endWB:		
	jr $ra			# End program	
			
