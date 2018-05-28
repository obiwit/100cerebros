#include <detpic32.h>
#include "eeprom.h"

void spi2_setClock(unsigned int clock_freq) 
{
	SPI2BRG = (PBCLK + clock_freq)/(2*clock_freq) - 1;
}

void spi2_init(void)
{
	volatile char trash;

	// Disable SPI2 module
	SPI2CONbits.ON = 0;

	SPI2CONbits.CKP = 0;
	SPI2CONbits.CKE = 1;
	SPI2CONbits.SMP = 0;

	SPI2CONbits.MODE16 = 0;

	SPI2CONbits.ENHBUF = 1;
	SPI2CONbits.MSSEN = 1;
	SPI2CONbits.MSTEN = 1;

	// Clear RX FIFO:
	while(SPI2STATbits.SPIRBE == 0) 
		trash = SPI2BUF; 

	SPI2STATbits.SPIROV = 0;

	// Enable SPI2 module
	SPI2CONbits.ON = 1; 
}

char eeprom_readStatus(void)
{
	volatile char trash;

	// Clear RX FIFO (discard all data in the reception FIFO)
	while(SPI2STATbits.SPIRBE == 0)
		trash = SPI2BUF; 

	// Clear overflow error flag bit
	SPI2STATbits.SPIROV = 0;

	SPI2BUF = RDSR; // Send RDSR command
	SPI2BUF = 0; 	// Send anything so that EEPROM clocks data into SO 

	while(SPI2STATbits.SPIBUSY); // wait while SPI module is working 
	trash = SPI2BUF; 			 // First char received is garbage (received while sending command)

	return SPI2BUF; // Second received character is the STATUS value
}

void eeprom_writeStatusCommand(char command) {
	while( eeprom_readStatus() & 0x01 ); // Wait while write in progress

	// Copy "command" value to SPI2BUF (TX FIFO)
	SPI2BUF = command;

	// Wait while SPI module is working
	while(SPI2STATbits.SPIBUSY);
}

void eeprom_writeData(int address, char value) {
	// Apply a mask to limit address to 9 bits
	address = address & 0x1FF;

	// Read STATUS and wait while write in progress
	while( eeprom_readStatus() & 0x01 );

	eeprom_writeStatusCommand(WREN); 
	SPI2BUF = WRITE | ((address & 0x100) >> 5);
	SPI2BUF = address & 0x0FF;
	SPI2BUF = value;

	// Wait while SPI module is working
	while(SPI2STATbits.SPIBUSY);
}

char eeprom_readData(int address)
{
	volatile char trash;

	// Clear RX FIFO
	while(SPI2STATbits.SPIRBE == 0)
		trash = SPI2BUF; 

	// Clear overflow error flag bit
	SPI2STATbits.SPIROV = 0;
	
	// Apply a mask to limit address to 9 bits
	address = address & 0x1FF;

	// Read STATUS and wait while write in progress
	while( eeprom_readStatus() & 0x01 );

	SPI2BUF = READ | ((address & 0x100) >> 5);
	SPI2BUF = address & 0xFF;
	SPI2BUF = 0x00; 							// Copy any value (e.g. 0x00) to the TX FIFO

	// Wait while SPI module is working
	while(SPI2STATbits.SPIBUSY);

	// Read and discard 2 characters from RX FIFO
	int i;
	for(i=0; i<2; i++)
		trash = SPI2BUF; 

	// Read RX FIFO and return the corresponding value
	return SPI2BUF;
}
