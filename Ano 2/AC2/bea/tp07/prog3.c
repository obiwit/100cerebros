#include <detpic32.h>

char flag = 0;

void configIO() {
	// Configure Timer T3 (2 Hz) 
	T3CONbits.TCKPS = 7; 		// 1:256 prescaler
	PR3 = 39062;				// Fout = 2 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3 (must be the last command of the 
								// timer configuration sequence)
	// Configure interrupts
	IPC3bits.T3IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T3IE = 1; 			// Enable timer T3 interrupts
	IFS0bits.T3IF = 0; 			// Reset timer T3 interrupt flag

}

void main(void)
{
	// Configure Timer T3 with interrupts enabled EnableInterrupts();
	configIO();
	EnableInterrupts();

	while(1);
}

void _int_(12) isr_T3(void) // Replace VECTOR by the timer T3 // vector number
{
	if(flag) putChar('.');
	flag ^= 1;

	// Reset T3 interrupt flag
	IFS0bits.T3IF = 0;
}