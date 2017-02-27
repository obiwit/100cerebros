/*
 * Ex02_5.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */
import java.util.Scanner;
public class Ex02_5 {
	
	static Scanner read = new Scanner (System.in);
	
	public static void main(String[] args) {
		//Data data = null;
		Data data = new Data(); 
		
		System.out.println("1. Cria novo objecto com a data actual");
		System.out.println("2. Cria novo objecto com uma qualquer data");
		System.out.println("3. Indica se a data é válida");
		System.out.println("4. Escreve data");
		System.out.println("5. Escreve data por extenso");
		System.out.println("6. Dia anterior");
		System.out.println("7. Dia seguinte");
		System.out.println("0. Termina");
		System.out.println("NOTA: Se não houver outra indicação, todas as operações fazem−se sobre o último objecto criado");
		int option = 0;
		
		do {
			System.out.printf("\nOption: ");
			option = read.nextInt();
			switch (option) {
				case 1:
					data = new Data();
					System.out.println("Object was successfully created.");
					break;
				case 2:
					System.out.print("Day: ");
					int day = read.nextInt();
					System.out.print("Month: ");
					int month = read.nextInt();
					System.out.print("Year: ");
					int year = read.nextInt();
					data = new Data(day, month, year);
					System.out.println("Object was successfully created.");
					break;
				case 3:
					Data.isValid(data.year(), data.month(), data.day());
					break;
				case 4:
					/*if (data == null) {
						System.out.println("Please create a new object before reading it.");
					}
					else data.printData();*/
					data.printData();
					break;
				case 5:
					data.printFullData();
					break;
				case 6:
					data.goYesterday();
					break;
				case 7:
					data.goTomorrow();
					break;
				case 0:
					System.exit(0);
				default:
					System.out.println("Invalid Option.");
					break;
			}
		} while (option != 0);
	}
}
