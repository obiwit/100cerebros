/*
 * Ex01_7.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.io.*;
import java.util.Scanner;

public class Ex01_7 { 

	public static void main(String[] args) throws IOException {
		//Debug
		/*String path_in = "C:\\Users\\Pedro\\Desktop\\alunos.txt";
		String path_out = "C:\\Users\\Pedro\\Desktop\\alunos_copy.txt";
		File in = new File (path_in);
		File out = new File (path_out);
		*/
		
		//Read/create files
		File in = new File (args[0]);
		File out = new File (args[1]);

		//Validate files
		validateFile (in, out);
		
		//Copy in --> out
		copyFile (in, out);

	}

	//Validate files
	public static void validateFile (File in_file, File out_file) throws IOException {
		Scanner read = new Scanner (System.in); 

		//Validar ficheiro de entrada
		if (!in_file.exists()) {				
			System.err.printf("ERROR: input file %s does not exist.\n", in_file.getPath());
			System.exit(0);
		}
		else if (!in_file.canRead()) {
			System.err.printf("ERROR: input file %s cannot be read.\n", in_file.getPath());
			System.exit(0);
		}
		else if (!in_file.canWrite()) {	
			System.err.printf("ERROR: input file %s cannot be written.\n", in_file.getPath());
			System.exit(0);
		}
		else if (in_file.isDirectory()) {
			System.err.printf("ERROR: input file %s is a directory.\n", in_file.getPath());
			System.exit(0);
		}
		
		//If in_file is OK, validate out_file
		else {
			if (out_file.isDirectory()) {
				System.err.printf("ERROR: output file %s is a directory.\n", out_file.getPath());
				System.exit(0);
			}
			else if (out_file.exists() && !out_file.canRead())	{
				System.err.printf("ERROR: output file %s cannot be read.\n", out_file.getPath());
				System.exit(0);
			}
			else if (out_file.exists() && !out_file.canWrite())	{
				System.err.printf("ERROR: output file %s cannot be written.\n", out_file.getPath());
				System.exit(0);
			}
			else if (out_file.exists()) {
				System.out.printf("WARNING: output file %s already exists. Copy over exiting file (y/n)? ", out_file.getPath());
				String answer = read.next();
				if (answer.equals("n") || answer.equals("N")) System.exit(0);
			}
		}
	}

	//Copy data in_file --> out_file
	public static void copyFile (File in_file, File out_file) throws IOException {
		Scanner in=new Scanner (in_file);				
		PrintWriter out = new PrintWriter (out_file);
		while(in.hasNextLine()){
			out.println(in.nextLine());
		}

		in.close();
		out.close();
	}

}
