/*
 * Ex01_3.java
 * 
 * Pedro Teixeira <pedro.teix@ua.pt> 
 * N. Mec 84715
 * MIECT - DETI UA
 */

import java.util.Scanner;
import static java.lang.System.*;

public class Ex01_3
{
	public static final Scanner in = new Scanner(System.in);

	public static void main(String[] args)
	{
		int n;
		do
		{
			out.print("N: ");
			n = in.nextInt();
			if(n < 1)
				err.println("ERROR: invalid number!");
		}
		while(n < 1);

		String verb = isPrime(n)? "is" : "is not";
		out.printf("Number %d %s prime\n", n, verb);
	}

	public static boolean isPrime(int n)
	{
		//for (int i = 2; i <= n/2; i++) {
		for (int i = 2; i < Math.sqrt(n); i++) {
			if ((n % i == 0)) {
				return false;
			}
		}	
		return true;
	}
}
