/*
 * Ex01_5.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex01_5 {

	static Scanner read = new Scanner (System.in);
	public static void main(String[] args) {
		
		//Ler a lista de números -- 0 termina; calcular soma calcular média
		double n = -1;
		double sum = 0, i = -1; 
		do {
			System.out.printf("Value: ");
			n = read.nextDouble();
			//if (n == 0) break;
			sum += n; 
			i++;
		} while (n!=0);
		
		//(sum == 0) ? 0 :
		printValues(sum, sum/i);
	}
				
	//Imprimir a soma e imprimir a média
	public static void printValues (double sum, double average) {
		System.out.printf("Sum= %f\nMed= %f", sum, average);
	}

}
