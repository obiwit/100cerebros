#include <detpic32.h>
#include "i2c.h"

void delay (int ms);


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

int main(void)
{
	int temperature;
	i2c1_init(TC74_CLK_FREQ);
	while(1)
	{
		if(getTemperature(&temperature) == 0) break;

		// Print "temperature" variable (syscall printInt10)
		printStr("Temperature = ");
		printInt10(temperature);
		printStr("\n");

		// Wait 250 ms
		delay(250);
	}

	return 0;
}



void delay (int ms)
{
	while (ms > 0) {
		resetCoreTimer();
		while(readCoreTimer() < 20000);
		ms--;
	}
}