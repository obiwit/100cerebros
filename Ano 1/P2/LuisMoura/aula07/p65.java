import static java.lang.System.*;
import java.util.*;
import java.io.*;

public class p65 {
	
	public static void main (String[] args) {
		
		if (args.length != 1) {
			out.print("Usage: java p65 Path");
			exit(0);
		}
		
		File file = new File(args[0]);
		
		printDirContent(file);
	}
		
	public static void printDirContent(File f) {
		out.println(f.getPath());
		if (f.isDirectory()) {
			out.println(f.getPath());
			File[] list = f.listFiles();
			for (int i = 0; i < list.length; i++) {
				printDirContent(list[i]);
			}
		}
	}
	
}

