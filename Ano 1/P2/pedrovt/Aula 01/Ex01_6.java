/*
 * Ex01_6.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex01_6 {

	static Scanner read = new Scanner (System.in);

	public static void main(String[] args) {
		//UI Inicial
		System.out.printf("Advinha o número");

		//Definir número aleatório a [0,100]
		int a = (int) (Math.random()*(100+1)); 

		//Ler número n do teclado enquanto n!=a 
		int i = 1;
		int n = -1;
		do {
			System.out.printf("\n[attempt %d]: ", i);
			n = getIntRange(i, 0, 100);
			if (n > a) System.out.printf("\nValue %d is greater than the mystery number", n);
			else if (n < a) System.out.printf("\nValue %d is lower than the mystery number", n);
			else if (n == a) System.out.printf("\nNumber %d found in %d attempts.", n, i);
			i++;
		} while (n != a);

		//Imprimir nº tentativas


	}

	public static int getIntRange (int j, int lim_inf, int lim_sup) {
		int num = read.nextInt();

		if (num>lim_sup || num<lim_inf) { 
			System.err.printf("\nERROR: invalid number");
			System.out.printf("\n[attempt %d]: ", j);
			num = read.nextInt();	
		}

		return num;

	}
}
