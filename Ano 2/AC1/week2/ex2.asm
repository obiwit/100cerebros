	.data
	.eqv print_int16, 34
	.eqv print_char, 11
	.text
	.globl main
	
main:	li $t0, 0x862A5C1B

	sll $t2, $t0, 4 	# $t0 é inicializado na janela
	srl $t3, $t0, 4 	#  "Registers" do MARS
	sra $t4, $t0, 4 
	
	andi $1, $t0, 0xF000	# print_int16((val & 0x0000F000) >> 12); // Digito 3
	srl  $1,  $1, 12
	ori $v0,  $0, print_int16		
	or  $a0,  $0, $1
	syscall
	
	ori $v0, $0, print_char	# print_char(' ');
	ori $a0, $0, ' '
	syscall
	
	andi $1, $t0, 0x0F00	# print_int16((val & 0x0000F000) >> 8); // Digito 2
	srl  $1,  $1, 8
	ori $v0,  $0, print_int16		
	or  $a0,  $0, $1
	syscall
	
	ori $v0, $0, print_char	# print_char(' ');
	ori $a0, $0, ' '
	syscall
	
	andi  $1, $t0, 0x00F0	# print_int16((val & 0x000000F0) >> 4); // Digito 1
	srl  $1,  $1, 4
	ori $v0,  $0, print_int16		
	or  $a0,  $0, $1
	syscall
	
	ori $v0, $0, print_char	# print_char(' ');
	ori $a0, $0, ' '
	syscall
	
	and  $1, $t0, 0x000F	# print_int16(val & 0x0000000F); // Digito 0
	ori $v0,  $0, print_int16		
	or  $a0,  $0, $1
	syscall
	
	jr $ra			# fim do programa



	ori $v0,$0,11		# print new line
	ori $a0,$0, 0X0000000A	
	syscall