#include <detpic32.h>

void delay(int ms) {

	while(ms > 0) 
	{
		resetCoreTimer();
   		while(readCoreTimer() < PBCLK/1000);
   		ms--;
  	}
}

unsigned char toBcd(unsigned char value) {
	return ((value / 10) << 4) + (value % 10);
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
		LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_low] << 8);

		if(value%2 == 0)
			LATBbits.LATB15 = 1;
	}
	// else send digit_high to display_high
	else 
	{
		LATDbits.LATD5 = 0; LATDbits.LATD6 = 1;
		LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_high] << 8);

		if(value%2 != 0)
			LATBbits.LATB15 = 1;
	}
	// toggle "displayFlag" variable
	displayFlag = !displayFlag;
}

void stop_n_shine() {
	// for 5 seconds, shine '00' on and off for hald a second
	int i = 0;
	do {
		LATB = (LATB & 0x00FF) | 0x3F00;
		LATDbits.LATD5 = 1; LATDbits.LATD6 = 1;
		delay(500); // wait 500 ms

		LATB = (LATB & 0x00FF);
		delay(500); // wait 500 ms 

	} while(++i < 5); // 5000 ms = 5s
}

void main(void)
{
	// declare variables
	// initialize ports

	LATDbits.LATD6 = 1; 		// display high active 
	LATDbits.LATD5 = 0; 		// display low inactive

	TRISB = TRISB & 0x00FF; 	// configure RB8-RB15 as outputs
	TRISD = TRISD & 0xFF9F;		// configure RD5-RD6 as outputs

	unsigned char counter = 0;
	while(1)
	{
		int i = 0;
		do {
			if (counter == 0)
				stop_n_shine(counter++);

			// delay(50); // wait 50 ms	
			delay(10); // wait 10 ms

			// call send2displays with counter value as argument 
			send2displays( toBcd(counter) );
		} while(++i < 100); // 1000 ms = 1 Hz
		// increment counter (module 60)
		counter = (counter+1) % 60;
	}
}


