import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.LinkedList;

public class P71
{

  public static void main(String[] args) throws IOException
  {
    if (args.length != 1) {
      err.printf("Usage: java -ea P71 text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);
    	
    // Criar listas para as linhas curtas, médias e longas.
    LinkedList<String> shortLines  = new LinkedList<String>();
    LinkedList<String> mediumLines = new LinkedList<String>();
    LinkedList<String> longLines   = new LinkedList<String>();
    
    //Not working (in Java, array of generics means troubles....)
	//LinkedList<String>[] lines = (LinkedList<String>[]) new Object[3];
    
    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    
    while (sf.hasNextLine()) {
      
      String line = sf.nextLine();   
      
      // Guardar linha na lista apropriada.
      if (line.length() <= 20) {
    	  shortLines.addFirst(line);
      }
      else if (line.length() > 20 && line.length() <= 40) {
    	  mediumLines.addFirst(line);
      }
      else {
    	  longLines.addFirst(line);
      }
  
    }
    sf.close();

    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
    shortLines.print();

    out.println("Médias---|---------|---------|---------|---------");
    mediumLines.print();

    out.println("Longas---|---------|---------|---------|---------");
    longLines.print();
  }

}
