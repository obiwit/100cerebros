/* 
	Logic Operations in C
	val_1 = 0x1234, val_2 = 0x000F
	val_1 = 0x1234, val_2 = 0xF0F0
	val_1 = 0x5C1B, val_2 = 0xA3E4
	& (and); | (or); ^ (xor); ~ (not)
*/

# include <iostream>
# include <iomanip> 
# include <bitset>

// using namespace std

int main(int argc, char **argv) {
	unsigned long val_1 = 0xE543;
	unsigned long val_2 = 0x0614;
	
	/*
	unsigned long val_1 = 0x1234; 
	unsigned long val_2 = 0xF0F0;
	*/

	/*
	unsigned long val_1 = 0x5C1B; 
	unsigned long val_2 = 0xA3E4;
	*/

	std::cout  << std::showbase 		// show the 0x prefix
         	   << std::internal 		// fill between the prefix and the number
               << std::setfill('0') 	
               << std::hex ;

    std::cout << "Value A = " << std::bitset<16>(val_1).to_ulong()    		       << std::endl;		// Value 1        
    std::cout << "Value B = " << std::bitset<16>(val_2).to_ulong()    		       << std::endl;		// Value 2        
    std::cout << "-------------------"											   << std::endl;

    std::cout << "Bitwise And  = " << std::bitset<16>(val_1 & val_2).to_ulong()    << std::endl;		// AND
	std::cout << "Bitwise Or   = " << std::bitset<16>(val_1 | val_2).to_ulong()    << std::endl;		// OR
	std::cout << "Bitwise Nor  = " << std::bitset<16>(~(val_1 | val_2)).to_ulong() << std::endl;		// NOR
	std::cout << "Bitwise Xor  = " << std::bitset<16>(val_1 ^ val_2).to_ulong()    << std::endl;		// XOR
	std::cout << "Not val_1 = " << std::bitset<16>(~ val_1).to_ulong()     << std::endl;				// NOT value1
	std::cout << "Not val_2 = " << std::bitset<16>(~ val_2).to_ulong()     << std::endl;				// NOT value2
	
	return 0;
}
