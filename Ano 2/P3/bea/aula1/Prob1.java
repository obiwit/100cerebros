package aula1;

import java.util.Scanner;

import aula1.prob1.StringHelper;

public class Prob1 {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		// get string
		System.out.print("Enter a string or a sentece: ");
		StringHelper s = new StringHelper(sc.nextLine());

		// print string properties
		System.out.println("Number of numeric characrers: " + s.numericChars());
		if (s.isUpperCase()) {
			System.out.println("YOUR STRING IS ALL UPPERCASE!");
		} else if (s.isLowerCase()) {
			System.out.println("your string is all lowercase!");
		}
		System.out.println("Number of words: " + s.numWords());
		System.out.println("New string with every 2 characters switched: " + s.twoCharSwitchedString());
		
		sc.close();
	}

}
