#include <detpic32.h>

void configIO() {
	// Configure Timer T3 (2 Hz with interrupts disabled) 

	T3CONbits.TCKPS = 7; 		// 1:256 prescaler
	PR3 = 39062;				// Fout = 2 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3 (must be the last command of the 
								// timer configuration sequence)

	// OC1CONbits.OCM = 6;
	// OC1CONbits.OCTSEL =0; 	// Use timer T3 as the time base for PWM generation 
	// OC1RS = 12500; 			// Ton constant
	// OC1CONbits.ON = 1; 		// Enable OC1 module
}


void main(void)
{
	// Configure Timer T3 (2 Hz with interrupts disabled)
	configIO();

	while(1)
	{
		// Wait until T3IF = 1
		while(IFS0bits.T3IF == 0);

		putChar('.');

		// Reset T3IF
		IFS0bits.T3IF = 0;
	} 
}