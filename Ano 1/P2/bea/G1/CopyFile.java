/*
 * CopyFile.java
 * 
 * Copyright 2017 Beatriz Borges <bea@ubuntu>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

import java.util.*;
import java.io.*;

public class CopyFile {
	
	public static void main (String[] args) throws IOException {
		Scanner input = new Scanner(System.in);
		
		if (args.length < 2) {
			System.err.println("Usage:java CopyFile File1 File2");
		}
		
		// verify if original file exists and is readable	
		File fileIn = new File(args[0]);
		if (verify(fileIn)) {
			File fileOut = new File(args[1]);
			
			Scanner scf = new Scanner(fileIn);
			PrintWriter pw;
			
			// if second file exists, ask if user wants to overwrite it
			if(fileOut.exists()) {
				System.out.printf("%s already exists. Do you want to " +
								 "overwrite it? (Y/N) ", args[1]);
				char answer = input.nextLine().charAt(0);
				if (answer != 'y' && answer != 'Y') {
					System.err.println("Couldn't write to file.");
					System.exit(-1);
				}
			} else { 
				fileOut.createNewFile();
			}
			pw = new PrintWriter(fileOut);
			
			// while fileIn.hasNextLine(), copy next line
			while(scf.hasNextLine()) {
				String line = scf.nextLine();
				pw.println(line);
			}
			
			scf.close();
			pw.close();
		}
	}
	
	public static boolean verify(File file) {
		if (!file.exists()) {
			System.err.println("Erro - ficheiro nao existe.");
			return false;
		}
		if (!file.isFile()) {
			System.err.println("Erro - nao e um ficheiro.");
			return false;
		}
		if (!file.canRead()) {
			System.err.println("Erro - nao e possivel ler o ficheiro.");
			return false;
		}
		return true;
	}
}

