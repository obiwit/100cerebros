import static java.lang.System.*;

public class p64 {

	public static void main(String[] args) {
		printArray(args, args.length);
	}

	/** Imprime as N primeiras strings do array, uma por linha. */
	public static void printArray(String[] array, int N){
		assert N>=0: "invalid indice";
		
		if(N>1) 
			printArray(array, N-1);
			
		out.println(reverse(array[N-1]));
	}

	public static String reverse(String str) {
		if ((null == str) || (str.length() <= 1)) {
			return str;
		}
		return reverse(str.substring(1)) + str.charAt(0);
	}
	//exemplo reverse function
	//~ reverse(ola)
	//~ tamanho false
	//~ return reverse(la) + o
	//~ tamanho false
	//~ return reverse(a) + l
	//~ tamanho true 
	//~ return a + l + o

	
	
}
