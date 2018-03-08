#include <detpic32.h>

void printChar7Seg(char c) {
	if (c == 'a') 
	{
		LATB = (LATB & 0x80FF) | 0x7700;
	}
	else if (c == 'b') 
	{
		LATB = (LATB & 0x80FF) | 0x7C00;
	}
	else if (c == 'c') 
	{
		LATB = (LATB & 0x80FF) | 0x3900;
	}
	else if (c == 'd') 
	{
		LATB = (LATB & 0x80FF) | 0x5E00;
	}
	else if (c == 'e') 
	{
		LATB = (LATB & 0x80FF) | 0x7900;
	}
	else if (c == 'f') 
	{
		LATB = (LATB & 0x80FF) | 0x7100;
	}
	else if (c == 'g') 
	{
		LATB = (LATB & 0x80FF) | 0x6F00;
	}
	else if (c == '.') 
	{
		LATB = (LATB & 0x80FF) | 0x8000;
	}
}

void delay(int ms) {

	while(ms > 0) 
	{
		resetCoreTimer();
   		while(readCoreTimer() < PBCLK/1000);
   		ms--;
  	}
}


void main(void)
{
	unsigned char segment;
	LATDbits.LATD6 = 1; 		// display high active 
	LATDbits.LATD5 = 0; 		// display low inactive
	// LATD = (LATD & 0xFF9F) | 0x0040; // display high active, low inactive

	TRISB = TRISB & 0x80FF; 	// configure RB8-RB14 as outputs
	TRISD = TRISD & 0xFF9F;		// configure RD5-RD6 as outputs

	while(1)
	{
		LATDbits.LATD6 = !LATDbits.LATD6; 	//
		LATDbits.LATD5 = !LATDbits.LATD5; 	// toggle display selection 
		// segment = 1;
		// LATD = LATD ^ 0x0060; // toggle display selection 

		int i = 0;
		segment = 'a';
		while(i < 7)
		{
		    printChar7Seg(segment++);	     // send "segment" value to display
		    delay(1000);		             // wait 1 second

		    // segment = segment << 1;
		    i++;
		} 
	}
}


// void main(void)
// {
// 	LATD = LATD & 0xFF9F;		// The initial value should be set
// 	LATB = LATB & 0x00FF; 		// before configuring the port as output 

// 	TRISD = TRISD & 0xFF9F; 	// RD5 and RD6 configured as output
// 	TRISB = TRISB & 0x00FF; 	// RB8 to RB15 configured as output

// 	LATDbits.LATD5=1;
// 	LATDbits.LATD6=0;

// 	char c = 'a';
// 	while(1) 
// 	{
// 		if (c = 'h') 
// 			c = 'a';

// 		printChar7Seg(c++);	

// 		delay(1000);
//     }
// }