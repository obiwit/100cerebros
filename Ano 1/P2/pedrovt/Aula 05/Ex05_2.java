/*
 * Ex05_2.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.io.*;
import java.util.*;

public class Ex05_2 {

	public static void main(String[] args) {
		// Creates in and out file
		File in_file  = null;
		File out_file = null;  

		try{
			in_file  = new File(args[0]);
			out_file = new File(args[1]);
		} catch (ArrayIndexOutOfBoundsException | NullPointerException e){
			System.err.printf("No input file or output file specified");
			System.out.printf("Usage : java [-ea] Ex05_2 <file to be copied> <name of the copy>");
			System.exit(1);
		}

		// Verifies files 

		// In file
		// must exist
		if (!in_file.exists()) {
			System.err.printf("ERROR: Input file %s does not exist", args[0]);
			System.exit(1);
		}

		// must be a normal file
		if (in_file.isDirectory()) {
			System.err.printf("ERROR: Input file %s is a directory", args[0]);
			System.exit(1);
		}

		if (!in_file.isFile()) {
			System.err.printf("ERROR: Input file %s is not a valid file", args[0]);
			System.exit(1);
		}

		// must be readable
		if (!in_file.canRead()) {
			System.err.printf("ERROR: Input file %s can't be read", args[0]);
			System.exit(1);
		}
		// --------------------
		// Out file
		// if exists 
		if (out_file.exists()) {
			// must be writable
			if (!out_file.canWrite()) {
				System.err.printf("ERROR: Output file %s can't be overwritten", args[1]);
				System.exit(1);
			} else {
				System.out.printf("WARNING: output file %s already exists. ", args[1]);
				String answer;
				Scanner read = new Scanner (System.in);
				do
				{
					System.out.printf("Copy over existing file (y/n)? ");
					answer = read.nextLine();
				} while ((!answer.equals("y")) && (!answer.equals("n")));

				if (answer.equals("n")) {
					System.exit(1);
				}
				else if (answer.equals("y")) {
				}
			}
		}
		// if doesn't exist
		else {
			File parent_dir = out_file.getParentFile();
			// parent folder must be exist
			if (!parent_dir.exists())
			{
				System.err.printf("ERROR: output directory %s does not exist", parent_dir.getPath());
				System.exit(1);
			}
			// and must be writable
			if (!parent_dir.canWrite())
			{
				System.err.printf("ERROR: cannot write to output directory %s", parent_dir.getPath());
				System.exit(21);
			}
		}

		// Scanners to read and write on files
		Scanner in 		= null;
		PrintWriter out = null;
		try{
			in  = new Scanner (in_file);
			out = new PrintWriter (out_file);
		} catch (FileNotFoundException e) {
			System.err.printf("File(s) not accessible. Check if they exist and/or are readable.");
		}

		// Copies file content line by line
		try{
			while(in.hasNextLine()){
				out.println(in.nextLine());
			}
		} catch (NoSuchElementException e) {
			System.err.printf("The input file doesn't have more lines");
		} finally {
			System.out.printf("File %s copied successfully to %s", args[0], args[1]);
			in.close();
			out.close();
		}

	} 
}	