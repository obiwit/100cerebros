# // Programa 3 – teste dos system calls "getChar()" e "putChar()"
# //
# int main(void)
# {
#   char c;
#   while (1) {
#     c = getChar();
#     if (c == '\n')
#      break;
#     putChar(c);
#   }
#   return 1; 
# }


# map
# c -> t0

		.equ GET_CHAR, 2
		.equ PUT_CHAR, 3
		.data

		.text
		.globl main

main:	
while:	li $v0, GET_CHAR			# while (1)
		syscall
		move $t0, $v0 				# c = getChar()

if:		beq $t0, '\n', endw			# if (c == '\n')

		move $a0, $t0
		li $v0, PUT_CHAR
		syscall

		j while
endw:	li $v0, 1
		jr $ra
