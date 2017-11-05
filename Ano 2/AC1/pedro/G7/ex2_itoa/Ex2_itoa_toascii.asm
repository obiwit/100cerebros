# --------------------------------
# Guião 7, Ex 2
# Arquitectura de Computadores I
# Pedro Teixeira, 84715, MIECT
# --------------------------------

# toAscii    
# Converte o digito "v" para o respetivo código ASCII
# param   $a0: char v (digit to convert)
# returns $v0: ASCII code of char v

# itoa    
# Determina a representação do inteiro "n" na base "b" (b pode variar entre 
# 2 e 16), colocando o resultado no array de carateres "s", em ASCII.
# param   $a0: unsigned int n (numeric base to convert to)
# param   $a1: unsigned int n (digit to convert)
# param   $a2: char* s (pointer to the char array used to store the result)
# returns $v0: char* s

	.text
	.globl toAscii, itoa

toAscii:		# char toascii(char v) {
			# 	v += '0';
			# 	if( v > '9' )
			# 		v += 7; // 'A' - '9' - 1
			# 	return v;
			# }
			
# ------------------------------------------------------------------------------
itoa:			# char *itoa(unsigned int n, unsigned int b, char *s) {
			# 	char *p = s;
			# 	char digit;
			# 	do {
			# 		digit = n % b;
			# 		n = n / b;
			# 		*p++ = toascii( digit );
			# 	} while( n > 0 );
			#	*p = '\0';
			# 	strrev( s );
			# 	return s;
			# }
			
			
