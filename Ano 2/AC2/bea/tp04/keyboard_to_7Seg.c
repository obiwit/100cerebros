#include <detpic32.h>

void printChar7Seg(char c) {
	if (c == 'a') 
	{
		LATB = (LATB & 0x00FF) | 0x7700;
	}
	else if (c == 'b') 
	{
		LATB = (LATB & 0x00FF) | 0x7C00;
	}
	else if (c == 'c') 
	{
		LATB = (LATB & 0x00FF) | 0x3900;
	}
	else if (c == 'd') 
	{
		LATB = (LATB & 0x00FF) | 0x5E00;
	}
	else if (c == 'e') 
	{
		LATB = (LATB & 0x00FF) | 0x7900;
	}
	else if (c == 'f') 
	{
		LATB = (LATB & 0x00FF) | 0x7100;
	}
	else if (c == 'g') 
	{
		LATB = (LATB & 0x00FF) | 0x6F00;
	}
	else if (c == '.') 
	{
		LATB = (LATB & 0x00FF) | 0x8000;
	}
}

// 10 | 9 | -8- | 7 | 6
// 		--1--
//		|	|
//		7	2
//		|	|
//		--9--
//		|	|
//		6	4
//		|	|
// 		--5-- -10- 
//  1 | 2 | -3- | 4 | 5

void main(void)
{
	LATD = LATD & 0xFF9F;		// The initial value should be set
	LATB = LATB & 0x00FF; 		// before configuring the port as output 

	TRISD = TRISD & 0xFF9F; 	// RD5 and RD6 configured as output
	TRISB = TRISB & 0x00FF; 	// RB8 to RB15 configured as output



	LATDbits.LATD5=1;
	LATDbits.LATD6=0;

	while(1) 
	{
		char c = getChar();
		if (('a' <= c && c <= 'g') || c == '.') 
		{
			printChar7Seg(c);
		} 
		else if ('A' <= c && c <= 'G') 
		{
			printChar7Seg(c+32); // 32 = 'a' - 'A' [in ASCII]
		}

    }
}
