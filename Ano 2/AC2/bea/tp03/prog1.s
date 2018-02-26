		.equ SFR_BASE_HI, 0xBF88 		# 16 MSbits of SFR area
		.equ TRISE, 0x6100 				# TRISE address is 0xBF886100
		.equ PORTE, 0x6110 				# PORTE address is 0xBF886110
		.equ LATE,  0x6120 				# LATE  address is 0xBF886120

		.equ TRISB, 0x6040 				# TRISB address is 0xBF886040
		.equ PORTB, 0x6050 				# PORTB address is 0xBF886050
		.equ LATB,  0x6060 				# LATB  address is 0xBF886060

		.equ PUT_CHAR, 3
		.equ PRINT_INT, 6

		.data

		.text
		.globl main

main:	lui $t1, SFR_BASE_HI 			#
		lw $t2, TRISE($t1) 				# READ  (Mem_addr = 0xBF880000 + 0x6100)
		andi $t2, $t2, 0xFFF0 			# MODIFY (bit0 to bit3=0 (0 means OUTPUT))
		sw $t2, TRISE($t1)				# WRITE (Write TRISE register)

		lw $t2, TRISB($t1) 				# READ  (Mem_addr = 0xBF880000 + 0x6100)
		ori $t2, $t2, 0x000F 			# MODIFY (bit0 to bit3=1 (1 means INPUT))
		sw $t2, TRISB($t1)				# WRITE (Write TRISE register)

		lw $t0, PORTB($t1)				# READ PORTB value
		andi $t0, $t0, 0x000F			# READ only bits 3 to 0

		lw $t2, LATE($t1) 				# READ (Read LATE register)
		andi $t2, $t2, 0xFFF0 			# MODIFY bits 3 to 0
		or $t2, $t2, $t0				# 
		sw $t2, LATE($t1)				# WRITE (Write LATE register)

		move $a0, $t2
		li $a1, 0x00040002
		li $v0, PRINT_INT
		syscall	

		li $a0, '\n' 					# 
		li $v0, PUT_CHAR 				#
		syscall							#  putChar('\n');


		j main







