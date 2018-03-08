#include <detpic32.h>

void delay(int ms) {

	while(ms > 0) 
	{
		resetCoreTimer();
   		while(readCoreTimer() < PBCLK/1000);
   		ms--;
  	}
}

void send2displays(unsigned char value) 
{
	static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 
		0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

	static char displayFlag = 0; 			// variável não perde o valor entre
	                                        // chamadas à função (static)
	unsigned char digit_low = value & 0x0F;
	unsigned char digit_high = value >> 4;
	// if "displayFlag" is 0 then send digit_low to display_low 
	if (!displayFlag)
	{
		LATDbits.LATD5 = 1; LATDbits.LATD6 = 0;
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8);
	}
	// else send digit_high to display_high
	else 
	{
		LATDbits.LATD5 = 0; LATDbits.LATD6 = 1;
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8);
	}
	// toggle "displayFlag" variable
	displayFlag = !displayFlag;
}

void main(void)
{
	// declare variables
	// initialize ports

	LATDbits.LATD6 = 1; 		// display high active 
	LATDbits.LATD5 = 0; 		// display low inactive

	TRISB = TRISB & 0x80FF; 	// configure RB8-RB14 as outputs
	TRISD = TRISD & 0xFF9F;		// configure RD5-RD6 as outputs

	unsigned char counter = 0;
	while(1)
	{
		int i = 0;
		do {
			// delay(50); // wait 50 ms	
			delay(10); // wait 10 ms

			// call send2displays with counter value as argument 
			send2displays( counter );
		} while(++i < 20); // 200 ms = 5 Hz
		// increment counter (module 256)
		counter++;
	}
}