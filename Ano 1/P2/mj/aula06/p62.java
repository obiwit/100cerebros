import static java.lang.System.*;

public class p62 {

	public static void main(String[] args) {
		printArray(args, args.length);
	}

	/** Imprime as N primeiras strings do array, uma por linha. */
	public static void printArray(String[] array, int N){
		assert N>=0: "invalid indice";
		if(N==1)
			out.println(array[N-1]);
		else{
			printArray(array, N-1);
			out.println(array[N-1]);
		}
		
		//ou
		//if(N>1) 
			//~ printArray(array, N-1);
			
		//~ out.println(array[N-1]);
	}

}

