#include <detpic32.h>

void delay(int ms) {

	while(ms > 0) 
	{
		resetCoreTimer();
   		while(readCoreTimer() < PBCLK/1000);
   		ms--;
  	}
}

int main(void)
{
	//volatile int aux;
	TRISBbits.TRISB6 = 0;	  // RB6 set as digital output
	TRISBbits.TRISB4 = 1;	  // RB4 digital output disconnected 
	AD1PCFGbits.PCFG6 = 1;    // RB6 set as digital port
	AD1PCFGbits.PCFG4 = 0;    // RB4 configured as analog input (AN4)

	// Configure A/D module; configure RB6 as a digital output port 
	TRISBbits.TRISB6 = 0; 		// RB6 digital output disconnected 
	AD1PCFGbits.PCFG6 = 0; 		// RB6 configured as analog input (AN4)

	AD1CON1bits.SSRC = 7;		// Conversion trigger selection bits: in this 
								// mode an internal counter ends sampling and 
								// starts conversion 

	AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter 
								// interrupt is generated. At the same time, 
								// hardware clears the ASAM bit 

	AD1CON3bits.SAMC = 16;		// Sample time is 16 TAD (TAD = 100 ns) 

	AD1CON2bits.SMPI = 3;		// Interrupt is generated after 4=(3+1) sample
	// previously 0 ( 1=0+1)

	AD1CHSbits.CH0SA = 4; 		// Selects AN4 as input for the A/D converter

	AD1CON1bits.ON = 1;			// Enable A/D converter 
								// This must the last command of the A/D 
								// configuration sequence
	while(1)
	{
		// Set LATB6
		LATBbits.LATB6 = 1;

		// Start conversion
		AD1CON1bits.ASAM = 1; 

		// Wait while conversion not done (AD1IF == 0)
		while (IFS1bits.AD1IF == 0);

		// Reset LATB6
		LATBbits.LATB6 = 0;

		// Read conversion result (ADC1BUF0) to "aux" variable 
		//aux = ADC1BUF0;

		// int *p = (int *)(&ADC1BUF0); 
		// int i;
		// for(i = 0; i < 16; i++) {
		// 	printInt(p[i*4], 16 | 4 << 16); 
		// 	putChar(' ');
		// }
		// putChar('\n');

		int *p = (int *)(&ADC1BUF0);
		for(; p <= (int *)(&ADC1BUFF); p+=4) {
		    printInt(*p, 16 | 4 << 16); 
			putChar(' ');
		}
		putChar('\n');

		// Reset AD1IF
		IFS1bits.AD1IF = 0;
		delay(1000);
	} 

	
}