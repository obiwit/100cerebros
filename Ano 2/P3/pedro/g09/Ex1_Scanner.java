package g09;

import java.io.IOException;
import java.util.Scanner;

import g09.scannerAbeirense.ScannerAbeirense;

/**
 * Main
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex1_Scanner {

	public static void main (String[] args) throws IOException {
		@SuppressWarnings("resource")
		ScannerAbeirense sc = new ScannerAbeirense(new Scanner ("A Vera viu um video"));
		while (sc.hasNext()) {
			System.out.println(sc.next());
		}
		sc.close();
	}
}
