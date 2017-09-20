/*
 * Ex03_5.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex03_5 {

	static Scanner read = new Scanner (System.in);
	public static void main(String[] args) {
		Caixa wallet = new Caixa();

		// Initial static UI
		System.out.printf("Caixa\n----------------------------\n");
		System.out.printf("\n1. Adicionar moedas");
		System.out.printf("\n2. Retirar dinheiro");
		System.out.printf("\n3. Ver moedas na carteira");
		System.out.printf("\n4. Ver total da carteira");
		System.out.printf("\n0. Termina\n");
		
		// Menu
		int option = 0;
		do {
			System.out.printf("\nOption: ");
			option = read.nextInt();
			switch (option) {
				case 1:
					long num = -1;
					System.out.printf("Please insert the values you wish to add to you account (in cents) <0 ends>: ");
					while (num!= 0) {
						num = getNumPos("");
						if (num != 0) wallet.adicionaMoeda(num);
					}
					System.out.printf("Wallet sucessfully updated. \n");
					break;
				case 2:
					wallet.retiraDinheiro(getNumPos("Please insert the minimum value you wish to remove from your account (in cents): "));
					System.out.printf("Wallet sucessfully updated. Contents of your wallet (in cents):\n");
					printWallet(wallet);
					break;
				case 3:
					System.out.printf("Contents of your wallet (in cents):\n");
					printWallet(wallet);
					System.out.println("");
					break;
				case 4:
					System.out.printf("Balance (in cents): %d\n" , wallet.total());
					break;
				case 0:
					System.out.printf("Program was successfully ended.\n");
					System.exit(0);
				default:
					System.out.printf("Invalid Option.\n");
					
			}
		} while (option !=0);
	}
	
	// Validation for menu option #1
	public static long getNumPos(String message) {
		System.out.printf("%s", message);
		
		Scanner read = new Scanner(System.in);
		long n = read.nextLong();
		while (n<0) {
			System.out.printf("Please insert a positive number: ");
			n = read.nextLong();
		}
		
		return n;
	}
	
	// Menu option #3
	public static void printWallet(Caixa wallet) {
		for (int i = 0; i < wallet.numCoins(); i++) {
			System.out.printf("\n Coin %d = %d", i+1, wallet.moedas()[i]);
		}
	}

}
