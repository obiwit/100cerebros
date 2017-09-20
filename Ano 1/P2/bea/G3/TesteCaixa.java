/*
 * Caixa.java
 * 
 * Copyright 2017 Beatriz Borges 
 * 
 */

import java.util.*;

public class TesteCaixa {
	
	static Scanner input = new Scanner(System.in);
		
	public static void main(String[] args) {
		
		Caixa caixa = new Caixa();
		int op = -1;
		do {
			System.out.println("-------------------------------Menu------");
			System.out.println("1. Adicionar moedas");
			System.out.println("2. Retirar dinheiro");
			System.out.println("3. Ver moedas na carteira");
			System.out.println("4. Ver total da carteira"); 
			System.out.println("0. Termina");
			System.out.print("-------------------------------Opcao: ");
			
			op = input.nextInt();
			
			switch (op) {
				case 0:
					System.exit(0);
				case 1:
					getCoins(caixa);
					break;
				case 2:
					long quantia = getLongPos("Quantia");
					System.out.println("Moedas retiradas:");
					for(long coin : caixa.retiraDinheiro(quantia)) {
						System.out.println(coin);
					}
					break;
				case 3:
					for(long coin : caixa.moedas()) {
						System.out.println(coin);
					}
					break;
				case 4:
					System.out.println(caixa.total());
					break;
				default:
					System.out.println("Instrucao invalida.");
			}
			System.out.printf("\n\n\n");
		} while (op != 0);
	}
	
	public static void getCoins(Caixa caixa) {
		System.out.print("Moedas: ");
		while(input.hasNextLong()) {
			long coin = input.nextLong();
			if (coin > 0) {
				caixa.adicionaMoeda(coin);
			} else {
				break;
			}
		}
	}
	
	public static long getLongPos(String prompt) {
		long l = -1;
		do {
			System.out.print(prompt + " ");
			l = input.nextLong();
		} while(l < 0);
		return l;
	}
}

