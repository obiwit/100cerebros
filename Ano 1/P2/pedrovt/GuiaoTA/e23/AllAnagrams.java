package e23;

import static java.lang.System.*;
import java.util.Scanner;
import java.util.Arrays;
import java.io.*;
import p2utils.*;

public class AllAnagrams
{
  public static void main(String[] args) throws IOException
  {
    if (args.length != 1)
    {
      err.println("Uso: java -ea AllAnagrams <Ficheiro>");
      exit(1);
    }
    long time = nanoTime();
    LinkedList<LinkedList<String>> anagrams = findAnagrams(args[0]);
    time = nanoTime() - time;
    out.println(anagrams);
    out.printf("Found %d anagram groups", anagrams.size());
    out.printf(" in %.3f seconds\n", time/1e9);
  }

  // A sorted version of the string str:
  //   sortedString("isentas") -> "aeinsst".
  //   sortedString("sinetas") -> "aeinsst".
  static String sortedString(String str)
  {
    char[] a = str.toCharArray();
    Arrays.sort(a);
    return new String(a);
  }

  // complete this function
  static LinkedList<LinkedList<String>> findAnagrams(String FileName) 
    throws IOException 
  {
    File fin = new File(FileName);
    Scanner scin = new Scanner(fin);
    LinkedList<LinkedList<String>> anagrams = new LinkedList<>();
    int expectedNumWords = (int)(fin.length()/10.0); // estimating around 10 bytes per word

    HashTable<LinkedList<String>> aux = new HashTable<>(expectedNumWords);
    
    while(scin.hasNext())
    {
      String word 		 = scin.next();
      String orderedWord = sortedString(word);
      
      LinkedList<String> tmp;
      if (aux.contains(orderedWord)) {
    	  tmp = aux.get(orderedWord);
    	  if (!tmp.contains(word)) {
    		  tmp.addFirst(word);
    	  }
      } 
      
      else {
    	 tmp = new LinkedList<>();
    	 tmp.addFirst(word);
    	 aux.set(orderedWord, tmp);
      }
    }
    scin.close();

    String[] keys = aux.keys();
    for (String key : keys) {
    	LinkedList<String> add = aux.get(key);
    	if (add.size() > 1) anagrams.addLast(aux.get(key));
    }

    return anagrams;
  }
}

