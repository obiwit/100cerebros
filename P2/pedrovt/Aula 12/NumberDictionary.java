import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import p2utils.HashTable;

/**
 * NumberDictionary <p>
 * Numbers are double so this program works with any real number. 
 * To have a working version of the program that was asked, just replace: <p>
 * double -> int <p>
 * Double.parseDouble -> Integer.parseInt <p>
 * Double -> Integer <p>
 * result = 0.0 -> result = 0 <p>
 * aux = 0.0    -> aux = 0 <p>
 * 
 * Copyright 2017, MIECT - DETI UA
 * @author Pedro Teixeira
 * 
 */

public class NumberDictionary {

	// Fields
	/** {@code HashTable} dictionary with a univocal correspondence between the number spelling (the key) and the number (the element).
	 */
	HashTable<Double> translator;

	/**
	 * Constructor.
	 * Uses the file "@filepath" to create a number dictionary.
	 * @param filePath
	 */
	NumberDictionary(String filePath) {
		translator = new HashTable<>(35);

		// Get info from file
		File inFile = new File(filePath);
		if (!inFile.exists() || !inFile.canRead()) {
			System.err.println("Error: " + inFile.getPath() + "Number file is not valid.");
			System.exit(1);
		}

		// Use info from file to create a dictionary
		try {
			Scanner scFile = new Scanner(inFile);
			while(scFile.hasNextLine()) {
				// Read line
				String line = scFile.nextLine();
				String[] lineContents = line.split(" - ");

				// key is the text (eg "eight"), element is the number (eg 8)
				try{
					translator.set(lineContents[1], Double.parseDouble(lineContents[0]));		
				} catch (NumberFormatException e) {
					System.err.println("Error: " + lineContents[0] + " is not a valid number. It will be ignored.");
				}
			}
			scFile.close();
		} catch (FileNotFoundException e) {
			System.err.println("I/O Error while reading number file");
			System.exit(2);
		}
	
	}

	// Ex 12.3
	/**
	 * Translates a number in its word representation to its decimal representation.
	 * @param translator 
	 */
	public void getDirectTranslation() {
		// Read list of numbers from scanner
		Scanner scConsole = new Scanner(System.in);
		while (scConsole.hasNext()) {
			String num = scConsole.next();

			// treats num-num situation
			String[] nums = num.split("-");

			// Translate
			for (String str : nums) {
				if (translator.contains(str)) {
					System.out.print(translator.get(str) + " ");
				}
				else {		// prints "A list of numbers: " and equivalents
					System.out.print(str + " ");
				}
			}
		}
		scConsole.close();
	}

	// Ex 12.4
	/**
	 * Translates word by word an integer number, from its word representation, to its decimal representation.
	 * Only integers are supported (negative numbers started by "minus").
	 */
	public void getAlmostSmartTranslation() {
		//System.err.println("Entering smart translation ");

		// Read list of numbers from scanner
		Scanner scConsole = new Scanner(System.in);

		while (scConsole.hasNextLine()) {
			String   rawKeys  = scConsole.nextLine();
			String[] keys     = rawKeys.split("-| ");			// treats "num1-num2" situation

			Double result = 0.0;
			Double aux    = 0.0;										// to accumulate multiplications until a new addition
			boolean negative = false;

			// Translate
			for (String str : keys) {

				if (translator.contains(str)) {
					Double num = translator.get(str);

					//System.err.println("Num: " + numKey);

					/* Detect 0-9, 11-19, 20, 30, 40, 50, 60, 70, 80, 90  
					 * and : 1. sum aux to result; 2. aux = 0; 3. sum num to aux; */	
					if ( (num >= 0 && num <= 9) || (num >= 11 && num < 20) || (num != 10 && num <= 90 && num % 10 == 0) ) {
						//System.err.println("Entering if 1");

						result += aux;
						aux     = num; 

						//System.err.println("result " +result + " aux " + aux);
					}

					// else multiply
					else {
						//System.err.println("Entering if 2");

						if (aux == 0) {			// in case the number starts by ten/hundred/thousand (since num * 0 = 0)
							aux = num;
						}
						else {
							aux *= num;
						}

						//System.err.println("result " +result + " aux " + aux);
					}

				}

				// Detects if it's a negative number
				else if (str.toLowerCase().equals("minus")) {
					negative = true;
				}

				/* Detects if String str is not valid. str is not valid if
				 * it's not a number (ie it's not in the dictionary translator) 
				 * and it's not "and/AND" or no input) */

				else if (!str.toLowerCase().equals("and") && !str.equals("")) {
					System.err.print("\nNumber text " + str + " does not exist in table");
					System.exit(3);
				}

				//System.out.println("Next number---------------------");
			}

			// OUTPUT
			result += aux;
			if (negative) result *= -1;
			System.out.println(rawKeys + " -> " + result + " ");
		}

	}

