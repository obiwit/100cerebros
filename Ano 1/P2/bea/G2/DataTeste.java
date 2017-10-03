/*
 * DataTeste.java
 * 
 * Copyright 2017 Beatriz Borges
 */

import java.util.*;

public class DataTeste {
	
	public static void main (String[] args) {
		Scanner input = new Scanner(System.in);
		Data date = new Data();
		int choice;
		
		do {
			System.out.println("1. Cria novo objecto com a data actual");
			System.out.println("2. Cria novo objecto com uma qualquer data");
			System.out.println("3. Indica se a data e valida");
			System.out.println("4. Escreve data");
			System.out.println("5. Escreve data por extenso");
			System.out.println("6. Dia anterior");
			System.out.println("7. Dia seguinte");
			System.out.println("0. Termina");
			System.out.println("NOTA: Se nao houver outra indicacao, todas as operacoes");
			System.out.println("      sao feitas sobre o ultimo objecto criado.");
			System.out.print("Opcao: ");
			
			choice = input.nextInt();
			System.out.println("---------------------------------------"
							   + "-----------------------------------");
			System.out.println();
			
			switch (choice) {
				case 1:
					date = new Data();
					break;
				case 2:
					System.out.print("Day: ");
					int day = input.nextInt();
					System.out.print("Month: ");
					int month = input.nextInt();
					System.out.print("Year: ");
					int year = input.nextInt();
					System.out.println();
					date = new Data(day, month, year);
					break;
				case 3:
					if (Data.validDate(date.getDay(), date.getMonth(), 
								  date.getYear())) {
						System.out.println("Valid date! :D");
					} else {
						System.out.println("Invalid date :(");
					}
					System.out.println();
					break;
				case 4:
					date.writeDate();
					System.out.println();
					System.out.println();
					break;
				case 5:
					System.out.printf("%s %2d, %4d", date.getMonthName(),
									  date.getDay(), date.getYear());
					System.out.println();
					System.out.println();
					break;
				case 6:
					date.toYesterday();
					break;
				default:
					date.toTomorrow();
			}
			System.out.println("---------------------------------------"
							   + "-----------------------------------");
				
		} while (choice > 0 && choice < 8);
	}
}

