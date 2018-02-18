# // Programa 4 – teste dos system calls de leitura e impressão de inteiros
# void main(void)
# {
#   int value;
#   while (1) {
#     printStr("\nIntroduza um numero (sinal e módulo): "); 
#     value = readInt10();

#     printStr("\nValor lido em base 2: ");
#     printInt(value, 2);

#     printStr("\nValor lido em base 16: ");
#     printInt(value, 16);

#     printStr("\nValor lido em base 10 (unsigned): ");
#     printInt(value, 10);

#     printStr("\nValor lido em base 10 (signed): ");
#     printInt10(value);
#   }
# }

# map
# value -> t0

		.equ READ_INT10, 5
		.equ PRINT_INT, 6
		.equ PRINT_INT10, 7
		.equ PRINT_STR, 8
		.data
prompt:	.asciiz "\nIntroduza um numero (sinal e módulo): "
base2:	.asciiz "\nValor lido em base 2: "
base16: .asciiz "\nValor lido em base 16: "
base10u:.asciiz "\nValor lido em base 10 (unsigned): "
base10s:.asciiz "\nValor lido em base 10 (signed): "

		.text
		.globl main

main: 	la $a0, prompt
		li $v0, PRINT_STR
		syscall						# printStr("\nIntroduza um numero (sinal e módulo): "); 
		
		li $v0, READ_INT10
		syscall
		move $t0, $v0				# value = readInt10();

		la $a0, base2
		li $v0, PRINT_STR
		syscall						# printStr("\nValor lido em base 2: ");

		move $a0, $t0
		li $a1, 2
		li $v0, PRINT_INT
		syscall						# printInt(value, 2);

		la $a0, base16
		li $v0, PRINT_STR
		syscall						# printStr("\nValor lido em base 16: ");

		move $a0, $t0
		li $a1, 16
		li $v0, PRINT_INT
		syscall						# printInt(value, 16);

		la $a0, base10u
		li $v0, PRINT_STR
		syscall						# printStr("\nValor lido em base 10 (unsigned): ");

		move $a0, $t0
		li $a1, 10
		li $v0, PRINT_INT
		syscall						# printInt(value, 10);

		la $a0, base10s
		li $v0, PRINT_STR
		syscall						# printStr("\nValor lido em base 10 (signed): ");

		move $a0, $t0
		li $v0, PRINT_INT10
		syscall						# printInt10(value);

		jr $ra