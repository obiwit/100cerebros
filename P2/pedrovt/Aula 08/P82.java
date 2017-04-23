import java.io.*;
import java.util.Scanner;

public class P82 {
	public static void main(String[] args) throws IOException {
		// get files
		SortedListInt listInts = new SortedListInt();  

		for (int i = 0; i < args.length; i++) {
			File in_file = new File (args[i]);
			Scanner in   = new Scanner (in_file);

			// get numbers 
			while (in.hasNextLine()) {
				String line = in.nextLine();
				String[] line_contents = line.split(" ");

				for (String j : line_contents) {
					try {
						int num = Integer.parseInt(j);
						//out.println(j);
						listInts.insert(num);
					} catch (NumberFormatException e) {
					}	
				}

			}
			in.close();
		}

		// print list
		listInts.print();
		
	}
}


