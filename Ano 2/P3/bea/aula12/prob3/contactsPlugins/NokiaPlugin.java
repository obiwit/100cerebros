package aula12.prob3.contactsPlugins;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import aula12.prob3.ContactPlugin;
import aula12.prob3.Date;
import aula12.prob3.Person;
import aula12.prob3.PersonArray;

public class NokiaPlugin implements ContactPlugin {
	
	/**
	 * Reads a contact from a given file
	 * @param filepath the file's path
	 * @param format the storage format to use
	 * @return a new PersonArray object with the contact's read from the file
	 */
	public boolean isValidFile(String filepath) {
		File file = new File(filepath);
		if (file.canRead()) {
			try {
				Scanner scFile = new Scanner(file);
				String fileType = scFile.nextLine().trim().toLowerCase();
				if (fileType.equals("nokia")) {
					scFile.close();
					return true;
				}
				scFile.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return false;	
	}
	
	/**
	 * Reads a contact from a given file
	 * @param filepath the file's path
	 * @return a new PersonArray object with the contact's read from the file
	 */
	@Override
	public PersonArray loadFile(String filepath) {
		if (isValidFile(filepath)) {
			try(Scanner scFile = new Scanner(new File(filepath))) {
				return readContacts(scFile);
				
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
		}
		return new PersonArray();
	}
	
	/**
	 * Writes a PersonArray Object to a file, given the filepath, using Nokia format
	 * @param contacts PersonArray Object to save in a file
	 * @param filepath the file's path
	 */
	@Override
	public void saveFile(PersonArray contacts, String filepath) {
		File file = new File(filepath);
		if (file.canWrite()) {
			try {
				PrintWriter printWriter = new PrintWriter(file);
				writeContacts(contacts, printWriter);
				printWriter.close(); 
			}
			catch(Exception e) {
				System.err.println(e);
			}
		}
	}

	/**
	 * Nokia: Cada linha contêm um dos elementos de informação (i.e. um campo). 
	 * Existe uma linha em branco a separar cada registo;
	 * @param file Scanner for the file to read from
	 * @return a new PersonArray object with the contact's read from the file
	 */
	private PersonArray readContacts(Scanner file) {
		PersonArray contacts = new PersonArray();
		while (file.hasNextLine()) {
			// Read 3 lines
			String name = file.nextLine();						//1st line (name)
			int num  = Integer.parseInt(file.nextLine());		//2nd line (num)
			String dateLine = file.nextLine();					//3rd line (birthdate)
			String[] dateInfo = dateLine.split("/");
			Date date = new Date(Integer.parseInt(dateInfo[0]), Integer.parseInt(dateInfo[1]), Integer.parseInt(dateInfo[2]));

			if (file.hasNextLine()) file.nextLine();			//Ignore empty line between contacts

			// create contact with the info
			contacts.add(new Person(name, num, date));
		}
		return contacts;
	}
	
	/**
	 * Nokia: Cada linha contêm um dos elementos de informação (i.e. um campo). 
	 * Existe uma linha em branco a separar cada registo;
	 * @param contacts PersonArray Object to save in a file
	 * @param printWriter PrintWriter for the file to write on
	 */
	private static void writeContacts(PersonArray contacts, PrintWriter printWriter) {
		// Write file type on the first line of the file
		printWriter.println("Nokia");	
		for (Person p : contacts.get()) {
			// Write 3 lines
			printWriter.println(p.getName());
			printWriter.println(p.getID());
			printWriter.println(p.getBirthDate());

			// Write empty line between contacts
			printWriter.println();	
		}
	}
}
