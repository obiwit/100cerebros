				# Mapa de registos:
				#  $t0 – soma
				#  $t1 – value
     				#  $t2 - i
     				
     	   .data
str1:	   .asciiz "Introduza um numero: "
str2:	   .asciiz "Valor ignorado\n"
str3:	   .asciiz "A soma dos positivos e': "
	   
	   .eqv print_string,4
	   .eqv read_int, 5
	   .eqv print_int, 1
	   
	   .text 
	   .globl main
main: 	   li $t0, 0			# int soma = 0;
	   li $t2, 0			# int i = 0;
	   
for: 	   bge $t2, 5, endfor		# while(i < 5) {
	   
	   ori $v0, $0, print_string	#         print_string("Introduza um numero: ");
	   la $a0, str1	
	   syscall
	   
	   ori $v0, $0, read_int	#         value = read_int();
	   syscall
	   or $t1, $0, $v0
							
	   ble $t1, $0, else		#         if(value > 0)	
	   add $t0, $t0, $t1	  	#             soma = soma + value;
	   j endif			#
	
	      
else: 	   ori $v0, $0, print_string	#         else
	   la $a0, str2			#             print_string("Valor ignorado\n");
	   syscall
	   
 	   
endif: 	   addi $t2, $t2, 1		# 	  i++;
	   j for			#     }
	  
	  
endfor:    ori $v0, $0, print_string
	   la $a0, str3			#     print_string("A soma dos positivos e': ");
	   syscall
	   
	   ori $v0, $0, print_int	#     print_int10(soma);
	   or $a0, $0, $t0
	   syscall
	   
	   jr $ra
