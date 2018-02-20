# void delay(int ms) {
#   for(; ms > 0; ms--) {
#     resetCoreTimer();
#     while(readCoreTimer() < 20000);
#   }
# }


		.equ PUT_CHAR, 3
		.equ PRINT_INT, 6
		.equ READ_CORE_TIMER, 11 
		.equ RESET_CORE_TIMER, 12
		.equ TARGET_CORE_VAL, 20000
		.data

		.text 
		.globl main

main: 	addu $sp, $sp, -4
        sw $ra, 0($sp)
		
		li $t0, 0								# int counter = 0; // for test purposes

loop: 	li $a0, 1000							# while(1) { // a loop for testing purposes
		jal delay								#  delay(1000);

		addi $t0, $t0, 1 						#  counter++;
		move $a0, $t0 							# 
		li $a1, 10 								# 
		li $v0, PRINT_INT 						# 
		syscall									#  printInt(counter, 10);

		li $a0, ' ' 							# 
		li $v0, PUT_CHAR 						#
		syscall									#  putChar(' ');

		j loop									# }
        lw $ra, 0($sp)							#
        addu $sp, $sp, 4						#
		jr $ra 									# } 


delay:
while: 	beq $a0, $0, endw						# while(ms > 0) {

		li $v0, RESET_CORE_TIMER				#
		syscall 								#   resetCoreTimer();

wait:	li $v0, READ_CORE_TIMER 				#
		syscall 								#
		blt $v0, TARGET_CORE_VAL, wait 			#   while(readCoreTimer() < 20000);
 
		addi $a0, $a0, -1						#   ms--;
		j while									# }

endw:	jr $ra


