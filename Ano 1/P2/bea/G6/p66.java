/*
 * p66.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */

public class p66 {
	
	public static void main(String[] args) {
		System.out.println("Loan | Interest Rate | Installment | Months || Debt");
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |      0 || " 
						+ debt(3000, 3, 149, 0));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 0));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |      1 || " 
						+ debt(3000, 3, 149, 1));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 1));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |      5 || " 
						+ debt(3000, 3, 149, 5));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 5));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |     10 || " 
						+ debt(3000, 3, 149, 10));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 10));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |     20 || " 
						+ debt(3000, 3, 149, 20));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 20));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |     25 || " 
						+ debt(3000, 3, 149, 25));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 25));
		System.out.println("----------------------------------------------------------------------");
		System.out.println("3000 |             3 |         149 |     50 || " 
						+ debt(3000, 3, 149, 50));
		System.out.println("                             Iterative Debt || " 
						+ iterativeDebt(3000, 3, 149, 50));
	}
	
	public static double debt(double loan, double rate, double install, double month) {
		if (month == 0) return loan;
		else {
			double debt = debt(loan + loan*(1+rate)/100 - install, rate, install, month - 1);
			return ((debt < 0) ? 0 : debt);
		}
	}
	
	public static double iterativeDebt(double loan, double rate, double install, double month) {
		double debt = loan;
		while(month > 0) {
			debt += debt * (1+rate)/100.0 - install;
			month--;
		}
		return ((debt < 0) ? 0 : debt);
	}
}

