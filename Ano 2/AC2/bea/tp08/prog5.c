#include <detpic32.h>

void configUART(unsigned int baudrate, unsigned char parity, unsigned int databits, unsigned int stopbits) {

	if (baudrate < 600 || baudrate > 115200) baudrate = 115200;

	U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1; 	// Set Baud rate
	U1MODEbits.BRGH = 0; 										

	if(databits == 9) {
		U1MODEbits.PDSEL = 11;
		// 11 = 9-bit data, no parity
	}
	else {
		if (parity == 'E')
			U1MODEbits.PDSEL = 01; 	// 01 = 8-bit data, even parity
		else if (parity == 'O')
			U1MODEbits.PDSEL = 10; 	// 10 = 8-bit data, odd parity
		else
			U1MODEbits.PDSEL = 00; 	// 00 = 8-bit data, no parity
	}

	if (stopbits == 2)
		U1MODEbits.STSEL = 1; 	// 1 = 2 stop bits
	else
		U1MODEbits.STSEL = 0;		// 0 = 1 stop bit

	U1STAbits.UTXEN = 1; 	// enable transmission
	U1STAbits.URXEN = 1; 	// enable reception
	U1MODEbits.ON = 1; 		// enable UART1
}

void put1char(char byte2send)
{
	// wait while UTXBF == 1
	while(U1STAbits.UTXBF == 1);
	// Copy byte2send to the UxTXREG register
	U1TXREG = byte2send;
}

char get1char() 
{
	// If OERR == 1 then reset OERR
	if(U1STAbits.OERR == 1) U1STAbits.OERR = 0;

	// Wait while URXDA == 0
	while(U1STAbits.URXDA == 0);

	// If FERR or PERR then
	if (U1STAbits.FERR || U1STAbits.PERR) 
	{
		// read UxRXREG (to discard the character) and return 0 
		char never_mind = U1RXREG;
		return 0;
	}
	// else return U1RXREG
	return U1RXREG;
}

void putstring(char *str)
{
	// use putc() function to send each charater ('\0' should not 
	// be sent)
	while (*str != '\0') 
	{
		put1char(*str);
		str++;
	}
}

int main(void)
{
	// Configure UART1 (115200, N, 8, 1) 
	configUART(115200,'N', 8, 1);

	while(1)
	{
		put1char( get1char() );
	}
}
