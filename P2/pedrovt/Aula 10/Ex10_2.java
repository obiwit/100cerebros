/**
 * Ex10_2
 * 
 * Escreva um programa que permita visualizar, passo a passo, a resolu¸c˜ao do problema das
Torres de Han´oi. Para esse fim utilize uma pilha (acrescida de um m´etodo apropriado de
escrita de toda a pilha numa linha, indo da base para o topo) como representa¸c˜ao interna
de cada torre. A escrita das torres pode ter o seguinte aspecto:
 *
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex10_2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// read number of disks

		// through args
		if (args.length >= 1)
			for (String str : args) {
				try {
					int n = Integer.parseInt(str);
					if (n < 0) {
						System.err.println("\nERROR: Given argument must be a positive number.\n"); 
					}
					else {
						hanoiProblem(n);
					}
				} catch (NumberFormatException e) {
					System.err.println("\nERROR: Given argument must be a number.\n");
				}

			}
		// through console
		else {
			Scanner read = new Scanner (System.in);
			try {
				int n = read.nextInt();
				if (n < 0) {
					System.err.println("\nERROR: Given argument must be a positive number.\n"); 
				}
				else {
					hanoiProblem(n);
				}
			} catch (NumberFormatException e) {
				System.err.printf("\nERROR: Given argument must be a number.\n");
			}
		}
		System.exit(0);
	}
	
	/**
	 * Creates and solves a Hanoi problem with n disks
	 * @param n number of disks
	 */
	public static void hanoiProblem (int n) {
		HanoiTowers tower_n = new HanoiTowers(n);
		tower_n.solve();
	}
}
