#include <detpic32.h>

volatile int voltage = 0; // Global variable
static int K3 = 49999; // controls K value for Timer 3


void configIO() 
{
	// Configure Timer T3 (100 Hz) 
	T3CONbits.TCKPS = 2; 		// 1:256 prescaler
	PR3 = K3;					// Fout = 100 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3

	OC1CONbits.OCM = 6;			// PWM mode on OCx; fault pin disabled
	OC1CONbits.OCTSEL = 1; 		// Use timer T3 as the time base for PWM generation 
	OC1RS = 12500; 				// Ton constant (50,000*0.25 = 12,500)
	OC1CONbits.ON = 1;			// Enable OC1 module

	// Configure interrupts
	// T3
	// IPC3bits.T3IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	// IEC0bits.T3IE = 1; 			// Enable timer T3 interrupts
	// IFS0bits.T3IF = 0; 			// Reset timer T3 interrupt flag

}

void setPWM(unsigned int dutyCycle)
{
	// duty_cycle must be in the range [0, 100]
	OC1RS = K3 * dutyCycle / 100; 
}

void main(void)
{
	configIO();
	// EnableInterrupts();

	unsigned int dutyCycleVals[8] = {0, 10, 25, 50, 65, 75, 85, 100};

	while(1) {

		int i;
		for ( i = 0; i < 9; ++i)
		{
			i = i%8;

			int j = 0;
			while(j < 5000000) {
				setPWM(dutyCycleVals[i]);
				j++;
			}
		}
	}
}

// void _int_(12) isr_T3(void) // timer T3
// {
// 	// Send "voltage" global variable to displays
// 	send2displays(voltage);

// 	// Reset T3 interrupt flag
// 	IFS0bits.T3IF = 0;
// }