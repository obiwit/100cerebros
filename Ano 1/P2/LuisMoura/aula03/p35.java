import java.util.*;
public class p35 {
	static Scanner read = new Scanner(System.in);
	public static void main (String[] args) {
		
		int option;
		Caixa caixa = new Caixa();
		do {
			printMenu();
			option = read.nextInt();
			switch (option) {
				case 1:
					int coin;
					System.out.print("Moedas: ");
					do {	
						coin = read.nextInt();
						if (coin != 0) {
							caixa.addOneCoin(coin);
						}
					} while (coin != 0);
					System.out.println();
					break;
				case 2:
					System.out.print("Valor minimo a retirar: ");
					int value = read.nextInt();
					caixa.withdrawal(value);
					System.out.println();
					break;
				case 3:
					caixa.printWallet();
					System.out.println();
					break;
				case 4:
					caixa.totalValue();
					System.out.println();
					break;
				default:
					break;
			} 
		} while (option != 0);
	}
	
	public static  void printMenu() {
		System.out.print("1. Adicionar moedas\n" +
						 "2. Retirar dinheiro\n" +
						 "3. Ver moedas na carteira\n" +
						 "4. Ver total da carteira\n" +
						 "0. Termina\n\n" +
						 "Opcao: ");
	}
}

