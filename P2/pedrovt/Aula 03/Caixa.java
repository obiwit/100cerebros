/*
 * Caixa.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

package aula3;
public class Caixa {
	private long[] wallet = new long[100];
	private int numCoins;
	private long sum = 0;
	
	// 1. Adds coins
	public void adicionaMoeda(long moeda) {
		//assert moedaValida(moeda) : "Invalid coin";
		if (!moedaValida(moeda)) System.out.println("Invalid coin");
		
		numCoins++;
		
		if (numCoins > wallet.length) {
			long[] temp = new long [wallet.length+100];
			System.arraycopy(wallet, 0, temp, 0, wallet.length);
			temp[wallet.length] = moeda;
			wallet = temp;
		}
		
		else {
			wallet[numCoins-1] = moeda;
		}
	}

	/* 2. Removes coins
	 * No optimization on the way the coins are removed was done */
	public long[] retiraDinheiro(long valorMin) {
		assert valorMin <= total() : "ValorMin > Total";
		assert valorMin >= 0 : "Valormin must be positive";
		
		int count = 0, sum1 = 0, j = 0;
		
		// Removes the necessary coins from the wallet (ie makes its value = 0) : OK
		for (int i = 0; i < wallet.length ; i++) {
			if (sum1 < valorMin) {
				sum1 += wallet[i];
				wallet[i] = 0;
				count++;
			}
		}
		
		// Copy coins with a value !=0 to a temp array
		long[] temp = new long [wallet.length-count];
		for (int i = 0; i < wallet.length; i++) {
			if (wallet[i] != 0) {
				temp[j] = wallet[i];
				j++;
			}
		}
		
		wallet = temp;
		return wallet;	
	}
	
	//3. Prints wallet contents
	public long[] moedas() {
		return wallet;
	}
	
	//4. Prints sum of the value of coins in the wallet
	public long total(){
		sum = 0;
		
		for (int i = 0; i < wallet.length; i++) {
			sum += wallet[i];
		}
		
		return sum;
	}
	
	public int numCoins(){
		return numCoins;
	}
	
	// Verifies whether coin value is valid or not
	static boolean moedaValida(long moeda) {
		boolean valid = true;                                 
		
		while (valid && moeda >= 10) { 
			if (! (moeda % 10 == 0))  {   //if moeda % 10 != 0, moeda is not valid, thus there's no need to continue the verification
				valid = false; 
			} 
			moeda /= 10; 
		}
		return valid && ((moeda == 1) || (moeda == 2) || (moeda == 5));
	}
	
}
