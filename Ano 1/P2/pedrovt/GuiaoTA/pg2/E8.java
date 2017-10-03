/**
 * E8
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

package pg2;
import java.util.Scanner;
public class E8 {

	public static void main(String[] args){
		// Get Strings
		
		// Through args
		if (args.length % 2 == 0) {
			for (int i = 0; i < args.length; i=i+2) {
				String message = isPrefix(args[i], args[i+1], 0) ? "true" : "false";
				System.out.printf("%s is prefixed by %s --> %s\n", args[i], args[i+1], message);
			}
		}
		// or through console
		else {
			Scanner read = new Scanner(System.in);
			
			System.out.printf("Please insert the Strings --> \n");
			String str = read.nextLine();
			
			System.out.printf("Please insert the prefix --> \n");
			String prefix = read.nextLine();
			
			String message = isPrefix(str, prefix, 0) ? "true" : "false";
			System.out.printf("%s is prefixed by %s --> %s\n", str, prefix, message);
		}
		
		System.exit(0);
	}
	
	public static boolean isPrefix (String argStr, String argPrefix, int index) {
		if (index > argPrefix.length()-1) {					// End case
			return true;
		}
		if (argStr.length() < argPrefix.length()) {			// Special case : argStr < argPrefix
			return false;
		}
		if (argStr.charAt(index) == argPrefix.charAt(index)) {		// if it's a prefix or not
			return isPrefix(argStr, argPrefix, index+1);			// verifies the next position 
																	// if its prefix, it will reach the end case and return true 
		}
		return false;
	
	}
}
