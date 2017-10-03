import static java.lang.System.*;
import java.util.Scanner;
import java.io.IOException;
import java.io.File;
import p2utils.ImprovedKeyValueList;

public class P113
{

  public static void main(String[] args) throws IOException {
    ImprovedKeyValueList<Integer> counts = new ImprovedKeyValueList<>();

    for (int a = 0; a < args.length; a++) { // Processa cada ficheiro
      File fin = new File(args[a]);
      if (fin.exists() && fin.canRead()) {
        Scanner scf = new Scanner(fin);
        while (scf.hasNextLine()) { // Processa cada linha
          String line = scf.nextLine();
          // Divide a linha em "palavras", considerando como separador
          // qualquer sequência de 1 ou mais carateres não alfanuméricos:
          String[] palavras = line.split("[^\\p{Alnum}]+");
          for (int i = 0; i < palavras.length; i++) { // Processa cada palavra
            String word = palavras[i].toLowerCase();
            if(counts.contains(word))
				counts.set(word, counts.get(word)+1);
			else
				counts.set(word, 1);

          }
        }
        scf.close();
      }
      else {
        err.println("ERRO: Nao foi possivel ler do ficheiro "+args[a]);
      }
    }
    out.println(counts.toString("Results:\n", ";\n", "\nEnd"));
    out.println(counts.toString()); // mesma lista, outro formato
    mostFrequent(counts);
  }

  // Find and print the key with most occurrences
  // and its relative frequency.
  static void mostFrequent(ImprovedKeyValueList<Integer> counts) {
		int sum = 0;
		int max = 0;
		String maxIndex = "";
		
		String[] keys = counts.keys();
	
		for(String key : keys) {
			int i = counts.get(key);
			if (i > max) {
				max = i;
				maxIndex = key;
			}
			sum += i;
		}
		
		System.out.printf("\nMost frequent word: %s\nFrequency:%f\n\n", 
					  maxIndex, 100.0*max/sum);
  }
}

