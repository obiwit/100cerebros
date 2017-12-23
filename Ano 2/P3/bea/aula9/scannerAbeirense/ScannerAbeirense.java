package aula9.scannerAbeirense;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Scanner;

/**
 * ScannerAbeirense
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class ScannerAbeirense implements Iterator<String>, Closeable {

	private Scanner sc;
	
	public ScannerAbeirense(InputStream in) {
		sc = new Scanner(in);
	}
	public ScannerAbeirense(Scanner s) {
		sc = s;
	}
	
	public String nextLine() {
		if (sc.hasNextLine())
			return sc.nextLine().replaceAll("v", "b").replaceAll("V", "B");
		return null;
	}

	@Override
	public void close() throws IOException {
		sc.close();
	}

	@Override
	public boolean hasNext() {
		return sc.hasNext();
	}

	@Override
	public String next() {
		if (sc.hasNext())
			return sc.next().replaceAll("v", "b").replaceAll("V", "B");
		return null;
	}

}
