#include <detpic32.h>

volatile int voltage = 0; // Global variable
static int sample_num = 8;

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

void main(void)
{
	// Function to configure all (digital I/O, analog input, A/D module, timers T1 and T3, interrupts)
	configIO();
	EnableInterrupts();

	while(1);
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
	// Send "voltage" global variable to displays
	send2displays(voltage);

	// Reset T3 interrupt flag
	IFS0bits.T3IF = 0;
}

// Interrupt Handler
void _int_(27) isr_adc(void) {

	// Calculate buffer average (8 samples)
	int volt = 0;

 	int *p = (int *)(&ADC1BUF0); 
	int i;
	for(i = 0; i < sample_num; i++) {
		printInt(p[i*4], 10); 
		volt += p[i*4];
		putChar(' ');
	}
	putChar('\n');

    // Calculate voltage amplitude
    volt /= sample_num;

    // Convert voltage amplitude to decimal
    int V = (volt*33+511)/1023;
    int whole_part =  V / 10;
    int decimal_part = V % 10;

	// Assign it to "voltage" 
    voltage = (whole_part & 0x000F) << 4 | (decimal_part & 0x000F);

	IFS1bits.AD1IF = 0; // Reset AD1IF flag
}