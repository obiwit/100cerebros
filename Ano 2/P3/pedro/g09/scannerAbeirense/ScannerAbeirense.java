package g09.scannerAbeirense;

import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.Scanner;

/**
 * ScannerAbeirense
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public class ScannerAbeirense implements Iterator<String>, Closeable {

	// Instance Fields
	private Scanner sc;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param sc
	 */
	public ScannerAbeirense (Scanner sc) {
		this.sc = sc;
	}

	// Methods
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
		return sc.next().replaceAll("v", "b").replaceAll("V", "B");
	}

	// Other Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((sc == null) ? 0 : sc.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		ScannerAbeirense other = (ScannerAbeirense) obj;
		if (sc == null) {
			if (other.sc != null) {
				return false;
			}
		} else if (!sc.equals(other.sc)) {
			return false;
		}
		return true;
	}

}
