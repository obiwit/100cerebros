#include <detpic32.h>

void configUART(int baudrate, char parity, int databits, int stopbits) {

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

	// config RB6 as output
	TRISBbits.TRISB6 = 0;

   while(1)
   {
		// Wait until TRMT == 1
   		//while (U1STAbits.TRMT == 0); // EM VEZ DE SE ESPERAR QUE O BUFFER ESVAZIE, MAL HA ESPACO PARA UM CHARACTER
   									   // O PUT1CHAR ESCREVE ESSE CHARACTER

		// Set RB6
   		LATBbits.LATB6 = 1;

		putstring("1234567890\n");

		// Reset RB6
   		LATBbits.LATB6 = 0;
	}
}
