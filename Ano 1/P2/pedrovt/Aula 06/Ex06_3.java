/*
 * Ex06_3.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */
public class Ex06_3 {
	public static void main(String[] args) {
		printArray(args, args.length);
	}

	public static void printArray(String[] array, int N) {
		// Implemente de forma recursiva...

		if (array.length == 0) {							//if array is empty
			return;
		}
		else {
			System.out.println(array[N-1]);					//starts at the last position (n-1)	

			int i = N-1;									//at the previous position
			if (i > 0) {									//if there's still stuff to print (if not, it stops -- limit case)
				printArray(array, i--);						//it prints
			}
		}
	}
}

