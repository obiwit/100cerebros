#include <detpic32.h>

int baudrate = 115200;

void delay(int ms) 
{
	while (ms > 0)
	{
		resetCoreTimer();
		while (readCoreTimer() < 20000);
		ms--;
	}
}

void putc(char byte2send)
{
	// wait while UTXBF == 1
	while(U1STAbits.UTXBF == 1);
	// Copy byte2send to the UxTXREG register
	U1TXREG = byte2send;
}

int main(void)
{

	// Configure UART1 (115200, N, 8, 1)
	U1BRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1; 	// Set Baud rate
	U1MODEbits.BRGH = 0;


	U1MODEbits.PDSEL = 00;
	// 11 = 9-bit data, no parity
	// 10 = 8-bit data, odd parity
	// 01 = 8-bit data, even parity
	// 00 = 8-bit data, no parity

	U1MODEbits.STSEL = 0;	 // 1 stop bit

	U1STAbits.UTXEN = 1; 	// enable transmission
	U1STAbits.URXEN = 1; 	// enable reception
	U1MODEbits.ON = 1; 		// enable UART1

	while(1)
	{
		putc('+');
		delay(1000); // wait 1 s 
	}
}
