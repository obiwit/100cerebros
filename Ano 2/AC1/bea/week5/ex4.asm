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
	# SIZE - 1 > $t7				#
	ori $t7, $0, SIZE				#
	subi $t7, $t7, 1				#
	sll $t7, $t7,  2	# convert SIZE - 1 from words to bytes	
							#
	# pUltimo > $t4					# int* pUltimo = lista + (SIZE - 1);
	la $t4, lista					#
	addu $t4, $t4, $t7				#
							#
do:	# houveTroca > $t6				# do {
	or $t6, $0, $0					#     houveTroca = FALSE;	
							#	
	# p > $t5					#
	la $t5, lista					#
							#									
for2:	bge $t5, $t4, endFor2				#     for (p = lista; p < pUltimo; p++)
							#     {
	# *p > $t8					#
	lw $t8, 0($t5)					# 
	# *(p+1) > $t9					# 
	lw $t9, 4($t5)					# 
							# 
if:	ble $t8, $t9, endIf				#          if (*p > *(p+1))
							#          {
	# aux > $at					#
	or $at, $0, $t4					# 	       aux = lista[i];
	sw $t9, 0($t5)					#              *p = *(p+1);
	sw $t8, 4($t5)					#              *(p+1) = aux;
							#              houveTroca = TRUE;
	ori $t6, $0, 1					# } }
							# } while (houveTroca==TRUE);
							#
endIf:							#
	addiu $t5, $t5, 4				#
	j for2						#
endFor2:						#
							#
while:	beq $t6, 1, do					#
							#
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
