/*
 * Ex05_3.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.io.*;

public class Ex05_3 {

	public static void main(String[] args) {
		// Creates dir file 
		File dir  = new File(".");		//default is .

		if (args.length >= 1) {
			dir  = new File(args[0]);
		} 

		// Verifications for dir file
		// must exist
		if (!dir.exists()) {
			System.err.printf("ERROR: Directory %s does not exist.", dir.getAbsolutePath());
			System.exit(1);
		}

		// must be a directory
		if (!dir.isDirectory()) {
			System.err.printf("ERROR: Directory %s is not a directory.", dir.getAbsolutePath());
			System.exit(1);
		}

		// must not be a file
		if (dir.isFile()) {
			System.err.printf("ERROR: Directory %s is a file.", dir.getAbsolutePath());
			System.exit(1);
		}

		// must be readable
		if (!dir.canRead()) {
			System.err.printf("ERROR: Directory %s can't be read.", dir.getAbsolutePath());
			System.exit(1);
		}
		//System.out.print(dir.getAbsolutePath());		//debug
		getDir_FileAttribs(dir);
	}

	/**
	 * Lists attributes (directory, readable, writable) of files and folders in the given folder 
	 * @param dir - Folder to analyze
	 * @return Attributes (directory, readable, writable) of files and folders in the given folder
	 */
	public static void getDir_FileAttribs (File dir) {
		// Gets dir contents 
		File[] contents = dir.listFiles();

		// List files 
		if (contents!= null) {		// I/O Errors
			System.out.printf("Files in %s: \n", dir.getAbsolutePath());
			for (File i : contents) {
				// print file name 
				System.out.print(i.getPath());

				// get file attributes 
				String attr = "";
				boolean isDirectory = false, canRead = false; //to determine whether to add commas or not

				if (i.isDirectory()) {
					attr += "DIR";
					isDirectory = true;
				}

				if (i.canRead()) {
					if (isDirectory) attr += ", READ";
					else attr += "READ";
					canRead = true;
				}

				if (i.canWrite()) {
					if (canRead) attr += ", WRITE";
					else attr += "WRITE";
				}

				// print file attributes
				System.out.println("	("+attr+")");
			}
		}
		else {
			System.err.printf("ERROR: Can't list contents of %s. Check if you have enough privileges to access it.", dir.getAbsolutePath());
		}
	} 
}	