	/**
	 * Translates word by word an integer number, from its word representation, to its decimal representation.
	 * Only integers are supported (negative numbers started by "minus").
	 */
	public void getSmartTranslation() {
		//System.err.println("Entering smart translation ");

		// Read list of numbers from scanner
		Scanner scConsole = new Scanner(System.in);

		while (scConsole.hasNextLine()) {
			String   rawKeys  = scConsole.nextLine();
			String[] keys     = rawKeys.split("-| ");			// treats "num1-num2" situation

			double result = 0;
			double aux    = 0;										// to accumulate multiplications until a new addition
			boolean negative = false;

			// Translate
			for (String str : keys) {

				if (translator.contains(str)) {
					double num = translator.get(str);
	
					if (num < aux) {
						result += aux;
						aux     = num; 
					}

					// else multiply
					else {
						if (aux == 0) {			// in case the number starts by ten/hundred/thousand (since num * 0 = 0)
							aux = num;
						}
						else {
							aux *= num;
						}
					}

				}

				// Detects if it's a negative number
				else if (str.toLowerCase().equals("minus")) {
					negative = true;
				}

				/* Detects if String str is not valid. str is not valid if
				 * it's not a number (ie it's not in the dictionary translator) 
				 * and it's not "and/AND" or no input) */
				else if (!str.toLowerCase().equals("and") && !str.equals("")) {
					System.err.print("\nNumber text " + str + " does not exist in table");
					System.exit(3);
				}
			}

			// OUTPUT
			result += aux;
			if (negative) result *= -1;
			System.out.println(rawKeys + " -> " + result + " ");
		}
	}
	
	/**
	 * Translates word by word a real number, from its word representation, to its decimal representation.
	 */
	public void getSuperSmartTranslation() {
		//System.err.println("Entering smart translation ");

		// Read list of numbers from scanner
		Scanner scConsole = new Scanner(System.in);

		while (scConsole.hasNextLine()) {
			String   rawKeys  = scConsole.nextLine();
			String[] keys     = rawKeys.split("-| ");			// treats "num1-num2" situation

			double result = 0;
			double aux    = 0;										// to accumulate multiplications until a new addition
			boolean negative = false;

			// Translate
			for (String str : keys) {

				if (translator.contains(str)) {
					double num = translator.get(str);
	
					if ( (num < aux && num > 0) || (num > aux && num < 0 )) {
						result += aux;
						aux     = num; 
					}

					// else multiply
					else {
						if (aux == 0) {			// in case the number starts by ten/hundred/thousand (since num * 0 = 0)
							aux = num;
						}
						else {
							aux *= num;
						}
					}

				}

				// Detects if it's a negative number
				else if (str.toLowerCase().equals("minus")) {
					negative = true;
				}

				/* Detects if String str is not valid. str is not valid if
				 * it's not a number (ie it's not in the dictionary translator) 
				 * and it's not "and/AND" or no input) */
				else if (!str.toLowerCase().equals("and") && !str.equals("")) {
					System.err.print("\nNumber text " + str + " does not exist in table");
					System.exit(3);
				}
			}

			// OUTPUT
			result += aux;
			if (negative) result *= -1;
			System.out.println(rawKeys + " -> " + result + " ");
		}

	}
}
