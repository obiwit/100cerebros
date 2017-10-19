	.data
lista:	.space 40  # SIZE*4 = 10*4 = 40
str1:	.asciiz "\nIntroduza um numero: "
str2: 	.asciiz "\nConteudo do array:\n"
str3: 	.asciiz "; "

	.eqv SIZE,  10					# define SIZE  10
	.eqv TRUE,  1					# #define TRUE  1
	.eqv FALSE, 0					# #define FALSE 0
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv read_int, 5
	

	.text
	
	.globl main
main:
readLista:
		# i > $t0				# 
		or $t0, $0, $0				# void main(void)
							# {
		# *lista[0] > $t1			#
		la $t1, lista				#     static int lista[SIZE]; 		// declara um array de inteiros
							# 					//  residente no segmento de dados
		# *str > $t2				#
		la $t2, str1				#
							#
		# *lista[0] + 4*i > $t3			#
		or $t3, $0, $t1				#	
							#
for1:		beq $t0, SIZE, endFor1			#     int i;
							#
		ori $v0, $0, print_string		#     for(i=0; i < SIZE; i++)
		or  $a0, $0, $t2			#     {
		syscall					#     
							#         print_string("\nIntroduza um numero: ");
							# 		
		ori $v0, $0, read_int			#	  lista[i] = read_int();
		syscall					#
							#
		# save lista[i] in external memory	#
		sll $t3, $t0, 2				#
		addu $t3, $t1, $t3			#		
		sw $v0, 0($t3)				#		
							#
		addi $t0, $t0, 1			# 
		j for1					#
endFor1:						#
							#
orderLista:						#
							#
do:							#
							# 	int houveTroca, i, aux;
	# houveTroca > $t6				# 	do {
	or $t6, $0, $0					# 	    houveTroca = FALSE;				
							#
	# SIZE -1 > $t7					#
	ori $t7, $0, SIZE	# SIZE > $at		#
	subi $t7, $t7, 1				#
							#
	# i(= 0) > $t0					#	 
	or $t0, $0, $0					#
							#
for2:	bge $t0, $t7, endFor2				# 	    for (i=0; i < SIZE-1; i++)
							#	    {
	# *lista[0] > $t1				#
	la $t1, lista					#
	# *lista[0] + 4*i > $t3				#
	or $t3, $0, $t1					#
	sll $t3, $t0, 2					#
	addu $t3, $t1, $t3				#
							#
	# lista[i] > $t4				#	 
	lw $t4, 0($t3)					#
							#
	# lista[i+1] > $t5				#	 
	lw $t5, 4($t3)					#
							# 
if:	ble $t4, $t5, endIf				# 	    	if (lista[i] > lista[i+1])
							#         	{
	# aux > $at					#
	or $at, $0, $t4					# 	            aux = lista[i];
	sw $t5, 0($t3)					# 	            lista[i] = lista[i+1];
	sw $at, 4($t3)					# 	            lista[i+1] = aux;
							#
	ori $t6, $0, 1					# 	            houveTroca = TRUE;
							#             	} 
endIf:							# 	    }
							#
	addi $t0, $t0, 1	# i++			#
	j for2						#
endFor2:						#
							#
while:	beq $t6, TRUE, do				# 	} while (houveTroca==TRUE);
							#
							#
							#       // print lista
writeLista:						#
	# p = lista = *lista[0] > $t0			# 	
	la $t4, lista					# 	int *p; 	// Declara um ponteiro para inteiro (reserva
							#                   	//  espaço para o ponteiro, mas não o inicializa)
	# lista + SIZE > $t1				#    
	ori $t5, $0, SIZE	# size in words		#
	sll $t5, $t5, 2		# size in bytes		#
	addu $t5, $t4, $t5				#
							#
	ori $v0, $0, print_string			#     print_string("\nConteudo do array:\n");
	la $a0, str2					#
	syscall 					#
							#     for(p = lista; p < lista + SIZE; p++) {
for3:	bge $t4, $t5, endFor3				#
							#
	ori $v0, $0, print_int10			#     	   print_int10( *p );		// Imprime o conteúdo da posição do
	lw $a0, 0($t4)					# 					//  array cujo endereço é "p"
	syscall						#
							#
	ori $v0, $0, print_string			# 	   print_string("; ");
	la $a0, str3					#
	syscall						#
							#
	addu $t4, $t4, 4				#
							# 
	j for3						#
endFor3:						#     }
	jr $ra						# }
