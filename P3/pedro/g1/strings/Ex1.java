package g1.strings;

import java.util.Scanner;

/**
 * Ex1
 * 
 * @author Pedro Teixeira, 84715
 */
public class Ex1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// Read String
		Scanner sc = new Scanner (System.in);
		String s = sc.nextLine();
		
		
		System.out.println("Only upper case: " + onlyUpperCase(s));
		System.out.println("Only lower case: " + onlyLowerCase(s));
		words(s);
		System.out.println("Switched chars 2 by 2: " + switchChars(s));
	}

	// Only uppercase?
	/**
	 *  
	 * @param s String to analyze
	 * @return {@code true} if the string only has upper case characters, else {@code false}
	 */
	public static boolean onlyUpperCase (String s) {
		return s.toUpperCase().equals(s);
	}
	
	// Only lowercase?
	/**
	 *  
	 * @param s String to analyze
	 * @return {@code true} if the string only has low case characters, else {@code false}
	 */
	public static boolean onlyLowerCase (String s) {
		return s.toLowerCase().equals(s);
	}
	
	// Total of words
	/**
	 * Counts the number of words and prints the said words
	 * A word is considered to be splitted by spaces, \t or \n
	 */
	public static void words (String s) {
		String[] words = s.split(" |\n|\t");
		System.out.println("Total of read words: " + words.length + "\nRead words:");
		for (String w: words) {
			System.out.println("\t" + w);
		}
	}
	
	/**
	 * 
	 * @param s
	 * @return A new string with the chars switched 2 by 2
	 */
	public static String switchChars (String s) {
		StringBuilder n = new StringBuilder();
		
		int length = s.length();
		for (int i = 0; i < length - 1; i = i + 2) {
			n.append(s.charAt(i + 1));
			n.append(s.charAt(i));
		}
		
		if (length % 2 != 0) n.append(s.charAt(length-1));		// strings with an odd-length must have the last char added 
		return n.toString(); 
	}
}
