#include <detpic32.h>

void main(void)
{
	// Configure all (digital I/O, analog input, A/D module)

	// Configure the A/D module and port RB4 as analog input
	TRISBbits.TRISB6 = 0;	  // RB6 set as digital output
	TRISBbits.TRISB4 = 1;	  // RB4 digital output disconnected 
	AD1PCFGbits.PCFG6 = 1;    // RB6 set as digital port
	AD1PCFGbits.PCFG4 = 0;    // RB4 configured as analog input (AN4)

	AD1CON1bits.SSRC = 7;		// Conversion trigger selection bits: in this 
								// mode an internal counter ends sampling and 
								// starts conversion 

	AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter 
								// interrupt is generated. At the same time, 
								// hardware clears the ASAM bit 

	AD1CON3bits.SAMC = 16;		// Sample time is 16 TAD (TAD = 100 ns) 

	AD1CON2bits.SMPI = 0;		// Interrupt is generated after 1=(0+1) sample

	AD1CHSbits.CH0SA = 4; 		// Selects AN4 as input for the A/D converter

	AD1CON1bits.ON = 1;			// Enable A/D converter 
								// This must the last command of the A/D 
								// configuration sequence
	
	IPC6bits.AD1IP = 2; 	// configure priority of A/D interrupts
	IEC1bits.AD1IE = 1; 	// enable A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag
 	
	// Configure interrupt system
	IFS1bits.AD1IF = 0;		// Reset AD1IF flag
	EnableInterrupts();		// Global Interrupt Enable

	// Start A/D conversion
	AD1CON1bits.ASAM = 1;

	while(1) { }			// all activity is done by the ISR

}

// Interrupt Handler
void _int_(27) isr_adc(void) {

	LATBbits.LATB6 = 0;				// Reset LATB6

	// Start conversion
	AD1CON1bits.ASAM = 1; 

	// Print ADC1BUF0 value		// Hexadecimal (3 digits format)
	printInt(ADC1BUF0, 16 | 3 << 16);

	putChar('\n');  // esthetic reasons

	AD1CON1bits.ASAM = 1; 			// Start conversion
	LATBbits.LATB6 = 1;				// Set LATB6
	IFS1bits.AD1IF = 0;				// Reset AD1IF
}


