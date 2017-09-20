/*************************************************************************
 * Compilation: javac j21.java 
 * Execution: java j21
 *************************************************************************/
import java.util.Scanner;

public class Ex02_1 {
	// Exemplo simples de utilização da class Complex
	
	public static void main(String[] args) {
		Scanner read = new Scanner (System.in);
		//Complexo a = new Complexo(args[0], args[1]);
		
		Complexo a;

		//Reads through console if 2 arguments are not given
		if (args.length < 2) {
			System.out.printf("\nRe: ");
			double re = read.nextDouble();
			System.out.printf("\nIm: ");
			double im = read.nextDouble();	
			a = new Complexo (re, im);
		}

		else{
			a = new Complexo (Double.parseDouble(args[0]), Double.parseDouble(args[1]));
		}

		printResults(a);
		// Vamos usar métodos de 'a'
	}

	public static void printResults (Complexo a) {
		System.out.println("(" + a.real() + " + " + a.imag() + "i)");
		System.out.println("  parte real = " + a.real());
		System.out.println("  parte imaginaria = " + a.imag());
		System.out.println("  modulo = " + a.abs());
		System.out.printf("  fase   =  %2.2f\n", a.phase());
	}
 
}
