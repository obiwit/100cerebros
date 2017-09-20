/*
 * Ex03_6.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex03_6 {

	static Scanner read = new Scanner (System.in);

	public static void main(String[] args) {
		//Data2 data = null;
		Data2 data = new Data2(); 
		Data2 old = null;
		
		System.out.println(" 1. Cria novo objecto com a data actual");
		System.out.println(" 2. Cria novo objecto com uma qualquer data");
		System.out.println(" 3. Indica se a data é válida");
		System.out.println(" 4. Escreve data");
		System.out.println(" 5. Escreve data por extenso");
		System.out.println(" 6. Dia anterior");
		System.out.println(" 7. Dia seguinte");
		System.out.println(" 8. Verifica se a última data é igual à penúltima");
		System.out.println(" 9. Verifica se a última data é menor do que a penúltima");
		System.out.println("10. Verifica se a última data é maior do que a penúltima");
		System.out.println("11. Calcula diferença entra a última e a penúltima data");
		System.out.println("0. Termina");
		System.out.println("NOTA: Se não houver outra indicação, todas as operações fazem−se sobre o último objecto criado");
		int option = 0;

		do {
			System.out.printf("\nOption: ");
			option = read.nextInt();
			switch (option) {
				case 1:
					old = data;
					data = new Data2();
					System.out.println("Object was successfully created.");
					break;
				case 2:
					System.out.print("Day: ");
					int day = read.nextInt();
					System.out.print("Month: ");
					int month = read.nextInt();
					System.out.print("Year: ");
					int year = read.nextInt();
					old = data;
					data = new Data2(day, month, year);
					System.out.println("Object was successfully created.");
					break;
				case 3:
					if (Data2.isValid(data.year(), data.month(), data.day())) {
						System.out.println("Date is valid.");
						System.out.println();
					}
					else {
						System.out.println("Date is not valid.");
						System.out.println();
					}
					break;
				case 4:
					data.printDate();
					System.out.println();
					break;
				case 5:
					data.printFullDate();
					System.out.println();
					break;
				case 6:
					data.goYesterday();
					break;
				case 7:
					data.goTomorrow();
					break;
				case 8:
					data.printDate();
					System.out.print(" = ");
					old.printDate();
					System.out.print(" ? ");
					if (data.equalDate(old)) {
						System.out.print("VERDADEIRO");
					}
					else {
						System.out.print("FALSO");
					}
					System.out.println();
					break;
				case 9:
					data.printDate();
					System.out.print(" < ");
					old.printDate();
					System.out.print(" ? ");
					if (data.smallerDate(old)) {
						System.out.print("VERDADEIRO");
					}
					else {
						System.out.print("FALSO");
					}
					System.out.println();
					break;
				case 10:
					data.printDate();
					System.out.print(" > ");
					old.printDate();
					System.out.print(" ? ");
					if (data.biggerDate(old)) {
						System.out.print("VERDADEIRO");
					}
					else {
						System.out.print("FALSO");
					}
					System.out.println();
					break;
				case 11:
					data.printDate();
					System.out.print(" - ");
					old.printDate();
					System.out.print(" = " + data.differenceDates(old) + " dias de diferença.");
					System.out.println();
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
