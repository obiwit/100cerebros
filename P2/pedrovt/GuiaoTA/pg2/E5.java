/**
 * E5
 * Construa uma função recursiva countPairs que recebendo (pelo menos) um String
 * como argumento, devolve o numero de vezes que dois caracteres iguais estão em posições
 * consecutivas nesse texto.
 * 
 * java -ea P2 a abba sfffsff 
 * 
 * "a" contains 0 pairs of consecutive equal characters
 * "abba" contains 1 pairs of consecutive equal characters
 * "sfffsff" contains 3 pairs of consecutive equal characters
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

package pg2;
import java.util.Scanner;
public class E5 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// Read strings
		
		// Through console if arguments are not given
		if (args.length == 0) {
			Scanner read = new Scanner(System.in);
			
			System.out.println("Please insert the String: ");
			String str = read.nextLine();
			System.out.println(str + " contains " + countPairs(str) + " pairs of consecutive equal characters");
		// Or through args	
		} else {
			for (String i: args) {
				System.out.println(i + " contains " + countPairs(i) + " pairs of consecutive equal characters");
			}
		}
		
		System.exit(0);
	}

	public static int countPairs (String argStr) {
		return countPairs(argStr, 0);
	}
	
	// also doable with substring
	private static int countPairs (String argStr, int i) {
		if (i == argStr.length()-1) {					// end case
			return 0;
		}
		if (argStr.charAt(i) == argStr.charAt(i+1)) { 	// if the characters are equal
			return 1 + countPairs(argStr, i+1);			// counts a pair of consecutive equal characters
		}
		//else											// if they are not
		return countPairs(argStr, i+1);					// doesn't count (adds 0 to the next iteration)
			
	}
}
