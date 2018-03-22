#include <detpic32.h>

// Configure all (digital I/O, analog input, A/D module)
void init_config() {

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
	
	// Config Interrupts 
	IPC6bits.AD1IP = 2; 	// configure priority of A/D interrupts
	IEC1bits.AD1IE = 1; 	// enable A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag
 	
	EnableInterrupts();		// Global Interrupt Enable
}

void main(void)
{
	init_config();

	// Start A/D conversion
	AD1CON1bits.ASAM = 1;

	while(1) {
		LATBbits.LATB6 = 0;				// Reset LATB6
	}			

}

// Interrupt Handler
void _int_(27) isr_adc(void) {

	// Print ADC1BUF0 value		// Hexadecimal (3 digits format)
	printInt(ADC1BUF0, 16 | 3 << 16);

	putChar('\n');  // esthetic reasons

	AD1CON1bits.ASAM = 1; 			// Start conversion
	IFS1bits.AD1IF = 0;				// Reset Conversion Flag
	LATBbits.LATB6 = 1;				// Set LATB6
}

// A/D converter time - 3.5/3.6 microseconds
// Prog2 time - 4.7/4.8 microseconds
// Prog3 time - 1 microsecond
