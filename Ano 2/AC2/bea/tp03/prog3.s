# Contador binário crescente/decrescente cujo comportamento depende do valor
# lido do porto de entrada RB3: se RB3=1, contador crescente; caso contrário
# contador decrescente; frequência de atualização de 2 Hz.


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


main: 	addu $sp, $sp, -4
		sw $ra, 0($sp)					# save $ra

		lui $t1, SFR_BASE_HI 			# set up base address
		lw $t2, TRISE($t1) 				# 
		andi $t2, $t2, 0xFFF0 			# 
		sw $t2, TRISE($t1)				# configure RE0 to RE3 as output
		lw $t2, TRISB($t1) 				# 
		ori $t2, $t2, 0x0008 			# 
		sw $t2, TRISB($t1)				# configure RB3 as input

		li $s0, 0						# initialize counter to 0
	
loop:									# while(1) {
		lw $t0, PORTB($t1)				#
		andi $t0, $t0, 0x0008			#   read RB3

		beq $t0, $0, else				#   if (RB3 == 1) {
		addi $s0, $s0, 1				#     s0 += 1;	
		j endif							#
else:									#   } else {
		addi $s0, $s0, -1				#	  s0 -= 1;
endif:									#   }	

		andi $s0, $s0, 0x000F			#   // count only s0's 4 least significant bits

		move $a0, $s0					#
		li $a1, 0x00040002				#
		li $v0, PRINT_INT				#
		syscall							#

		li $a0, '\n' 					# 
		li $v0, PUT_CHAR 				#
		syscall							#   print s0 value

		lw $t2, LATE($t1) 				#   // Read LATE register
		andi $t2, $t2, 0xFFF0 			#   // Modify bits 3 to 0
		or $t2, $t2, $s0				# 
		sw $t2, LATE($t1)				#   write s0 to RE0 to RE3

		li $a0, 500
		jal delay						#   delay(500) // 2 Hz frequency = 1/2 seconds update rate = 500ms update rate

		j loop							# }


		lw $ra, 0($sp)					# retore ra
		addu $sp, $sp, 4
		jr $ra



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
