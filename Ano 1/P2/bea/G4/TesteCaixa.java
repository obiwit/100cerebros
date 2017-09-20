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
		
		getCoins(caixa);
		
		
		// Estas proximas quatro linhas so funcionam tiverem dado a caixa
		// moedas >= 10
		System.out.println("Moedas retiradas:");
		for(long coin : caixa.retiraDinheiro(10)) {
			System.out.println(coin);
		}
		
		System.out.println("\nMoedas na caixa:");
		for(long coin : caixa.moedas()) {
			System.out.println(coin);
		}
		
		System.out.println("\nTotal na caixa:");
		System.out.println(caixa.total());
	}
	
	public static void getCoins(Caixa caixa) {
		System.out.print("Moedas: ");
		while(input.hasNextLong()) {
			long coin = input.nextLong();
			if (coin > 0) {
				if(Caixa.moedaValida(coin)) {
					caixa.adicionaMoeda(coin);
				} else {
					System.out.println("Moeda invalida.\n");
				}
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

