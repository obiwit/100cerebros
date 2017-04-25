/**
 * E7
 * 
 * Crie um programa que dado um numero racional pertencente ao intervalo aberto entre zero
 * e um, e expresso como uma fracção (n=d), escreva essa fracção como sendo uma soma de
 * fracções unitárias com denominadores diferentes6. Uma fraccção unitária é uma fracção em
 * que o numerador é igual a um. O programa a desenvolver deve fazer uso de um algoritmo
 * recursivo.
 * 
 * Seguem alguns exemplos da execução pretendida do programa:
 * java -ea UnitaryFractionSum 3 4 3/4 = 1/2 + 1/4
 * java -ea UnitaryFractionSum 3 7 3/7 = 1/3 + 1/11 + 1/231
 * java -ea UnitaryFractionSum 1 8 1/8 = 1/8
 * java -ea UnitaryFractionSum 2 20 2/20 = 1/10
 * 
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

package pg2;
import java.util.Scanner;

public class E7 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// Read strings
		
		// Through console if arguments are not given
		if (args.length == 0) {
			Scanner read = new Scanner(System.in);
			
			System.out.println("Please insert the fraction: ");
			String str = read.nextLine();
			System.out.println(str + " = " + getUnitaryFraction((int) str.charAt(0), (int) str.charAt(2)));
			
		// Or through args	
		} else {
			for (String i: args) {
				System.out.println(i + " = " + getUnitaryFraction(Integer.parseInt(i, 0), Integer.parseInt(i, 2)));
			}
		}
		System.out.println();
		System.exit(0);

	}
	
	public static String getUnitaryFraction (int num, int den) {
		// Calculates unitary fraction
		int unit = (int) Math.ceil((float)den / (float)num);
		
		// Calculates difference (num*d/den*d - 1*den/den*d according to the example)
		num = num* unit - den;
		den = den* unit;
		
		// Stops if difference is a unitary fraction
		if (num % den == 0) {			// End case
			return "1/" + unit;
		// if difference is not a unitary fraction, gets it and adds its result
		} else {  
		    return "1/" + unit + " + " + getUnitaryFraction(num, den);
		}
	}

}