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

public class CSVPlugin implements ContactPlugin {
	
	/**
	 * Reads a contact from a given file
	 * @param filepath the file's path
	 * @param format the storage format to use
	 * @return a new PersonArray object with the contact's read from the file
	 */
	@Override
	public boolean isValidFile(String filepath) {
		File file = new File(filepath);
		if (file.canRead()) {
			try {
				Scanner scFile = new Scanner(file);
				String fileType = scFile.nextLine().trim().toLowerCase();
				if (fileType.equals("csv")) {
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
	 * CSV: Cada linha contém um registo e os campos estão delimitados pelo caracter TAB (\t);
	 * @param file Scanner for the file to read from
	 * @return a new PersonArray object with the contact's read from the file
	 */
	private PersonArray readContacts(Scanner file) {
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
	
	/**
	 * CSV: Cada linha contém um registo e os campos estão delimitados pelo caracter TAB (\t);
	 * @param contacts PersonArray object to append new contacts to
	 * @param file Scanner for the file to read from
	 * @return a the PersonArray object with the new contact's appended
	 */
	private static void writeContacts(PersonArray contacts, PrintWriter printWriter) {
		// Write file type on the first line of the file
		printWriter.println("﻿CSV");	
		for (Person p : contacts.get()) {
			// Write line
			printWriter.println(p.getName() + "\t" + p.getID() + "\t" + p.getBirthDate());
		}
	}
}
