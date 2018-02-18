# // Programa 5 – teste do system call "readStr()" e manipulação de strings
#
#    #define STR_MAX_SIZE 20
#    char *strcat(char *, char *);
#    char *strcpy(char *, char *);
#    int strlen(char *);
#    int main(void)
#    {
#      static char str1[STR_MAX_SIZE + 1];
#      static char str2[STR_MAX_SIZE + 1];
#      static char str3[2 * STR_MAX_SIZE + 1];
#
#      printStr("Introduza 2 strings: ");
#      readStr( str1, STR_MAX_SIZE );
#      readStr( str2, STR_MAX_SIZE );
#
#      printStr("Resultados:\n");
#
#      prinInt( strlen(str1), 10 );
#      prinInt( strlen(str2), 10 );
#      strcpy(str3, str1);
#      printStr( strcat(str3, str2) );
#      printInt10( strcmp(str1, str2) );
#      return 0;
# }

        .equ PRINT_INT, 6
        .equ PRINT_INT10, 7
        .equ PRINT_STR, 8
        .equ READ_STR, 9

        .equ STR_MAX_SIZE, 20

        .data
prompt: .asciiz "Introduza 2 strings: "
result: .asciiz "\nResultados:\n"
nwline: .asciiz "\n"
str1:   .space STR_MAX_SIZE + 1
str2:   .space STR_MAX_SIZE + 1
str3:   .space STR_MAX_SIZE + STR_MAX_SIZE + 1

        .text
        .globl main

main:   addu $sp, $sp, -4
        sw $ra, 0($sp)

        la $a0, prompt
        li $v0, PRINT_STR
        syscall                 # printStr("Introduza 2 strings: ");

        li $v0, READ_STR
        la $a0, str1
        li $a1, STR_MAX_SIZE
        syscall                 # readStr( str1, STR_MAX_SIZE );

        #li $v0, READ_STR
        la $a0, str2
        li $a1, STR_MAX_SIZE
        syscall                 # readStr( str2, STR_MAX_SIZE );

        la $a0, result
        li $v0, PRINT_STR
        syscall                 # printStr("Resultados:\n");

        # call strlen with str1
        la $a0, str1
        jal strlen

        move $a0, $v0
        li $a1, 10
        li $v0, PRINT_INT
        syscall                 # prinInt( strlen(str1), 10 );

        la $a0, nwline
        li $v0, PRINT_STR
        syscall                 # print new line for aesthetic reasons

        # call strlen with str2
        la $a0, str2
        jal strlen

        move $a0, $v0
        li $a1, 10
        li $v0, PRINT_INT
        syscall                 # prinInt( strlen(str2), 10 );

        la $a0, nwline
        li $v0, PRINT_STR
        syscall                 # print new line for aesthetic reasons

        la $a0, str3
        la $a1, str1
        jal strcpy             # strcpy(str3, str1);

        la $a0, str3
        la $a1, str2
        jal strcat
        move $a0, $v0
        li $v0, PRINT_STR
        syscall                 # printStr( strcat(str3, str2) );

        la $a0, nwline
        li $v0, PRINT_STR
        syscall                 # print new line for aesthetic reasons

        la $a0, str1
        la $a1, str2 
        jal strcmp
        move $a0, $v0
        li $v0, PRINT_INT10
        syscall                 # printInt10( strcmp(str1, str2) );

        la $a0, nwline
        li $v0, PRINT_STR
        syscall                 # print new line for aesthetic reasons

        li $v0, 0
        lw $ra, 0($sp)
        addu $sp, $sp, 4
        jr $ra                  # return 0;


# ************************************************************************* 
# // String length
# //
# int strlen(char *s)
# {
#      int len;
#      for(len = 0; *s != 0; len++, s++);
#      return len;
# }

# map:
# len -> v0

strlen: li $v0, 0 

while1: lb $t0, 0($a0)          # for(len = 0; *s != 0; len++, s++);
        beq $t0, 0, endw1
        addi $v0, $v0, 1
        addi $a0, $a0, 1
        j while1

endw1:  jr $ra                  # return len;

    

# ************************************************************************* 
# // String concatenate
# //
# char *strcat(char *dst, char *src)
# {
#      char *rp = dst;
#      for(; *dst != 0; dst++);
#      strcpy(dst, src);
#      return rp;
# }
strcat: 
        addu $sp, $sp, -8
        sw $a0, 4($sp)          # char *rp = dst;
        sw $ra, 0($sp)

while2: lb $t0, 0($a0)          # for(; *dst != 0; dst++)
        beq $t0, 0, endw2
        addi $a0, $a0, 1
        j while2

endw2:  jal strcpy              # strcpy(dst, src);
        
        lw $v0, 4($sp)
        lw $ra, 0($sp)
        addu $sp, $sp, 8
        jr $ra                  # return rp;


# ************************************************************************* 
# // String copy
# //
# char *strcpy(char *dst, char *src)
# {
#      char *rp = dst;
#      for(; (*dst = *src) != 0; dst++, src++);
#      return rp; 
# }
strcpy:
        move $v0, $a0

while3: lb $t0, 0($a1)          # for(; (*dst = *src) != 0; dst++, src++);
        sb $t0, 0($a0)
        beq $t0, 0, endw3
        addi $a0, $a0, 1
        addi $a1, $a1, 1
        j while3

endw3:  jr $ra                  # return rp;

#  ************************************************************************* 
# // String compare (alphabetically).
# // Returned value is:
# // < 0 string "s1" is less than string "s2"
# //   = 0  string "s1" is equal to string "s2"
# //   > 0  string "s1" is greater than string "s2"
# //
# int strcmp(char *s1, char *s2)
# {
#   for(; (*s1 == *s2) && (*s1 != 0); s1++, s2++);
#   return(*s1 - *s2);
# }
strcmp:

while4: lb $t0, 0($a0)          # for(; (*s1 == *s2) && (*s1 != 0); s1++, s2++);
        lb $t1, 0($a1)
        bne $t0, $t1, endw4
        beq $t0, 0, endw4
        addi $a0, $a0, 1
        addi $a1, $a1, 1
        j while4

endw4:  sub $v0, $t0, $t1
        jr $ra                  #  return(*s1 - *s2)