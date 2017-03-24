/*
 * p65.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */

import java.io.*;

public class p65 {
	
	public static void main (String[] args) {
		String path = "";
		// get directory path
		try {
			path = args[0];
		}
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println(e);
			System.exit(1);
		}
		
		File dir = new File(path);
		if(dir.isFile()) throw new IllegalArgumentException("Argument must be a directory");
		
		printDirectory(dir);
	}
	
	public static void printDirectory(File dir) {
		File[] filesList = dir.listFiles();
		
		System.out.println(dir.getPath() + "/");
		
		for (File file : filesList) {
			
			if (file.isFile()) {
				System.out.println(dir.getPath() + "/" + file.getName());
			}
			else { // it's a directory
				// print files inside it
				printDirectory(file);
			}
		}
	}
}

