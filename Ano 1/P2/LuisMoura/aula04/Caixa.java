public class Caixa {
	
//--- Variaveis ---------------------
	private int coins;
	private int value;
	int[] myCoins = new int[0];
//--- Construtores ------------------

//--- Metodos -----------------------
	
//--- adds one coin to the wallet (increases array length by 1)
	public void addOneCoin(int newCoin) {
		assert validCoin(newCoin) : "Invalid coin value";
		int[] temp = new int[myCoins.length + 1];
		for (int i = 0; i < myCoins.length; i++) {
				temp[i] = myCoins[i];
		}
		temp[myCoins.length] = newCoin;
		myCoins = temp;
	}
	
	public boolean validCoin(int coin) {
		if (coin == 1 || coin == 2 || coin == 5 || coin == 10 || coin == 20 || coin == 50) {
			return true;
		}
		return false;
	}
	
//--- sorts array high to low value
	public void bubbleSort(int[] array) {
		boolean swapped = true;
		int j = 0;
		int tmp;
		while (swapped) {
			swapped = false;
			j++;
			for (int i = 0; i < array.length - j; i++) {
				if (array[i] > array[i + 1]) {
					tmp = array[i];
					array[i] = array[i + 1];
					array[i + 1] = tmp;
					swapped = true;
				}
			}
		}
		for (int i = 0; i < array.length; i++) {
			assert array[i] < array[i+1] : "Array not sorted correctly";
		}
	}
		
// removes the "minimum amount" possible to withdrawal value		
	public void withdrawal(int value) {
		bubbleSort(myCoins);
		int count = 0;
		int i = myCoins.length - 1;
		while (value > 0 ) {
				value -= myCoins[i];
				myCoins[i] = 0;
				i--;
				count++;
			}
		int[] newArray = new int[myCoins.length - count];
		for (int j = 0; j < newArray.length; j++) {
			if (myCoins[j] != 0) {
				newArray[j] = myCoins[j];
			}
		}
		myCoins = newArray;
	}

//--- prints contents of the wallet ( prints array)
	public void printWallet() {
		bubbleSort(myCoins);
		for (int i = 0; i < myCoins.length; i++) {
			System.out.print(myCoins[i]);
			System.out.print(" ");
		}
	}
	
//--- calculates total value in wallet
	public void totalValue() {
		int total = 0;
		for (int i = 0; i < myCoins.length; i++) {
			total += myCoins[i];
		}
		System.out.print(total);
	}
}
