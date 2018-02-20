#  void main(void) {
#    int counter = 0;
#    while(1) {
#      while(readCoreTimer() < 200000);
#      resetCoreTimer();
#      printInt(++counter, 10);
#      putChar(' ');  // space
# 	 } 
#  }

		.equ PUT_CHAR, 3
		.equ PRINT_INT, 6
		.equ READ_CORE_TIMER, 11 
		.equ RESET_CORE_TIMER, 12
		.equ FREQUENCY_Hz, 5
		.equ TARGET_CORE_VAL, 20000000/FREQUENCY_Hz
		.data
nwline:	.asciiz "\n"

		.text 
		.globl main

main: 	li $t0, 0								# int counter = 0;
while: 	li $v0, READ_CORE_TIMER 				# while (1) {
		syscall 								#

		blt $v0, TARGET_CORE_VAL, while 		#  while(readCoreTimer() < 20000);

		li $v0, RESET_CORE_TIMER				#
		syscall 								#  resetCoreTimer();

		addi $t0, $t0, 1 						# counter++;
		move $a0, $t0 							# 
		li $a1, 10 								# 
		li $v0, PRINT_INT 						# 
		syscall									# printInt(counter, 10);

		li $a0, ' ' 							# 
		li $v0, PUT_CHAR 						#
		syscall									#  putChar(' ');

		j while									# } 
		jr $ra 									#



 