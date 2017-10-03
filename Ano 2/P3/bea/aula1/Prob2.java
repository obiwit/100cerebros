package aula1;

import java.util.Scanner;

import aula1.prob2.Data;
import aula1.prob2.People;
import aula1.prob2.Pessoa;

public class Prob2 {
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		
		People people = new People();
		
		int option = 0;
		
		do {
			printMenu();
			option = Integer.parseInt(sc.nextLine());
			
			switch (option) {
			case 1:
				addNewPerson(people);
				break;
			case 2:
				removePerson(people);
				break;
			case 3:
				System.out.println("\n---------------------------");
				System.out.println(people);
				break;
			case 4:
				people.orderByName();
				break;
			case 5:
				people.orderByID();
				break;
			}
		} while(option != 6);
	}
	
	public static void addNewPerson(People people) {
		
		try {
			// get new person's info
			System.out.print("\n\tFirst and last names of the person? ");
			String name = sc.nextLine();
			
			System.out.print("\n\tID number (cc) of the person? ");
			int id = Integer.parseInt(sc.nextLine());
			
			System.out.print("\n\tBirthdate of the person (DD/MM/YYYY)? ");
			String[] birthdate = sc.nextLine().split("/");
			int bDay = Integer.parseInt(birthdate[0]);
			int bMonth = Integer.parseInt(birthdate[1]);
			int bYear = Integer.parseInt(birthdate[2]);
			
			if (!Data.validDate(bDay, bMonth, bYear)) {
				throw(new IllegalArgumentException());
			}
			
			// add new person to list
			Data date = new Data(bDay, bMonth, bYear);
			people.add(new Pessoa(name, id, date));
			
		} catch (Exception e) {
			System.out.println("\nSorry, you made a mistake. \n\n");
		}
	}

	public static void removePerson(People people) {
		// get person's ID number and remove them from the list
		System.out.print("\n\tID number of the person to remove? ");
		people.remove(Integer.parseInt(sc.nextLine()));
	}

	public static void printMenu() {
		System.out.println("-------- People Database --------------------");
		System.out.println("| Add a new person to the list          (1) |");
		System.out.println("| Remove a person by the list           (2) |");
		System.out.println("| Show complete list                    (3) |");
		System.out.println("| Order list by people's (first) name   (4) |");
		System.out.println("| Order list by people's id card number (5) |");
		System.out.println("| Quit the program                      (6) |");
		System.out.println("---------------------------------------------");
		System.out.print("| Option -> ");
	}
}
