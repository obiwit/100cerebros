package aula5.prob3;
import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 * 
 * ContactsStorage
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class ContactsStorage {
	// ------------------------
	// Read Methods

	// ------ With no PersonArray Argument
	/**
	 * Reads a contact from a given file
	 * @param filepath the file's path
	 * @return a new PersonArray object with the contact's read from the file
	 */
	@SuppressWarnings("resource")
	public static PersonArray readFromFile(String filepath) {
		File file = new File(filepath);
		if (file.canRead()) {
			try {
				Scanner scFile = new Scanner(file);
				String fileType = scFile.nextLine().trim().toLowerCase();
				switch(fileType) {
					case "nokia":
						return readNokia(scFile);
					case "vcard":
						return readVCard(scFile);
					case "﻿csv":
						return readCSV(scFile);
					default:
						System.err.println("The file's format is not supported");
				}
				scFile.close();
			}
			catch(Exception e) {
				System.err.println(e);
			}
		}
		return null;
	}


	/**
	 * Nokia: Cada linha contêm um dos elementos de informação (i.e. um campo). 
	 * Existe uma linha em branco a separar cada registo;
	 * @param file Scanner for the file to read from
	 * @return a new PersonArray object with the contact's read from the file
	 */
	private static PersonArray readNokia(Scanner file) {
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
	 * vCard: Cada linha contém um registo e os campos estão delimitados pelo caracter #;
	 * @param file Scanner for the file to read from
	 * @return a new PersonArray object with the contact's read from the file
	 */
	private static PersonArray readVCard(Scanner file) {
		PersonArray contacts = new PersonArray();
		while (file.hasNextLine()) {
			// Read line
			String line = file.nextLine();
			String lineContents[] = line.trim().split("#");
			String name = lineContents[1];						//1st part of the line (name)
			int num  = Integer.parseInt(lineContents[2]);		//2nd part of the line (num)					
			String[] dateInfo = lineContents[3].split("/");		//3rd part of the line (birthdate)
			Date date = new Date(Integer.parseInt(dateInfo[0]), Integer.parseInt(dateInfo[1]), Integer.parseInt(dateInfo[2]));

			// create contact with the info
			contacts.add(new Person(name, num, date));
		}
		return contacts;
	}

	/**
	 * CSV: Cada linha contém um registo e os campos estão delimitados pelo caracter TAB (\t);
	 * @param file Scanner for the file to read from
	 * @return a new PersonArray object with the contact's read from the file
	 */
	private static PersonArray readCSV(Scanner file) {
		PersonArray contacts = new PersonArray();
		while (file.hasNextLine()) {
			// Read line
			String line = file.nextLine();
			String lineContents[] = line.trim().split("\\t");
			String name = lineContents[0];						//1st part of the line (name)
			int num  = Integer.parseInt(lineContents[1]);		//2nd part of the line (num)					
			String[] dateInfo = lineContents[2].split("/");		//3rd part of the line (birthdate)
			Date date = new Date(Integer.parseInt(dateInfo[0]), Integer.parseInt(dateInfo[1]), Integer.parseInt(dateInfo[2]));

			// create contact with the info
			contacts.add(new Person(name, num, date));
		}
		return contacts;
	}


	// ------ With a PersonArray Argument
	/**
	 * Reads a contact from a 
	 * @param filepath the file's path
	 * @param contacts PersonArray object to append new contacts to
	 * @return a the PersonArray object with the new contact's appended
	 */
	@SuppressWarnings("resource")
	public static PersonArray readFromFile(PersonArray contacts, String filepath) {
		File file = new File(filepath);
		if (file.canRead()) {
			try {
				Scanner scFile = new Scanner(file);
				String fileType = scFile.nextLine().trim().toLowerCase();
				switch(fileType) {
					case "nokia":
						return readNokia(contacts, scFile);
					case "vcard":
						return readVCard(contacts, scFile);
					case "﻿csv":
						return readCSV(contacts, scFile);
					default:
						System.err.println("The file's format is not supported");
				}
				scFile.close();
			}
			catch(Exception e) {
				System.err.println(e);
			}
		}
		return null;
	}


	/**
	 * Nokia: Cada linha contêm um dos elementos de informação (i.e. um campo). 
	 * Existe uma linha em branco a separar cada registo;
	 * @param contacts PersonArray object to append new contacts to
	 * @param file Scanner for the file to read from
	 * @return a the PersonArray object with the new contact's appended
	 */
	private static PersonArray readNokia(PersonArray contacts, Scanner file) {
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
	 * vCard: Cada linha contém um registo e os campos estão delimitados pelo caracter #;
	 * @param contacts PersonArray object to append new contacts to
	 * @param file Scanner for the file to read from
	 * @return a the PersonArray object with the new contact's appended
	 */
	private static PersonArray readVCard(PersonArray contacts, Scanner file) {
		while (file.hasNextLine()) {
			// Read line
			String line = file.nextLine();
			String lineContents[] = line.trim().split("#");
			String name = lineContents[1];						//1st part of the line (name)
			int num  = Integer.parseInt(lineContents[2]);		//2nd part of the line (num)					
			String[] dateInfo = lineContents[3].split("/");		//3rd part of the line (birthdate)
			Date date = new Date(Integer.parseInt(dateInfo[0]), Integer.parseInt(dateInfo[1]), Integer.parseInt(dateInfo[2]));

			// create contact with the info
			contacts.add(new Person(name, num, date));
		}
		return contacts;
	}

	/**
	 * CSV: Cada linha contém um registo e os campos estão delimitados pelo caracter TAB (\t);
	 * @param contacts PersonArray object to append new contacts to
	 * @param file Scanner for the file to read from
	 * @return a the PersonArray object with the new contact's appended
	 */
	private static PersonArray readCSV(PersonArray contacts, Scanner file) {
		while (file.hasNextLine()) {
			// Read line
			String line = file.nextLine();
			String lineContents[] = line.trim().split("\\t");
			String name = lineContents[0];						//1st part of the line (name)
			int num  = Integer.parseInt(lineContents[1]);		//2nd part of the line (num)					
			String[] dateInfo = lineContents[2].split("/");		//3rd part of the line (birthdate)
			Date date = new Date(Integer.parseInt(dateInfo[0]), Integer.parseInt(dateInfo[1]), Integer.parseInt(dateInfo[2]));

			// create contact with the info
			contacts.add(new Person(name, num, date));
		}
		return contacts;
	}




	// ---------------------------
	// Write Methods

	/**
	 * Writes a PersonArray Object to a file, given the filepath and desired string format
	 * @param contacts PersonArray Object to save in a file
	 * @param filepath the file's path
	 * @param format file format to use - either "Nokia", "vCard" or "CSV"
	 */
	public static void writeToFile(PersonArray contacts, String filepath, String format) {
		File file = new File(filepath);
		if (file.canWrite()) {
			try {
				PrintWriter printWriter = new PrintWriter(file);
				switch(format.toLowerCase()) {
					case "nokia":
						writeNokia(contacts, printWriter);
						break;
					case "vcard":
						writeVCard(contacts, printWriter);
						break;
					case "﻿csv":
						writeCSV(contacts, printWriter);
						break;
					default:
						System.err.println("The file's format is not supported");
				}
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
	 * @param contacts PersonArray Object to save in a file
	 * @param printWriter PrintWriter for the file to write on
	 */
	private static void writeNokia(PersonArray contacts, PrintWriter printWriter) {
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

	/**
	 * vCard: Cada linha contém um registo e os campos estão delimitados pelo caracter #;
	 * @param contacts PersonArray Object to save in a file
	 * @param printWriter printWriter for the file to write on
	 */
	private static void writeVCard(PersonArray contacts, PrintWriter printWriter) {
		// Write file type on the first line of the file
		printWriter.println("vCard");	
		for (Person p : contacts.get()) {
			// Write line
			printWriter.println("#" + p.getName() + "#" + p.getID() + "#" + p.getBirthDate());
		}
	}

	/**
	 * CSV: Cada linha contém um registo e os campos estão delimitados pelo caracter TAB (\t);
	 * @param contacts PersonArray Object to save in a file
	 * @param printWriter printWriter for the file to write on
	 */
	private static void writeCSV(PersonArray contacts, PrintWriter printWriter) {
		// Write file type on the first line of the file
		printWriter.println("﻿CSV");	
		for (Person p : contacts.get()) {
			// Write line
			printWriter.println(p.getName() + "\t" + p.getID() + "\t" + p.getBirthDate());
		}
	}
}
