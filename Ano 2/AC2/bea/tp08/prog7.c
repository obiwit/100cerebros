#include <detpic32.h>

volatile int voltage = 0; 	 // Global variable
volatile int voltMin = 33, voltMax = 0;
static int sample_num = 8;	 // Number of samples ADC takes
static int K3 = 49999;		 // controls K value for Timer 3

void configIO() 
{
	// Configure Timer T1 (4 Hz) 
	T1CONbits.TCKPS = 7; 		// 1:256 prescaler
	PR1 = 19530;				// Fout = 4 Hz
	TMR1 = 0;					// Reset timer T1 count register
	T1CONbits.TON = 1;			// Enable timer T1 (must be the last command of the 
								// timer configuration sequence)
	// Configure Timer T3 (100 Hz) 
	T3CONbits.TCKPS = 2; 		// 1:256 prescaler
	PR3 = 49999;				// Fout = 100 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3 (must be the last command of the 
								// timer configuration sequence)

	OC1CONbits.OCM = 6;			// PWM mode on OCx; fault pin disabled
	OC1CONbits.OCTSEL = 1; 		// Use timer T3 as the time base for PWM generation 
	OC1RS = 12500; 				// Ton constant (50,000*0.25 = 12,500)
	OC1CONbits.ON = 1;			// Enable OC1 module

	// Configure interrupts
	// T1
	IPC1bits.T1IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T1IE = 1; 			// Enable timer T1 interrupts
	IFS0bits.T1IF = 0; 			// Reset timer T1 interrupt flag
	// T3
	IPC3bits.T3IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T3IE = 1; 			// Enable timer T3 interrupts
	IFS0bits.T3IF = 0; 			// Reset timer T3 interrupt flag
	// ADC
	IPC6bits.AD1IP = 2; 	// configure priority of A/D interrupts
	IEC1bits.AD1IE = 1; 	// enable A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag

	// UART1
	IPC6bits.U1IP = 2;		// configure priority of interrupts
	IFS0bits.U1RXIF = 0;	// clear interrupt flag (receive)
	IFS0bits.U1EIF = 0; 	// clear interrupt flag (error)
	IEC0bits.U1RXIE = 1;	// enable interrupts (receive)
	IEC0bits.U1EIE = 1;		// enable interrupts (error)

	// Configure the A/D module and port RB4 as analog input
	TRISBbits.TRISB4 = 1;	  			// RB4 digital output disconnected
	AD1PCFGbits.PCFG4 = 0;    			// RB4 configured as analog input (AN4)
	AD1CON1bits.SSRC = 7;				// Conversion trigger selection bits
	AD1CON1bits.CLRASAM = 1;			// Stop conversions when the 1st A/D converter interrupt is generated
	AD1CON3bits.SAMC = 16;				// Sample time is 16 TAD (TAD = 100 ns) 
	AD1CON2bits.SMPI = sample_num-1;	// Interrupt is generated after 8=(7+1) sample
	AD1CHSbits.CH0SA = 4; 				// Selects AN4 as input for the A/D converter
	AD1CON1bits.ON = 1;					// Enable A/D converter

	// Configure 7Seg Display outputs
    LATDbits.LATD6 = 1;         // display high active 
    LATDbits.LATD5 = 0;         // display low inactive

    TRISB = TRISB & 0x00FF;     // configure RB8-RB15 as outputs
    TRISD = TRISD & 0xFF9F;     // configure RD5-RD6 as outputs

	// Configure RB0 and RB1 as inputs
    TRISB = TRISB | 0x0003;
}

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

void send2displays(unsigned char value) 
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 
        0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;            // variável não perde o valor entre
                                            // chamadas à função (static)
    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;
    // if "displayFlag" is 0 then send digit_low to display_low 
    if (!displayFlag)
    {
        LATDbits.LATD5 = 1; LATDbits.LATD6 = 0;
        LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_low] << 8);
    }
    // else send digit_high to display_high
    else 
    {
        LATDbits.LATD5 = 0; LATDbits.LATD6 = 1;
        LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
}

void setPWM(unsigned int dutyCycle)
{
	// duty_cycle must be in the range [0, 100]
	OC1RS = K3 * dutyCycle / 100; 
}

void put1char(char byte2send)
{
	// wait while UTXBF == 1
	while(U1STAbits.UTXBF == 1);
	// Copy byte2send to the UxTXREG register
	U1TXREG = byte2send;
}

void main(void)
{
	int dutyCycle;
	configIO();
	EnableInterrupts(); // Global Interrupt Enable 

	while(1)
	{
		// Read RB1, RB0 to the variable "portVal"
		unsigned char portVal = PORTB & 0x0003;
		switch(portVal)
		{
		 case 0:  	// Measure input voltage
		    IEC0bits.T1IE = 1; 	// Enable T1 interrupts
		    setPWM(0);  		// LED OFF
		    break;

		case 1: 	// Freeze
			IEC0bits.T1IE = 0;	// Disable T1 interrupts
			setPWM(100);		// LED ON (maximum bright) 
			break;

	 	default: 	// LED brigthness control
		    IEC0bits.T1IE = 1; 	// Enable T1 interrupts
		    dutyCycle = voltage * 3;
		    setPWM(dutyCycle);
			break; 
		}
	} 
}

void _int_(4) isr_T1(void) // timer T1 
{
	// Start A/D conversion
	AD1CON1bits.ASAM = 1;

	// Reset T1 interrupt flag
	IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void) // timer T3
{
	static int aux = 0;

	// Send "voltage" global variable to displays
	send2displays(voltage);

	if (aux++ == 100) 
	{
		put1char(0x30 + (voltage >> 4));
		put1char('.');
		put1char(0x30 + (voltage & 0x0F));
		put1char('\n');
		aux = 0;
	}

	// Reset T3 interrupt flag
	IFS0bits.T3IF = 0;
}

// GetChar
void _int_(24) isr_uart1(void) {
	// handle errors 

	// If U1EIF set then
	if (IFS0bits.U1EIF == 1) {
	    //    if overrun error then clear OERR flag
	    if (U1STAbits.OERR == 1) {
	    	U1STAbits.OERR = 0;
	    }
	    else {
	    	//    else read U1RXREG to a dummy variable
	    	char c = U1RXREG;
	    }

	    //    clear UART1 error interrupt flag
	    IFS0bits.U1EIF = 0;
	}

	// Else it's U1RXIF
	char c = U1RXREG;
    put1char(c);

    if(c == 'L') {
    	printf("\nV min = %f\nV max = %f\n", voltMin/10.0, voltMax/10.0);
    }

    // Clear UART1 rx interrupt flag
    IFS0bits.U1RXIF = 0;
}

// ADC Interrupt Handler
void _int_(27) isr_adc(void) {

	// Calculate buffer average (8 samples)
	int volt = 0;

 	int *p = (int *)(&ADC1BUF0); 
	int i;
	for(i = 0; i < sample_num; i++) {
		volt += p[i*4];
	}

    // Calculate voltage amplitude
    volt /= sample_num;

    // Convert voltage amplitude to decimal
    int V = (volt*33+511)/1023;

    // Update variables "voltMin" and "voltMax"
    if (voltMin > V)
    	voltMin = V;
    else if (voltMax < V)
    	voltMax = V;

    int whole_part =  V / 10;
    int decimal_part = V % 10;

	// Assign it to "voltage" 
    voltage = (whole_part & 0x000F) << 4 | (decimal_part & 0x000F);

	IFS1bits.AD1IF = 0; // Reset AD1IF flag
}
