#include <detpic32.h>

int main(void)
{
	// Configure the A/D module and port RB4 as analog input

	TRISBbits.TRISB4 = 1; 		// RB4 digital output disconnected 
	AD1PCFGbits.PCFG4 = 0; 		// RB4 configured as analog input (AN4)

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
 	while(1)
	{
		// Start conversion
		AD1CON1bits.ASAM = 1; 			// Start conversion

		// Wait while conversion not done (AD1IF == 0)
		while( IFS1bits.AD1IF == 0 ); 	// Wait while conversion not done

		// Read conversion result (ADC1BUF0 value) and print it 
		printInt(ADC1BUF0, 16 | 3 << 16);

		putChar('\n');  // esthetic reasons

		// Reset AD1IF
		IFS1bits.AD1IF = 0; 			// reset 'conversion done' bit
	}
}






// TRISBbits.TRISBx = 1;		// RBx digital output disconnected 

// AD1PCFGbits.PCFGx= 0;		// RBx configured as analog input (AN4) 

// AD1CON1bits.SSRC = 7;		// Conversion trigger selection bits: in this 
// 							// mode an internal counter ends sampling and 
// 							// starts conversion 

// AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter 
// 							// interrupt is generated. At the same time, 
// 							// hardware clears the ASAM bit 

// AD1CON3bits.SAMC = 16;		// Sample time is 16 TAD (TAD = 100 ns) 

// AD1CON2bits.SMPI = XX;	// Interrupt is generated after XX+1 samples 
// 							// (replace XX+1 by the desired number of 
// 							// consecutive samples) 
//							// 1(=0+1) samples will be converted and stored
//							// in buffer location ADC1BUF0

// AD1CHSbits.CH0SA = x;		// Replace x by the desired input 
// 							// analog channel (0 to 15) 

// AD1CON1bits.ON = 1;			// Enable A/D converter 
// 							// This must the last command of the A/D 
//							// configuration sequence