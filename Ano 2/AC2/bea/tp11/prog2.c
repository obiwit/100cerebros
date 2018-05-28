#include <detpic32.h>
#include "i2c.h"
#include "eeprom.h"

volatile int voltage = 0; 	 // Global variable
static int sample_num = 8;	 // Number of samples ADC takes
static int K3 = 49999;		 // controls K value for Timer 3

// temperature
volatile int temperature;
volatile char showTemperature = 0;
volatile char can_get = 0;

// eeprom
static int maxSavedValues = 64;
volatile int savedValues = 0;
volatile int iterationsCounter = 0;
volatile char registerValues = 0;

void configIO() 
{
	// Configure Timer T1 (4 Hz) 
	T1CONbits.TCKPS = 7; 		// 1:256 prescaler
	PR1 = 19530;				// Fout = 4 Hz
	TMR1 = 0;					// Reset timer T1 count register
	T1CONbits.TON = 1;			// Enable timer T1 (must be the last command of the 
								// timer configuration sequence)
	// Configure Timer T3 (100 Hz) 
	T3CONbits.TCKPS = 2; 		// 1:256 prescaler
	PR3 = 49999;				// Fout = 100 Hz
	TMR3 = 0;					// Reset timer T3 count register
	T3CONbits.TON = 1;			// Enable timer T3 (must be the last command of the 
								// timer configuration sequence)

	OC1CONbits.OCM = 6;			// PWM mode on OCx; fault pin disabled
	OC1CONbits.OCTSEL = 1; 		// Use timer T3 as the time base for PWM generation 
	OC1RS = 12500; 				// Ton constant (50,000*0.25 = 12,500)
	OC1CONbits.ON = 1;			// Enable OC1 module

	// Configure interrupts
	// T1
	IPC1bits.T1IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T1IE = 1; 			// Enable timer T1 interrupts
	IFS0bits.T1IF = 0; 			// Reset timer T1 interrupt flag
	// T3
	IPC3bits.T3IP = 2; 			// Interrupt priority (must be in range [1..6]) 
	IEC0bits.T3IE = 1; 			// Enable timer T3 interrupts
	IFS0bits.T3IF = 0; 			// Reset timer T3 interrupt flag
	// ADC
	IPC6bits.AD1IP = 2; 	// configure priority of A/D interrupts
	IEC1bits.AD1IE = 1; 	// enable A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag

	// Configure the A/D module and port RB4 as analog input
	TRISBbits.TRISB4 = 1;	  			// RB4 digital output disconnected
	AD1PCFGbits.PCFG4 = 0;    			// RB4 configured as analog input (AN4)
	AD1CON1bits.SSRC = 7;				// Conversion trigger selection bits
	AD1CON1bits.CLRASAM = 1;			// Stop conversions when the 1st A/D converter interrupt is generated
	AD1CON3bits.SAMC = 16;				// Sample time is 16 TAD (TAD = 100 ns) 
	AD1CON2bits.SMPI = sample_num-1;	// Interrupt is generated after 8=(7+1) sample
	AD1CHSbits.CH0SA = 4; 				// Selects AN4 as input for the A/D converter
	AD1CON1bits.ON = 1;					// Enable A/D converter

	// Configure 7Seg Display outputs
    LATDbits.LATD6 = 1;         // display high active 
    LATDbits.LATD5 = 0;         // display low inactive

    TRISB = TRISB & 0x00FF;     // configure RB8-RB15 as outputs
    TRISD = TRISD & 0xFF9F;     // configure RD5-RD6 as outputs

	// Configure RB0 and RB1 as inputs
    TRISB = TRISB | 0x0003;
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
        LATBbits.LATB15 = (showTemperature)? 0 : 1;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
}

void setPWM(unsigned int dutyCycle)
{
	// duty_cycle must be in the range [0, 100]
	OC1RS = K3 * dutyCycle / 100; 
}

int getTemperature(int *temperature) 
{
	int ack;

	// Send Start event
	i2c1_start();
	ack = i2c1_send(ADDR_WR);
	ack += i2c1_send(RTR);

	// Send Start event (again)
	i2c1_start();
	ack += i2c1_send(ADDR_RD);

	// Test "ack" variable; if "ack" != 0 then an error has occurred
	if (ack != 0)
	{
		i2c1_stop();
		printStr("Errors happen...\n");
	} 
	else 
	{
		// Receive a value from temp sensor
		*temperature = i2c1_receive(I2C_NACK);
		i2c1_stop();
	}

	return ack;
}

void eeprom_action(char c) 
{
	int i;
	putChar(c);
	switch(c)
	{
		case 'R':
		case 'r':
			registerValues = 0;
			savedValues = 0;
			eeprom_writeData(0, savedValues);
			break;
		case 'L':
		case 'l':
			registerValues = 1;
			break;
		case 'S':
		case 's':
			printStr("\nStored Temperature values:\n");
			for (i = 0; i < savedValues; i++) 
			{
				printInt10(eeprom_readData(2+i));
				putChar(' ');
			}
			break;
	}
}

void main(void)
{
	int dutyCycle;
	configIO();
	EnableInterrupts(); // Global Interrupt Enable 

	// for temperature sensor
	i2c1_init(TC74_CLK_FREQ);

	// for eeprom
	spi2_init();
	spi2_setClock(EEPROM_CLOCK);
	eeprom_writeStatusCommand(WREN);

	while(1)
	{		
		// Read RB1, RB0 to the variable "portVal"
		unsigned char portVal = PORTB & 0x0003;
		showTemperature = (portVal == 0x03);
		switch(portVal)
		{
		 case 0:  	// Measure input voltage
		    IEC0bits.T1IE = 1; 	// Enable T1 interrupts
		    setPWM(0);  		// LED OFF
		    break;

		case 1: 	// Freeze
			IEC0bits.T1IE = 0;	// Disable T1 interrupts
			setPWM(100);		// LED ON (maximum bright) 
			break;
			
	 	case 2: 	// LED brigthness control
		    IEC0bits.T1IE = 1; 	// Enable T1 interrupts
		    dutyCycle = voltage * 3;
		    setPWM(dutyCycle);
			break; 

		case 3:		// Print Temperature
		    IEC0bits.T1IE = 1; 	// Enable T1 interrupts
		    if (can_get) 
		    {
				// Get Temperature from sensor
				getTemperature(&temperature);
				can_get = 0;
		    }
			break;
		}

		eeprom_action(inkey());
	} 
}

void _int_(4) isr_T1(void) // timer T1 
{
	can_get = 1;

	// Start A/D conversion
	AD1CON1bits.ASAM = 1;

	// (4 Hz) => reaches 60 (=4*15) every 15 seconds
	if (registerValues && savedValues < maxSavedValues && iterationsCounter >= 60)
	{
		eeprom_writeData(2+savedValues, (char)temperature);
		eeprom_writeData(0, ++savedValues);
		iterationsCounter = 0;
	} 
	else
		iterationsCounter++;

	// Reset T1 interrupt flag
	IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void) // timer T3
{
	if (showTemperature)
		send2displays(((temperature/10) & 0x000F) << 4 | ((temperature%10) & 0x000F));
	else
		send2displays(voltage);

	// Reset T3 interrupt flag
	IFS0bits.T3IF = 0;
}

// Interrupt Handler
void _int_(27) isr_adc(void) {

	// Calculate buffer average (8 samples)
	int volt = 0;

 	int *p = (int *)(&ADC1BUF0); 
	int i;
	for(i = 0; i < sample_num; i++) {
	//	printInt(p[i*4], 10); 
		volt += p[i*4];
	//	putChar(' ');
	}
	// putChar('\n');

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