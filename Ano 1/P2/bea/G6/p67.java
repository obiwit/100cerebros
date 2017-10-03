/*
 * p67.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */

import java.io.*;

public class p67 {
	
	public static void main (String[] args) {
		String path = "", fileName = "";
		// get directory path
		try {
			path = args[0];
			fileName = args[1];
		}
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println(e);
			System.exit(1);
		}
		
		File dir = new File(path);
		if(dir.isFile()) throw new IllegalArgumentException("Argument must be a directory");
		
		printMatchingDirectory(dir, fileName);
	}
	
	public static void printMatchingDirectory(File dir, String fileName) {
		File[] filesList = dir.listFiles();
		for (File file : filesList) {	
			boolean isDir = file.isDirectory();
			
			if (file.getName().indexOf(fileName) != -1) {
				System.out.println(dir.getPath() + "/" + file.getName() + ((isDir) ? "/" : ""));
			} else if (isDir) {
				printMatchingDirectory(file, fileName);
			}
		}
	}
}

