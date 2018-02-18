# // Programa 2 – teste do system call "inkey()"
# //
# int main(void)
# {
#   char c;
#   while (1) {
#     while ((c = inkey()) == 0);
#     if (c == '\n')
#      break;
#     printStr("Key pressed\n");
#   }
#   return 0;
# }


# map
# c -> t0

		.equ PRINT_STR, 8
		.equ IN_KEY, 1
		.data
str:	.asciiz "Key pressed\n"

		.text
		.globl main

main:	
while:	li $v0, IN_KEY				# while (1) {
		syscall
		move $t0, $v0 				# 	[c = inkey()]

while2:	beq $t0, 0, while			# 	while ((c = inkey()) == 0);

if:		beq $t0, '\n', endw			# 	if (c == '\n') break;

		la $a0, str
		li $v0, PRINT_STR
		syscall						# printStr("Key pressed\n");

		j while 					# }
endw:	li $v0, 0
		jr $ra
