/*
 * Caixa.java
 * 
 * Copyright 2017 Beatriz Borges 
 * 
 */


public class Caixa {
	long[] moedas;
	int numMoedas;
	
	Caixa() {
		moedas = new long[10];
		numMoedas = 0;
	}
	
	public void adicionaMoeda(long moeda) {
		// increase coins' array size, if it's full
		if (numMoedas == moedas.length) {
			long[] temp = new long[numMoedas + 10];
			System.arraycopy(moedas, 0, temp, 0, numMoedas);
			moedas = temp;
		}
		// add coin to array
		moedas[numMoedas++] = moeda;
	}
	
	public long[] retiraDinheiro(long valorMin) {
		// find min amount of coins
		long sum = 0;
		int amount = -1;
		for(int i = 0; i < numMoedas; i++) {
			sum += moedas[i];
			if (sum >= valorMin) {
				amount = i + 1;
				break;
			}
		}
		
		if (amount != -1) {
			long[] withdrawal =  new long[amount];
			System.arraycopy(moedas, 0, withdrawal, 0, amount);
			
			// create new array without that amount of coins
			int leftOverCoins = numMoedas - amount;
			long[] temp = new long[leftOverCoins];
			System.arraycopy(moedas, amount, temp, 0, leftOverCoins);
			numMoedas = leftOverCoins;
			moedas = temp;
			
			return withdrawal;
		}
		
		return null;
	}
	
	public long[] moedas() {
		long[] temp = new long[numMoedas];
		System.arraycopy(moedas, 0, temp, 0, numMoedas);
		return temp;
	}
	
	public long total() {
		long sum = 0;
		for(long moeda: moedas) {
			sum += moeda;
		}
		return sum;
	}
}

