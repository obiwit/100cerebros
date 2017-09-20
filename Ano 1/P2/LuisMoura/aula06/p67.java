import static java.lang.System.*;
import java.util.*;
import java.io.*;

public class p67 {
	
	public static void main (String[] args) {
		
		if (args.length != 2) {
			out.print("Usage: java p67 fileName Path");
			exit(0);
		}
		
		File file = new File(args[1]);
		
		printFiles(file, args[0]);
	}
		
	public static void printFiles(File f, String fileName) {
		if (f.isDirectory()) {
			File[] list = f.listFiles();
			for (int i = 0; i < list.length; i++) {
				if ((list[i].getName().indexOf(fileName) != -1) && !list[i].isDirectory()) {
					out.println(list[i].getPath());
				}
				printFiles(list[i], fileName);
			}
		}
	}
}

