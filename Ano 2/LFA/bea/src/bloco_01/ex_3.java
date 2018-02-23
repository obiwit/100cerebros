package bloco_01;

import java.util.List;
import java.util.Arrays;
import java.util.Scanner;

public class ex_3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.print("1337 Number Translator... enter a sentece below\n -> ");
			String[] in = sc.nextLine().split(" |-");
			
			// didn't realize there was a file for this :/
			// for an example implementation using files, see ex. 6 or 7
			List<String> strNumbers = Arrays.asList( new String[] {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety", "hundred", "thousand", "hundred thousand", "million",  "hundred million", "thousand million"});
			Integer[] intNumbers = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 30, 40, 50, 60, 70, 80, 90, 100, 1000, 100000, 1000000, 100000000, 1000000000};
			
			try {
				for(String s : in) {
					if (strNumbers.contains(s)) {
						System.out.print(intNumbers[strNumbers.indexOf(s)] + " ");
					} else {
						System.out.print(s + " ");
					}
				}
				System.out.println();
			} catch(Exception e) {
				System.err.println("ごめんなさい... something went wrong! :p");
				sc.close();
			}
		}
	}

}
