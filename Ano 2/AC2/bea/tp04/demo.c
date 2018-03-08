#include <detpic32.h>

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
	LATDbits.LATD0 = 0;			// The initial value should be set
								// before configuring the port as output 
	TRISDbits.TRISD0 = 0; 		// RD0 configured as output

	while(1) {
        delay(500);         // half period = 0.5s
        LATDbits.LATD0 = !LATDbits.LATD0;
    }
}
