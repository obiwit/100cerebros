import static java.lang.System.*;
import java.util.Arrays;

public class p63 {

	public static void main(String[] args) {
		printArray(args, args.length, 0);
	}

	public static void printArray(String[] array, int N, int n){
		assert N>=0: "invalid indice";
		if(n == (N-1))
			out.println(array[n]);
		else{
			printArray(array, N, n+1);
			out.println(array[n]);
		}
	}

}

