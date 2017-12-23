package aula5;

import aula5.prob3.ContactsStorage;
import aula5.prob3.Person;
import aula5.prob3.PersonArray;

/** 
 * Prob1
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob3 {

	public static void main(String[] args) {
		
		PersonArray people = ContactsStorage.readFromFile("File1.txt");

		for (Person p : people.get()) {
			System.out.println(p);
		}
		
		ContactsStorage.writeToFile(people, "Test1.txt", "Nokia");
		ContactsStorage.writeToFile(people, "Test2.txt", "vCard");
		ContactsStorage.writeToFile(people, "Test3.txt", "CSV");
	}

}