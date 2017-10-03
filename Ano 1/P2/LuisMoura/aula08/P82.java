import static java.lang.System.*;
import java.io.*;
import java.util.*;

public class P82 {
//COMPLETO E A FUNCIONAR
	public static void main(String[] args) throws IOException {
		
		if (args.length <1) {
			out.print("USAGE: java p82 filepath (with extension you forgetfull motherfucker!)");
			exit(0);
		}
		
		SortedListInt list = new SortedListInt();

		for (int i = 0; i < args.length; i++) {
			list = copyFileToList(list, args[i]);
		}
		
		while ( !list.isEmpty() ) {
		out.println(list.first());
		list.removeFirst();
		}
		
	}
			
	public static SortedListInt copyFileToList(SortedListInt list, String file)throws IOException{
		File F1 = new File(file);
		Scanner read = new Scanner(F1);
		
		while (read.hasNext() ) {
			if (read.hasNextInt()) {
				list.insert(read.nextInt());
			} else {
				read.next();
			}
		}
		read.close();
		return list;
	}
	

}


