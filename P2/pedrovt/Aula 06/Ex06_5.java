/*
 * Ex06_5.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.io.*;
import java.util.Scanner;

public class Ex06_5 {

	public static void main(String[] args) {

		Scanner read = new Scanner (System.in);

		// Get path
		String path;

		// through args
		if (args.length >= 1){
			path = args[0];
		}

		// or console
		else {
			System.out.print("Please insert the path: ");
			path = read.nextLine();
		}

		/* implementation using try catch
		try {
			path = args[0];
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.print("Please insert the path: ");
			path = read.nextLine();
		}
		 */

		//listDir(path);

		File dir = new File (path);
		listDir(dir);
	}

	// Gets contents from folder @path and its subdirectories
	public static void listDir (String path) {
		File dir = new File (path);

		System.out.println(dir.getPath());

		//if dir is actually a directory, prints its content
		if (dir.isDirectory()) {
			File[] contents = dir.listFiles();
			for (File i : contents) {
				// if it's a directory, gets its contents 
				if (i.isDirectory()) {
					listDir(i.getPath());
				}
				// else (if it's a file) prints its path
				else {
					System.out.println(i.getPath());
				}
			}
		}
	}

	// Gets contents from folder and its subdirectories
	public static void listDir (File dir) {
		System.out.println(dir.getPath());

		if (dir.isDirectory()) {
			File[] contents = dir.listFiles();
			for (File i : contents) {
				try {
					// if it's a directory, gets its contents 
					if (i.isDirectory()) {
						listDir(i);
					}
					
					// else (if it's a file) prints its path
					else {
						System.out.println(i.getPath());
					}	
				} catch (NullPointerException e) {			//catches possible I/O errors
					System.out.println("File/folder not acessible");
				}
			}
		}
	}
}