/*
 * Ex06_6.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex06_6 {
		
	public static void main(String[] args) {
		Scanner read = new Scanner (System.in);

		// Get values
		int[] values = new int[4];

		// through args
		if (args.length >= 4){
			System.arraycopy(args, 0, values, 0, values.length);
		}

		// or console
		else {
			System.out.print("Please insert the number of months: ");
			values[0] = read.nextInt();
			System.out.print("Please insert the debt (value in EUR): ");
			values[1] = read.nextInt();
			System.out.print("Please insert the interest rate (percentage): ");
			values[2] = read.nextInt();
			System.out.print("Please insert the mortgage (value in EUR): ");
			values[3] = read.nextInt();
		}

		// Print results values
		System.out.println();
		System.out.println("Debt after "+ values[0] + " months is (recursive solution): EUR " + getDebtR(values[0], values[1], values[2], values[3]));
		System.out.println("Debt after "+ values[0] + " months is (iterative solution): EUR " + getDebtI(values[0], values[1], values[2], values[3]));
		
		// Debug
		// System.out.println(getDebtR(12, 3000, 5, 4));
		// System.out.println(getDebtI(12, 3000, 5, 4));
		
	}
	
	/** Recursive solution
	 * 
	 * @param n - Months
	 * @param m - Debt
	 * @param t - Interest Rate
	 * @param p - Mortgage
	 * @return Debt after n months
	 */
	public static double getDebtR(double n, double m, double t, double p) {
		if (n == 0) {
			return m;
		}
		else {
			return getDebtR(n-1, m*(1+t/100)-p, t, p);
		}
	}
	
	/** Iterative solution
	 * 
	 * @param n - Months
	 * @param m - Debt
	 * @param t - Interest Rate
	 * @param p - Mortgage
	 * @return Debt after n months
	 */
	public static double getDebtI(double n, double m, double t, double p) {
		for (double i = 0; i < n; i++) {		// for each one of the n months   
			m = m*(1+t/100)-p;					// debt = debt - sum of the interest rate and the mortage value
		}
		return m;
	}
	
}
