#include <detpic32.h>

#define BUF_SIZE 8 //32
#define INDEX_MASK (BUF_SIZE - 1)
// const int INDEX_MASK = BUF_SIZE-1;

#define TRUE 1
#define FALSE 0



typedef struct
{
	unsigned char data[BUF_SIZE];
	unsigned int head;
	unsigned int tail;
	unsigned int count;
} circularBuffer;

volatile circularBuffer rxb; 	// Reception buffer
volatile circularBuffer txb; 	// Transmission buffer

#define DisableUart1RxInterrupt() IEC0bits.U1RXIE = 0 
#define EnableUart1RxInterrupt()  IEC0bits.U1RXIE = 1
#define DisableUart1TxInterrupt() IEC0bits.U1TXIE = 0 
#define EnableUart1TxInterrupt()  IEC0bits.U1TXIE = 1


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
	IFS0bits.U1RXIF = 0;	// clear interrupt flag (RX)
	IFS0bits.U1TXIF = 0;	// clear interrupt flag (TX)
	IEC0bits.U1RXIE = 1;	// enable interrupts (RX)
	IEC0bits.U1TXIE = 1;	// enable interrupts (TX)
}

void comDrv_flushRx(void)
{
	// Initialize variables of the reception buffer 
	rxb.head = 0;
	rxb.tail = 0;
	rxb.count = 0;
}

void comDrv_flushTx(void)
{
	// Initialize variables of the transmission buffer 
	txb.head = 0;
	txb.tail = 0;
	txb.count = 0;
}

void comDrv_putc(char ch)
{
	while(txb.count == BUF_SIZE);				// Wait while buffer is full 

	txb.data[txb.tail] = ch; 					// Copy character to the transmission
												// buffer at position "tail" 

	txb.tail = (txb.tail + 1) & INDEX_MASK; 	// Increment "tail" index (mod. BUF_SIZE) 

	DisableUart1TxInterrupt(); 					// Begin of critical section
    txb.count +=1; 								// Increment "count" variable
	EnableUart1TxInterrupt(); 					// End of critical section 
}

void comDrv_puts(char *s)
{
	while (*s != '\0') 
	{
		comDrv_putc(*s);
		s++;
	}
}

char comDrv_getc(char *pchar)
{
	// Test "count" variable (reception buffer) and if it is zero, return FALSE 
	if (rxb.count == 0) return FALSE;
	
	DisableUart1RxInterrupt(); 					// Begin of critical section 
	*pchar = rxb.data[rxb.head]; 				// Copy character pointed by "head" to *pchar
	rxb.count--; 								// Decrement "count" variable
	rxb.head = (rxb.head + 1) & INDEX_MASK;		// Increment "head" variable (mod BUF_SIZE) 
	EnableUart1RxInterrupt(); 					// End of critical section 

	if(*pchar == 'S')
		comDrv_puts("\n\n1000000000000066600000000000001\n\n");

	return TRUE;
}

void main() 
{
	configUART(115200,'N', 8, 1);
	configInterrupts(); 

	comDrv_flushRx();
    comDrv_flushTx();

	EnableInterrupts();

	comDrv_puts("PIC32 UART Device-driver\n");

	char aux;
	while(1) {
		// Read character from reception buffer
		if(comDrv_getc(&aux)) {

			// Send character to the transmission buffer
			comDrv_putc(aux);
		}
	}
}

void _int_(24) isr_uart1(void)
{
	// if U1TXIF is set
	if (IFS0bits.U1TXIF == 1)
    {
		// if "count" variable (transmission buffer, txb) is greater than 0 
		while (txb.count > 0 && U1STAbits.UTXBF == 0)
		{	
			// Copy character pointed by "head" to U1TXREG register
			U1TXREG = txb.data[txb.head];

			// Increment "head" variable (mod BUF_SIZE)
			txb.head = (txb.head + 1) & INDEX_MASK;

			// Decrement "count" variable
			txb.count--;
		}
		// if "count" variable is 0 then
		if (txb.count == 0)
		     DisableUart1TxInterrupt();

		// Reset UART1 TX interrupt flag
	    IFS0bits.U1TXIF = 0;
	}

	// If U1RXIF is set
	if (IFS0bits.U1RXIF == 1) 
	{
		// Read character from UART and write it to the "tail" position of the reception buffer
		rxb.data[rxb.tail] = U1RXREG; 

		// Increment "tail" variable (mod BUF_SIZE)
		rxb.tail = (rxb.tail + 1) & INDEX_MASK;

		// If reception buffer is not full (e.g. count < BUF_SIZE) 
		if (rxb.count < BUF_SIZE) 
		{
			// then increment "count" variable
			rxb.count++;
		}
		else {
			// else increment "head" variable (discard oldest character) 
			rxb.head = (rxb.head + 1) & INDEX_MASK;
		}

		// reset UART1 RX interrupt flag
    	IFS0bits.U1RXIF = 0;
    }
}
