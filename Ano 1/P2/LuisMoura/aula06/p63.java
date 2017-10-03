import static java.lang.System.*;

public class p63 {

	public static void main(String[] args) {
		printArray(args, args.length);
	}
  

	/** Imprime as N strings do array, uma por linha, por ordem inversa. */
	public static void printArray(String[] array, int N) {
		if (N > 0) {
			out.print(array[N-1]);
			out.print("\n");
			//N -= 1;
			printArray(array, N-1);			
		}
	}
	
}

