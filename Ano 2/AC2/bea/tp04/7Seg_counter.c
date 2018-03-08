#include <detpic32.h>

void delay(int ms) {

	while(ms > 0) 
	{
		resetCoreTimer();
   		while(readCoreTimer() < PBCLK/1000);
   		ms--;
  	}
}

void send2displays(unsigned char value) {
	static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 
		0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
	
	while(1) 
	{
		// send digit_low to display_low
		LATDbits.LATD5 = 1; 		// display high active
		LATDbits.LATD6 = 0; 		// display low inactive 
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[(value >> 4)] << 8); // high part (shift)
		delay(20);

		// send digit_high to display_high
		LATD = LATD ^ 0x0060; // toggle display selection 
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[(display7Scodes[value] & 0x0F)] << 8); // low part (rem)
		delay(20);
	}
}

void main(void) {
	static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 
		0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71}; 

	// configure RB8 to RB14 ...
	//  ... and RD5 to RD6 as outputs
	LATDbits.LATD6 = 1; 		// display high active 
	LATDbits.LATD5 = 0; 		// display low inactive
	// LATD = (LATD & 0xFF9F) | 0x0040; // display high active, low inactive

	TRISB = TRISB & 0x80FF; 	// configure RB8-RB14 as outputs
	TRISD = TRISD & 0xFF9F;		// configure RD5-RD6 as outputs

	unsigned char counter = 0;

	while(1) 
	{
    	display7Scodes[counter++]; // send to display
    	delay(200);
	} 
}