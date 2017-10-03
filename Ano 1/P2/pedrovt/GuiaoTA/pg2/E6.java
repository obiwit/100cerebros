/**
 * E6
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

package pg2;
import java.util.Scanner;

public class E6 {
	
	public static void main (String[] args) {
		Scanner read = new Scanner (System.in); 

		// Get int(s)

		// From args
		if (args.length < 1) {
			System.out.println("Please insert the number: ");
			int num = read.nextInt(); 
			//System.out.println(num);
			divisors(num, 0);
		}
		// Or from console
		else {
			for (String i : args) {
				//System.out.println(i);
				divisors(Integer.parseInt(i), 0); 
			}
		}
	}
	
	// It's working
	public static void divisors (int argNum, int numSpaces) {
		
		String spaces = "";
		
		for (int i = 0; i < numSpaces; i++) {
			spaces += "   ";
		}
		System.out.println(spaces + argNum);
		/* Can't be the number nor number 1; i = argNum-1 and not 0 
		 * because the output in the question shows from the greater diviser 
		 * to the smaller */
		for (int i = argNum - 1 ; i > 1; i--) {			
			if (argNum % i == 0) {
				// System.out.println("  DIVISORS FROM " + i);
				divisors(i, numSpaces+1);
				// System.out.println("  END DIVISORS FROM " + i);
			
			}
			
		}
	}

}
