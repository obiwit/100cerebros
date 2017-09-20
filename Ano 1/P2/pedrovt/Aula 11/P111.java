/**
 * Ex11_1
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import java.io.*;
import java.util.Scanner;
import p2utils.KeyValueList;

public class P111 {

	// TODO O programa deve terminar quando for detectado ”fim de ficheiro” (EOF), o que numa consola Unix se faz introduzindo Ctrl+D no in´ıcio de uma linha.

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// Get file

		// from args
		if (args.length > 0) {
			for (int i = 0; i < args.length; i++) {
				run(args[i]);
			}
		}

		// or through console
		else {
			System.out.print("Location of the file: ");
			Scanner read = new Scanner(System.in);
			String filepath = read.nextLine();
			run(filepath);
		}

	}

	// Runs program
	/**
	 * 
	 * @param filepath
	 */
	public static void run (String filepath) {
		KeyValueList<String> loginInfo;
		File inFile = new File(filepath);

		// verify file 
		if (!inFile.exists() || !inFile.canRead()) {
			System.err.println("\nI/O Error.\nCheck if " + filepath + " exists and can be read");
			System.exit(-1);
		}
		// else
		try {
			Scanner readFile = new Scanner(inFile);
			loginInfo = getLoginInfo(readFile);
			readFile.close();	
			while(true) login(loginInfo);			
		} catch (FileNotFoundException e) {
			System.err.println("\nI/O Error.\nCheck if " + filepath + " is a valid file");
			System.exit(-2);
		}
	}

	// Read from file
	// Create dictionary from file
	/**
	 * Reads login info (username + password) from file
	 * @param sc scanner
	 * @return dictionary {@code [USERNAME : PASSWORD]}
	 */
	public static KeyValueList<String> getLoginInfo (Scanner sc) {
		KeyValueList<String> loginInfo = new KeyValueList<String>();
		int totalContents = 0;

		while(sc.hasNextLine()) {
			// Read line
			String line = sc.nextLine();

			// Split line (spaces or tabs as regexs)
			String[] lineContents = line.split(" |\t|\n");

			// Verify number of info is 2n
			int numContentsLine = lineContents.length;

			if (numContentsLine % 2 != 0) {
				return null;
			}

			// If it is, create dictionary with info
			else {
				for (int i = 0; i < numContentsLine; i = i + 2) {		//i + 2 to read pairs of words
					loginInfo.set(lineContents[i], lineContents[i+1]);
				}
			}

			// variable for assertion 
			totalContents += numContentsLine;

		}

		assert (loginInfo.size() == totalContents / 2)  : "Not all info has been written into the dictionary";

		return loginInfo;
	}

	// Login Process
	/**
	 * Login
	 * @param loginInfo 
	 * @return {@code true} if login is successful, {@code false} if not 
	 */
	public static boolean login(KeyValueList<String> loginInfo) {
		System.out.println(loginInfo);
		Scanner read = new Scanner(System.in);
		
		// Read Login
		System.out.print("Login: ");
		String login = read.nextLine();

		// Read Password
		// for security purposes the password shall be asked even when the login is not valid 
		System.out.print("Password: ");		
		String password = read.nextLine();	

		// Decide successful/unsuccessful authentication
		if (loginInfo.contains(login)) {
			if (loginInfo.get(login).compareTo(password) == 0) {
				System.out.println("Authentication successful.");
				return true;
			}
		}
		// else
		System.out.println("Authentication failed.");
		return false;
	}
}
