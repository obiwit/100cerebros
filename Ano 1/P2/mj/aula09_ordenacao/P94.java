import static java.lang.System.*;
import java.io.File;
import java.util.Scanner;
import java.io.IOException;

//esta mal, mas compila bem
//e suposto usar linked list?

public class P94 {

  public static void main(String[] args) throws IOException{ // Note that the Program is not robust!
    Scanner in = new Scanner(System.in);
        
    if(args.length == 0){
		err.print("java P94.java file with extension");
		exit(1);	
	}
    
    for (int i = 0; i < args.length; i++){
		
		File fin = new File(args[i]);
		
		assert fin.exists();
		assert !fin.isDirectory();
		assert fin.canRead();
		
		String[] words = extractsWords(fin);
		
		insertionSort(words, 0, words.length);
			
		//out.println("------------------------");
	
		words = removeRepeated(words);
		
		int k;
		for(k = 0; k < words.length-1; k++){
			out.printf("[%d] %s\n", k+1, words[k]);
		}
		out.printf("number of different words is : %d\n",k );
	}
	
    
    //~ if (args.length != 1) {
		//~ out.println("you can also use: java P94 <file with extension>\n");
		//~ do{
			//~ out.print("file: ");
			//~ fin = new File(in.nextLine());
		//~ }while(fin.isDirectory() || !fin.canRead() || !fin.exists());
    //~ }
    

  }


  // Read words from a file, return words in an array
  static String[] extractsWords(File fin) throws IOException {
    assert fin != null;
    assert !fin.isDirectory(); // Note that this precondition does not 100% ensure this kind of assertion!
    assert fin.canRead();      // Note that this precondition does not 100% ensure this kind of assertion!

    // count the words
    int n = 0;
    Scanner scf = new Scanner(fin).useDelimiter("[\\p{Punct}\\p{Space}]+");
    // (words are delimited by 1 or more punctuation or whitespace char)
    while (scf.hasNext()) {
      scf.next();
      n++;
    }
    scf.close();

    String[] result = new String[n];

    // read the words
    int i = 0;
    scf = new Scanner(fin).useDelimiter("[\\p{Punct}\\p{Space}]+");
    while(scf.hasNext()) {
      result[i] = scf.next();
      i++;
    }
    scf.close();

    return result;
  }
	
	public static String[] removeRepeated(String[] a){
		assert isSorted(a, 0, a.length):"array not sorted";
		String [] result ;
		int repeated = 0;

		//count the number of repetitions
		for (int i = 0; i < a.length-1; i++){
			for (int j = i+1; j < a.length ; j++){
				if(a[i].compareTo(a[j]) == 0){
					repeated++;	
				}
			}			
		}
		
		result = new String [(a.length-repeated)];
		
		
		//copy without repetitions
		for (int i = 0; i < a.length-1; i++){
			if(a[i].compareTo(a[i+1]) != 0) 
				result[i]=a[i];			
		}
		
		return result;
		
		
	}
	
	public static void insertionSort(String[] a, int start, int end){
		assert validSubarray(a, start, end):"not a valid subarray";
		for (int i = start+1; i < end ; i++){
			int j;
			String v = a[i];
			for (j = i-1; j >= start && a[j].compareTo(v)>0 ; j--){		//s1.compareto(s2) > 0 se s1>s2 lexograficam/
				a[j+1] = a[j];
			}	
			a[j+1] = v;
		}
		assert isSorted(a, start, end): "array is not sorted";
	}

	
	public static boolean validSubarray(String[]a, int start, int end){
		if(start >= 0 && end<=a.length) return true;
		else return false;
	
	}
	
	public static boolean isSorted(String[]a, int start, int end){
		boolean sort = true;
		int i=start;
		while(i<end){
			if(a[i].compareTo(a[i+1])>0){//s1.compareto(s2) > 0 se s1>s2 lexograficam/
				sort = false; 
				i++;
			}
		}
		return sort;
	}
  
  
  //p95
  //passar o array para um ficheiro
  //programa le esse ficheiro qnd inicia

}
