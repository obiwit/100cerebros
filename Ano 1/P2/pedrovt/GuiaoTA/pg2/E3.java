/**
 * E3
 * Implemente uma função recursiva (invertDigits) que recebendo (pelo menos) um
 * String como argumento, devolve um novo String em que as sequências de digitos lá
 * contidas são invertidas mantendo a ordem dos restantes caracteres.
 * 
 * abc9876cba -> abc6789cba
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

package pg2;
import java.util.Scanner;
public class E3 {

	public static void main(String[] args) {
		Scanner read = new Scanner (System.in); 

		// Get String(s)
		String str;

		// From args
		if (args.length < 1) {
			System.out.println("Please insert the string you want to invert: ");
			str = read.nextLine(); 
			System.out.printf("\n'%s' -> '%s'", str, invertDigits(str));
		}
		// Or from console
		else {
			for (String i : args) {
				System.out.println(i + " -> " + invertDigits(i));
			}
		}
	}
	
	public static String invertDigits (String argsStr) {
		//end case : when the substring of the string it's being inverted only has 1 char
		if (argsStr.length() == 1) {
			return argsStr; 
		}
		//returns last char of the string and calls the function again for the rest of the said string
		return argsStr.charAt(argsStr.length() - 1) + invertDigits(argsStr.substring(0, argsStr.length()-1));

	}
}

