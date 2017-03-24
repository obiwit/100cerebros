/*
 * Ex06_1.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import static java.lang.System.*;
import java.util.Scanner;

public class Ex06_1 {
	
	public static void main(String[] args) {

		// Alguns testes:
		assert fibonacci(0) == 0;
		assert fibonacci(1) == 1;
		assert fibonacci(2) == 1;
		assert fibonacci(5) == 5;
		out.printf("Tests are okay");
		
		// Get N
		Scanner read = new Scanner(System.in);

		int n = 0;  

		if (args.length != 1) {
			//out.println("USO: java -ea p61 N");
			//exit(1);
			out.printf("\nPlease insert the positive integer you want to use to calculate Fibbonacci function: ");
			n = read.nextInt();

		}
		else {
			n = Integer.valueOf(args[0]);
		}

		// Mostra N primeiros números
		for(int i = 0; i <= n; i++) {
			out.printf("fibonacci(%d) = %d\n", i, fibonacci(i));
		}
	}

	/** 
	 * Returns term n of the Fibonnaci sequence.
	 * @param n : integer positive number
	 * @return fibonnaci(n)
	 */
	public static int fibonacci(int n) {
		assert n >= 0;

		int result;
		switch (n){
			case 0: result = 0; break;
			case 1: result = 1; break;
			default : result = fibonacci(n-2) + fibonacci(n-1);
		}
		return result;
	}
}