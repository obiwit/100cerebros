
		# Escreva um programa em assembly que leia, com uma frequência de 2 Hz,
		# o valor lógico imposto pelos switches e que o mostre, em binário, no ecrã do PC.
		# Altere o programa anterior de modo a que o valor dos switches seja usado para
		# impor a frequência de leitura, entre 1 Hz e 16 Hz; a constante de tempo para a
		# função delay() pode ser calculada, de forma aproximada, como (16 - valSwitch) * 64.


		.equ PUT_CHAR, 3
		.equ PRINT_INT, 6
		.equ READ_CORE_TIMER, 11 
		.equ RESET_CORE_TIMER, 12

		.equ READ_FREQUENCY_Hz, 2
		.equ TARGET_CORE_VAL, 20000000/READ_FREQUENCY_Hz

		.data

		.text 
		.globl main

main: 	addu $sp, $sp, -4
        sw $ra, 0($sp)

while:	lui $t1,0xBF88					# while(1) {
		lw $t2,0x6050($t1)				# // read switch value

		# for testing purposes
		# li $t2, 14

		move $a0, $t2
		li $a1, 0x00040002
		li $v0, PRINT_INT
		syscall							# // print switch value

		li $a0, '\n' 					# 
		li $v0, PUT_CHAR 				#
		syscall							#  putChar('\n');

		li $t1, 20000000				#
		div $a0, $t1, $t2				# target core value for delay is 20000000/$t2
		jal delay						# delay(target_val);

		j while							# }

        li $v0, 0
        lw $ra, 0($sp)
        addu $sp, $sp, 4
        jr $ra                 		 	# return 0;


# *****************************************************************
# void delay(target_val) {
#   resetCoreTimer();
#   while(readCoreTimer() < target_val);
# }

delay: 	
		li $v0, RESET_CORE_TIMER				#
		syscall 								#   resetCoreTimer();

wait:	li $v0, READ_CORE_TIMER 				#
		syscall 								#
		blt $v0, $a0, wait 						#   while(readCoreTimer() < target_val);

		jr $ra



