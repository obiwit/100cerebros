import java.util.*;
import java.io.*;

public class ex1_7 {
	static Scanner read = new Scanner(System.in);
	public static void main (String args[]) throws IOException {
		System.out.println("CLASS 1 EX 7 - COPY TEXT FROM FILE TO FILE\n");
		
		System.out.print("File 1: ");
		String readFileName = read.nextLine();
		File F1 = new File(readFileName);
		if (verifyReadFile(F1)) {
			do {
				System.out.print("File 2: ");
				String writeFileName = read.nextLine();
				File F2 = new File(writeFileName);
			} while (!verifyWriteFile(F2));
		}
		Scanner read_from_file = new Scanner(F1);
		PrintWriter pw = new PrintWriter(F2);
		while(read_from_file.hasNextLine()) {
			pw.print(read_from_file.nextLine());
		}
		read_from_file.close();
		pw.close();	
	}
	
	// Verifica o ficheiro de LEITURA.
	public static boolean verifyReadFile (File file) {
		if (!file.exists()) {
			System.out.println("ERROR: input file " + file + " does not exist!");
			return false;
		}
		if (file.isDirectory()) {
			System.out.println("ERROR: input file " + file + " is a directory!");
			return false;
			}
		if (!file.canRead()) {
			System.out.println("ERROR: cannot read from input file " + file+ "!");
			return false;
			}
		return true;
	}
	
	// Verifica o ficheiro de ESCRITA.
	public static boolean verifyWriteFile (File file) {
		if (file.exists()) {
			System.out.println("ERROR: input file " + file + " already exists!");
			return false;
		}
		return true;
	}
}
