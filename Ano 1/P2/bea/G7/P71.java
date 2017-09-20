import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class P71
{
  @SuppressWarnings(value = "unchecked")
  public static void main(String[] args) throws IOException
  { 
	
    if (args.length != 1) {
      err.printf("Usage: java -ea P71 text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);

    // Criar listas para as linhas curtas, médias e longas.
    //LinkedList<String>[] lines = (LinkedList<String>[]) new Object[3];
    LinkedList<String> shortLines = new LinkedList<String>();
    LinkedList<String> mediumLines = new LinkedList<String>();
    LinkedList<String> longLines = new LinkedList<String>();

    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
      // Guardar linha na lista apropriada.
      //int index = (int)((line.length() / 20.5) + 1); // 20.5 para excluir 20 da 1ra linha mas incluir 40 na segunda
	  //lines[index].addLast(line);
	  if (line.length() < 20) shortLines.addLast(line);
	  else if (line.length() < 41) mediumLines.addLast(line);
	  else longLines.addLast(line);
    }
    sf.close();

    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
    //lines[0].print();
    shortLines.print();

    out.println("Médias---|---------|---------|---------|---------");
    mediumLines.print();

    out.println("Longas---|---------|---------|---------|---------");
    longLines.print();
  }

}
