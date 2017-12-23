package aula9;

import java.io.IOException;

import aula9.scannerAbeirense.ScannerAbeirense;

/**
 * Prob1
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob1 {

	public static void main(String[] args) throws IOException {
		
		ScannerAbeirense sa = new ScannerAbeirense(System.in);
		System.out.println("Starting the program. Type 'quit' to exit.\n");
		
		while(true) {

			System.out.print("Str:\t");
			
			String s = sa.nextLine();
			if(s.equals("quit"))
				break;
			System.out.println("\t" + s);
		}
		
		sa.close();
	}

}
