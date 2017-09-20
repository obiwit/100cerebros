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
		assert (moedaValida(moeda)) : "Invalid/negative coin";
		
		//if (!moedaValida(moeda)) return;
		
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
		assert valorMin > 0 : "Negative withdrawal";
		 
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
			
			assert this.total() >= 0: "Negative balance";
			
			return withdrawal;
		}
		
		return null;
	}
	
	public long[] moedas() {
		long[] temp = new long[numMoedas];
		System.arraycopy(moedas, 0, temp, 0, numMoedas);
		
		assert temp != null;
		return temp;
	}
	
	public long total() {
		long sum = 0;
		for(long moeda: moedas) {
			sum += moeda;
		}
		assert sum >= 0;
		
		return sum;
	}
	
	// class methods
	public static boolean moedaValida(long moeda) {
		return ((moeda == 1) || (moeda == 2) || (moeda == 5)
				|| ((moeda%10 == 0) && (moedaValida(moeda/10))));
	}
}

