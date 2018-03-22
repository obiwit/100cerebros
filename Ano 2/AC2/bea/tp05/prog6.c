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

void main(void)
{
    // Configure all (digital I/O, analog input, A/D module) 

    // 7Seg Display
    LATDbits.LATD6 = 1;         // display high active 
    LATDbits.LATD5 = 0;         // display low inactive

    TRISB = TRISB & 0x00FF;     // configure RB8-RB15 as outputs
    TRISD = TRISD & 0xFF9F;     // configure RD5-RD6 as outputs

    //  A/D module
    TRISBbits.TRISB6 = 0;     // RB6 set as digital output
    TRISBbits.TRISB4 = 1;     // RB4 digital output disconnected 
    AD1PCFGbits.PCFG6 = 1;    // RB6 set as digital port
    AD1PCFGbits.PCFG4 = 0;    // RB4 configured as analog input (AN4)

    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this 
                                // mode an internal counter ends sampling and 
                                // starts conversion 

    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter 
                                // interrupt is generated. At the same time, 
                                // hardware clears the ASAM bit 

    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns) 
    AD1CON2bits.SMPI = 3;       // Interrupt is generated after 4=(3+1) sample
    AD1CHSbits.CH0SA = 4;       // Selects AN4 as input for the A/D converter
    AD1CON1bits.ON = 1;

    int i = 0;
    unsigned char to_BCD;

    while(1)
    {
        // Wait 10 ms using the core timer
        delay(10);

            if(++i == 25)  // 250 ms
            {
                AD1CON1bits.ASAM = 1;           // Start conversion
                while (IFS1bits.AD1IF == 0);    // Wait while conversion not done (AD1IF == 0)

                // Convert analog input (4 samples)
                int voltage_average = 0;

                int *p = (int *)(&ADC1BUF0);
                for(; p <= (int *)(&ADC1BUFF); p+=4) { 
                    // Calculate buffer average
                    voltage_average += *p;
                }

                // Calculate voltage amplitude
                voltage_average /= 4;

                // Convert voltage amplitude to decimal
                int V = (voltage_average*33+511)/1023;
                int whole_part =  V / 10;
                int decimal_part = V % 10;

                to_BCD = (whole_part & 0x000F) << 4 | (decimal_part & 0x000F);

                i = 0;
            }
            

            // Send voltage value to displays
            send2displays(to_BCD);
        }
}
