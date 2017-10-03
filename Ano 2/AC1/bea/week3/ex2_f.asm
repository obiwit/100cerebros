						# Mapa de registos:
						#  $t0 – value
						#  $t1 – bit
						#  $t2 - i
						#  &t3 - remainer of i/4
						#  $t4 - char to print (ASCII value)
						#  $t5 - flag

		.data
str1:		.asciiz "Introduza um numero: " 
str2: 		.asciiz "\nO valor em binário e': "

		.eqv print_char, 11
		.eqv print_string, 4
		.eqv read_int, 5

		.text
		.globl main
main:		la $a0, str1			
		li $v0, print_string 		# (instrução virtual)
		syscall				# print_string(str1);
	
		ori $v0, $0, read_int		# value=read_int();
		syscall
		or $t0, $v0, $0
	
		la $a0, str2			# print_string("\nO valor em binário e': ");
		li $v0, print_string
		syscall
	
		li $t2, 0			# i=0
		li $t5, 0			# flag = 0
	
do: 						# do {

		srl $t1, $t0, 31		#    bit = value >> 31;

		bne $t5, $0, startFlag 		#    if (flag == 1 || bit != 0) {
		beq $t1, $0, endFlag
startFlag:	
		ori $t5, $0, 1			#        flag = 1;
					
						#        // print spaces every 4 characters
		rem $t3, $t2, 4			#        if((i % 4) == 0) // resto da divisão inteira 
		bne $t3, $0, endSep
		ori $v0, $0, print_char		# 	 print_char(' ');
		ori $a0, $0, 0x20
		syscall
endSep:						# 	 end of character separation	
	
		ori $v0, $0, print_char		#   	 print_char(0x30 + bit);
		addi $t4, $t1, 0x30
		or $a0, $0, $t4
		syscall

endFlag:					#    }

		sll $t0, $t0, 1			#    value = value << 1;  // shift left de 1 bit
	
		addi $t2, $t2, 1		#    i++;
	
		blt $t2, 32, do			# } while( i < 32)
	
		jr $ra				# fim do programa