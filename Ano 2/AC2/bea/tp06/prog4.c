#include <detpic32.h>

volatile unsigned char voltage = 0; // Global variable
static int sample_num = 8;


// Configure all (digital I/O, analog input, A/D module)
void init_config() {

    // Configure 7Seg Display outputs
    LATDbits.LATD6 = 1;         // display high active 
    LATDbits.LATD5 = 0;         // display low inactive

    TRISB = TRISB & 0x00FF;     // configure RB8-RB15 as outputs
    TRISD = TRISD & 0xFF9F;     // configure RD5-RD6 as outputs

	// Configure the A/D module and port RB4 as analog input
	TRISBbits.TRISB4 = 1;	  // RB4 digital output disconnected
	AD1PCFGbits.PCFG4 = 0;    // RB4 configured as analog input (AN4)

	AD1CON1bits.SSRC = 7;		// Conversion trigger selection bits: in this 
								// mode an internal counter ends sampling and 
								// starts conversion 

	AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter 
								// interrupt is generated. At the same time, 
								// hardware clears the ASAM bit 

	AD1CON3bits.SAMC = 16;				// Sample time is 16 TAD (TAD = 100 ns) 
	AD1CON2bits.SMPI = sample_num-1;	// Interrupt is generated after 8=(7+1) sample
	AD1CHSbits.CH0SA = 4; 				// Selects AN4 as input for the A/D converter
	AD1CON1bits.ON = 1;					// Enable A/D converter
	
	// Config Interrupts 
	IPC6bits.AD1IP = 2; 	// configure priority of A/D interrupts
	IEC1bits.AD1IE = 1; 	// enable A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag
 	
	EnableInterrupts();		// Global Interrupt Enable
}

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

    static char displayFlag = 0;            // variável não perde o valor entre
                                            // chamadas à função (static)
    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;
    // if "displayFlag" is 0 then send digit_low to display_low 
    if (!displayFlag)
    {
        LATDbits.LATD5 = 1; LATDbits.LATD6 = 0;
        LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_low] << 8);
    }
    // else send digit_high to display_high
    else 
    {
        LATDbits.LATD5 = 0; LATDbits.LATD6 = 1;
        LATB = (LATB & 0x00FF) | ((int)display7Scodes[digit_high] << 8);
        LATBbits.LATB15 = 1;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
}

void main(void) {
	init_config();

	int i = 0;
	while(1)
    {
        // Wait 10 ms using the core timer
    	delay(10);

        if(i++ == 25)  // 250 ms (4 samples/second)
        {
			// Start A/D conversion
        	AD1CON1bits.ASAM = 1;

			i = 0; 
       	}
      	// Send "voltage" variable to displays
      	send2displays(voltage);
    }

}

// Interrupt Handler
void _int_(27) isr_adc(void) {

	// Calculate buffer average (8 samples)
	int volt = 0;

 	int *p = (int *)(&ADC1BUF0); 
	int i;
	for(i = 0; i < sample_num; i++) {
		printInt(p[i*4], 10); 
		volt += p[i*4];
		putChar(' ');
	}
	putChar('\n');

    // Calculate voltage amplitude
    volt /= sample_num;

    // Convert voltage amplitude to decimal
    int V = (volt*33+511)/1023;
    int whole_part =  V / 10;
    int decimal_part = V % 10;

	// Assign it to "voltage" 
    voltage = (whole_part & 0x000F) << 4 | (decimal_part & 0x000F);

	IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

// A/D converter time - 3.5/3.6 microseconds
// Prog2 time - 4.7/4.8 microseconds
// Prog3 time - 1 microsecond
// instruction time (40MHz) -> 25 nanoseconds
