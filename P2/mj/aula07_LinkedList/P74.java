import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class P74{
	public static void main(String[] args) throws IOException{
		if (args.length != 1) {
			err.printf("Usage: java -ea P71 text-file\n");
			exit(1);
		}
		File fil = new File(args[0]);

		LinkedList <String> list = new LinkedList <String>();
		
		
		//outra forma
		//LinkedList <String> curtas = new LinkedList <String>();
		//LinkedList <String> medias = new LinkedList <String>();
		//LinkedList <String> longas = new LinkedList <String>();

		Scanner sf = new Scanner(fil);
		// exceções poderiam ser intercetadas e mostrar mensagem de erro.
		while (sf.hasNextLine()) {
			String line = sf.nextLine();
			
			if(line.length()<20){
				list.addFirst(line);
				list.reverse();
			}
			else 
				list.addLast(line);
			
			
			//outra forma
			//~ if(line.length()<20){
				//~ curtas.addFirst(line);
			//~ }
			//~ else if(line.length()>=20 && line.length()<40){
				//~ medias.addFirst(line);
			//~ }
			//~ else if(line.length()>=40){
				//~ longas.addFirst(line);
			//~ }

		}
		sf.close();

		list.print();
		
		// outra forma
		//~ out.println("Curtas");
		//~ curtas.reverse();
		//~ curtas.print();

		//~ out.println("Medias");
		//~ medias.print();

		//~ out.println("Longas");
		//~ longas.print();
		
	}

}

