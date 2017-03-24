/*
 * Ex06_7.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

// Ex 6.7b (ex 6.7a is a specific situation of 6.7b)

import java.io.File;
import java.util.Scanner;

public class Ex06_7 {
	
	public static void main(String[] args) {

		Scanner read = new Scanner (System.in);

		// Get path and name to look for
		String path, name;

		// through args
		if (args.length >= 2){
			path = args[0];
			name = args[1]; 
		}

		// or console
		else {
			System.out.print("Please insert the path: ");
			path = read.nextLine();
			System.out.print("Please insert the (part of the) name of the file you want to find: ");
			name = read.nextLine();
		}

		/* implementation using try catch
		try {
			path = args[0];
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.print("Please insert the path: ");
			path = read.nextLine();
		}
		 */

		searchDir(path, name);
	}

	// Gets contents from folder @path and its subdirectories
	public static void searchDir (String path, String name) {
		File dir = new File (path);

		//if dir is actually a directory, prints its content
		if (dir.isDirectory()) {
			File[] contents = dir.listFiles();
			if (contents != null) {			//avoids I/O Errors (see listFiles documentation)
				for (File i : contents) {
					// if it's a directory, gets its contents 
					if (i.getPath().indexOf(name) != -1)    //if found
						System.out.println(i.getPath());	//print file
					if (i.isDirectory()) {
						searchDir(i.getPath(), name);
					}
				}
			}
		}
	}

}