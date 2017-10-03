/*
 * Ex06_4.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;

public class Ex06_4 {

	public static void main(String[] args) {
		Scanner read = new Scanner (System.in); 

		// Get String(s)
		String str;

		// From args
		if (args.length < 1) {
			System.out.println("Please insert the string you want to invert: ");
			str = read.nextLine(); 
			System.out.printf("\n'%s' -> '%s'", str, invertString(str));
		}
		// Or from console
		else {
			for (int i = 0; i < args.length; i++) {
				System.out.printf("\n'%s' -> '%s'", args[i], invertString(args[i]));
			}
		}
	}

	// invertString method
	public static String invertString (String str){
		//end case : when the substring of the string it's being inverted only has 1 char
		if (str.length() == 1) {
			return str; 
		}
		//returns last char of the string and calls the function again for the rest of the said string
		return str.charAt(str.length() - 1) + invertString(str.substring(0, str.length()-1));
		
	}
}


