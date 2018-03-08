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
	LATE = LATE & 0xFFF0;		// The initial value should be set
								// before configuring the port as output 

	TRISE = TRISE & 0xFFF0; 	// RE0 to RE3 configured as output

	int counter = 0;

	while(1) {
        delay(250);         	// 4HZ = 0.25s = 250ms
        counter++;
        counter = counter & 0x000F;
        LATE = (LATE & 0xFFF0) | counter;
    }
}
