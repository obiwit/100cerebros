/**
 * P74
 * Considere agora um problema parecido com o do exerc´ıcio 7.1. Neste caso, o programa deve
 * imprimir primeiro as linhas com menos de 20 carateres, por ordem inversa daquela em que
 * estavam no ficheiro, seguidas das linhas mais longas, pela ordem original. Note que pode
 * resolver o problema com apenas uma lista, se inserir elementos pelas duas extremidades.
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
import p2utils.LinkedList;

public class P74 {

  public static void main(String[] args) throws IOException {
    if (args.length != 1) {
      err.printf("Usage: java -ea P71 text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);
    	
    // Criar listas para as linhas curtas, médias e longas.
    LinkedList<String> lines  = new LinkedList<String>();
        
    Scanner sf = new Scanner(fil);
    
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
        
      // Guardar linha na lista apropriada.
      if (line.length() <= 20) {		//short lines
    	  lines.addFirst(line);			//add first to get shorts lines in the order
      }
      else {							//other lines
    	  lines.addLast(line);
      }
  
    }
    sf.close();

    // Escrever conteúdo das listas...
    lines.print();

  }
}