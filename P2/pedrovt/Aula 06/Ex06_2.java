/*
 * Ex06_2.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import static java.lang.System.*;

public class Ex06_2 {
	public static void main(String[] args) {
		printArray(args, args.length);
	}

	/** Imprime as N primeiras strings do array, uma por linha. */
	public static void printArray(String[] array, int N) {
		// Implemente de forma recursiva...

		if (array.length == 0) {							//if array is empty
			return;
		}
		else {
			out.println(array[array.length-N]);				//starts at the first position (0)

			int i = N-1;									//at the previous position
			if (i > 0) {									//if there's still stuff to print (if not, it stops -- limit case)
				printArray(array, i--);						//it prints
			}
		}

	}
	
	/*
	 * static void printArray (String a, int x) {
	 * 	if (n > 1) printArray(a, n-1);
	 *  out.println(a[n-1]);
	 * }
	 */

}

