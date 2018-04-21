#include <detpic32.h>

void configIO() {
	// Configure Timer T1 (2 Hz) 
	T1CONbits.TCKPS = 7; 		// 1:256 prescaler
	PR1 = 39062;				// Fout = 2 Hz
	TMR1 = 0;					// Reset timer T1 count register
	T1CONbits.TON = 1;			// Enable timer T1 (must be the last command of the 
								// timer configuration sequence)
	// Configure Timer T3 (10 Hz) 
	T3CONbits.TCKPS = 5; // 4 p/ 20 Hz	// 1:256 prescaler
	PR3 = 62499;				// Fout = 10 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3 (must be the last command of the 
								// timer configuration sequence)
	// Configure interrupts
	// T1
	IPC1bits.T1IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T1IE = 1; 			// Enable timer T3 interrupts
	IFS0bits.T1IF = 0; 			// Reset timer T3 interrupt flag
	// T3
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

void _int_(4) isr_T1(void) // timer T1 
{
	putChar('1');

	// Reset T1 interrupt flag
	IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void) // timer T3
{
	putChar('3');

	// Reset T3 interrupt flag
	IFS0bits.T3IF = 0;
}