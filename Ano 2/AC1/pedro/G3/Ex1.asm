# Guião 3, Ex 1
# Pedro Teixeira, MIECT, 84715

# ---------------------------------------------------

# Mapa de registos:
# $t0 – soma
# $t1 – value
# $t2 - i

# void main(void) {
# 	int soma, value, i;
#	for(i=0, soma=0; i < 5; i++) {
#		print_string("Introduza um numero: ");
#		value = read_int();
#		if(value > 0)
#			soma = soma + value;
#		else
#			print_string("Valor ignorado\n");
#	}
#	print_string("A soma dos positivos e': ");
# 	print_int10(soma);
# }

# O que é equivalente a
# void main(void) {
# 	int soma = 0;
# 	int i = 0;
#	while (i < 5) {
#		print_string("Introduza um numero: ");
#		value = read_int();
#		if(value > 0)
#			soma = soma + value;
#		else
#			print_string("Valor ignorado\n");
#		i++
#	}
#	print_string("A soma dos positivos e': ");
# 	print_int10(soma);
# }
	  .data
str1: 	  .asciiz "Introduza um numero: "
str2: 	  .asciiz "Valor ignorado\n"
str3: 	  .asciiz "A soma dos positivos e´: "
	  .eqv print_string, 4
	  .eqv read_int, 5
	  .eqv print_string, 4
	  .eqv print_int10, 1
	  .text
	  .globl main

main: 	  li $t0,0 			# int soma = 0;
	  li $t2,0			# int i = 0;
	
while:    bge $t2, 5, endLoop		# while (i < 5) {
	  ori $v0, $0, print_string	#   print_string("Introduza um numero: ");
	  la  $a0, str1
	  syscall
	  ori $v0, $0, read_int		#   value = read_int();
	  syscall
	  or  $t1, $0, $v0

if:	  ble $t1, $0, else		#   if(value > 0)
	  add $t0, $t0, $t1		#     soma = soma + value;
	  j endif
else:	  ori $v0, $0, print_string	#   else print_string("Valor ignorado\n");
	  la  $a0, str2
	  syscall				

endif:    addi $t2, $t2, 1		#   i++
	  j while
endLoop:  ori $v0, $0, print_string	# print_string("A soma dos positivos e': ");
	  la  $a0, str3
	  syscall				
	  ori $v0, $0, print_int10	# print_int10(soma);
	  or  $a0, $0, $t0
	  syscall
	  jr $ra			# ends program
	