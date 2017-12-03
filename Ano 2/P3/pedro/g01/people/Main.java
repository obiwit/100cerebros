package g01.people;
import java.util.Scanner;
import java.util.InputMismatchException;

/**
 * Main
 * 
 * @author Pedro Teixeira 84715
 */


public class Main {

	static Scanner sc = new Scanner (System.in);

	public static void main(String[] args) {
		main();
		System.exit(0);
	}

	public static void main() {
		ListaPessoas list = new ListaPessoas(50);

		int option = 0;
		do {
			System.out.println("\n-- People Manager ---");
			System.out.println("1. Add Person");
			System.out.println("2. Remove Person");
			System.out.println("3. Print People List");
			System.out.println("4. Order List by Name");
			System.out.println("5. Order List by CC Card Number");
			System.out.println("6. Exit Program");
			System.out.print  ("Please Select an Option (1-6): ");

			try {
				option = sc.nextInt();

				switch (option) {
					// ADd person
					case 1: 
						System.out.print  ("Please enter the name of the person you wish to add: ");
						String name = sc.next();
						System.out.print  ("Please enter the number of the CC Card of the person you wish to add: ");

						try {
							int num = sc.nextInt();
							System.out.print  ("Please enter the day, month and year of the birthdate of the person you wish to add: ");
							int day = sc.nextInt();
							int month = sc.nextInt();
							int year = sc.nextInt();

							list.addPerson(new Pessoa(name, num, new Data (day, month, year)));
							System.out.println("Person added successfully");
						} catch (InputMismatchException e) {
							System.err.println("Invalid number. Failed to add the person to the list.");
						}

						break;

						// Remove person
					case 2:
						System.out.print  ("Please enter the number of the CC Card of the person you wish to remove: ");
						try {
							int numToRemove = sc.nextInt();

							String message = list.removePerson(numToRemove) ? "" : " not";
							System.out.println("Person removed " + message + "successfully");
						} catch (InputMismatchException e) {
							System.err.println("Invalid number. Failed to remove the person of the list.");
						}

						break;

						// Print
					case 3:
						System.out.println(list);
						break;

						// Order
					case 4:
						list.orderByName();
						System.out.println("List ordered by name successfully");
						break;

					case 5:
						list.orderByNum();
						System.out.println("List ordered by CC Card number successfully");
						break;

					case 6:
						break;

					default:
						System.err.println("You have selected an invalid option.");
						break;
				} 
			} catch (InputMismatchException e) {
				System.err.println("You have selected an invalid option.");
			}
		} while (option != 6);
	}
}
