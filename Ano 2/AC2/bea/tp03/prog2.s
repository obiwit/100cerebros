# void main(void) {
#     int v = 0;
#     TRISE0 = 0;	// Configura o porto RE0 como saída
#     while(1) {
#     	  LATE0=v; // Escreve v no bit 0 do porto E 
#	  	  delay(500); // Atraso de 500ms
#		  v ^= 1;  // complementa o bit 0 de v (v = v xor 1)
# 	  } 
# }

		.equ SFR_BASE_HI, 0xBF88 		# 16 MSbits of SFR area
		.equ TRISE, 0x6100 				# TRISE address is 0xBF886100
		.equ PORTE, 0x6110 				# PORTE address is 0xBF886110
		.equ LATE,  0x6120 				# LATE  address is 0xBF886120

		.equ TRISB, 0x6040 				# TRISB address is 0xBF886040
		.equ PORTB, 0x6050 				# PORTB address is 0xBF886050
		.equ LATB,  0x6060 				# LATB  address is 0xBF886060

		.equ PUT_CHAR, 3
		.equ PRINT_INT, 6
		.equ READ_CORE_TIMER, 11 
		.equ RESET_CORE_TIMER, 12
		.equ TARGET_CORE_VAL, 20000

		.data

		.text
		.globl main

# map:
# v -> s0

main:	addu $sp, $sp, -4
		sw $ra, 0($sp)

		li $s0, 0						# int v = 0;

		lui $s1, SFR_BASE_HI 			#
		lw $s2, TRISE($s1) 				# 
		andi $s2, $s2, 0xFFFE 			# 
		sw $s2, TRISE($s1)				# TRISE0 = 0;	// Configura o porto RE0 como saída

while:									# while(1) {
		lw $s2, LATE($s1) 				# READ (Read LATE register)
		andi $s2, $s2, 0xFFFE 			# MODIFY bits 3 to 0
		or $s2, $s2, $s0				# 
		sw $s2, LATE($s1)				# WRITE (Write LATE register)

		li $a0, 500 					#
		jal delay 						# delay(500); // Atraso de 500ms

		xori $s0, $s0, 0x0001			# v ^= 1;  // complementa o bit 0 de v (v = v xor 1)

		move $a0, $s0
		li $a1, 0x00040002
		li $v0, PRINT_INT
		syscall	

		li $a0, '\n' 					# 
		li $v0, PUT_CHAR 				#
		syscall							#  putChar('\n');

		j while 						# 	  } 

		lw $ra, 0($sp)					#
		addu $sp, $sp, 4				#
		jr $ra 							# }



delay:
whiled: beq $a0, $0, endw						# while(ms > 0) {

		li $v0, RESET_CORE_TIMER				#
		syscall 								#   resetCoreTimer();

wait:	li $v0, READ_CORE_TIMER 				#
		syscall 								#
		blt $v0, TARGET_CORE_VAL, wait 			#   while(readCoreTimer() < 20000);
 
		addi $a0, $a0, -1						#   ms--;
		j whiled								# }

endw:	jr $ra
