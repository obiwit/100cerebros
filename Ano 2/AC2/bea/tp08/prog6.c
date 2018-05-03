#include <detpic32.h>

void configUART(unsigned int baudrate, unsigned char parity, unsigned int databits, unsigned int stopbits) {

	// config baudrate
	if (baudrate < 600 || baudrate > 115200) baudrate = 115200;
	U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1; 	
	U1MODEbits.BRGH = 0; 										

	// config parity
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

	// config stop bits
	if (stopbits == 2)
		U1MODEbits.STSEL = 1; 	// 1 = 2 stop bits
	else
		U1MODEbits.STSEL = 0;		// 0 = 1 stop bit

	// enablements!
	U1STAbits.UTXEN = 1; 	// enable transmission
	U1STAbits.URXEN = 1; 	// enable reception
	U1MODEbits.ON = 1; 		// enable UART1
}

void configInterrupts() {

	// UART1
	IPC6bits.U1IP = 2;		// configure priority of interrupts
	IFS0bits.U1RXIF = 0;	// clear interrupt flag 
	IEC0bits.U1RXIE = 1;	// enable interrupts
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
	configInterrupts();

	EnableInterrupts();

	while(1);
}

void _int_(24) isr_uart1(void) {
    put1char(U1RXREG);

    // Clear UART1 rx interrupt flag
    IFS0bits.U1RXIF = 0;
}