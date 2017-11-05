# --------------------------------
# Guião 3, Ex 2c
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# ---------------------------------------------------

# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i

# C Source Code
# void main(void) {
# 	unsigned int value, bit, i;
# 	print_string("Introduza um numero: ");
# 	value = read_int();
# 	print_string("\nO valor em binário e': ");
# 	for(i=0; i < 32; i++) {
#		bit = value & 0x80000000; // isola bit 31
# 		if(bit != 0)
# 			print_char('1');
# 		else
# 			print_char('0');
# 		value = value << 1; // shift left de 1 bit
# 	}
# }

	  .data
str1: 	  .asciiz "Please enter a number: "
str2: 	  .asciiz "The number in binary is: "
	  .eqv print_string, 4
	  .eqv read_int, 5
	  .eqv print_string, 4
	  .eqv print_char, 11
	  .text
	  .globl main

main: 	  li $t0,0 			# int value = 0;
	  li $t1,0			# int bit = 0;
	  li $t2,0			# int i = 0;
	  
	  ori $v0, $0, print_string	# print_string("Introduza um numero: ");
	  la  $a0, str1
	  syscall
	  
	  ori $v0, $0, read_int		# value = read_int();
	  syscall
	  or  $t0, $0, $v0	
	  
	  ori $v0, $0, print_string	# print_string("\nO valor em binário e': ");
	  la  $a0, str2
	  syscall			
	  
while:    bge $t2, 32, endLoop		# while (i < 32) {
	  
	  rem $t3, $t2, 4		#   if((i % 4) == 0) // resto da divisão inteira
ifC:	  bne $t3, $0, endifC		#      print_char(' ');		
	  ori $v0, $0, print_char
	  ori $a0,$0, 0X20
	  syscall		
	  					
endifC:	  andi $t1, $t0, 0x80000000	#   bit = value & 0x80000000;
	
if:	  beq $t1, $0, else		#   if(bit != 0)
	  
	  ori $v0, $0, print_char	#      print_char('1');
	  la  $a0, '1'
	  syscall  
	  j endif
	  
else:	    ori $v0, $0, print_char	#   else print_char('0');
	  la  $a0, '0'
	  syscall 				
endif:	  sll $t0, $t0, 1		#   value = value << 1; 
	  addi $t2, $t2, 1		#   i++
	  j while

endLoop:  jr $ra			# ends program
	