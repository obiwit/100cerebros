import static java.lang.System.*;
import java.util.*;
import java.io.*;

public class p66 {
	static Scanner read = new Scanner(System.in);
	public static void main (String[] args) {
		if (args.length !=4) {
			out.print("Usage: java p66 (int)debt (int 0 to 100)tax (int)monthlyPayment (int)monthsToEnd");
		}
		
		double n = Integer.parseInt(args[0]);
		double M = Integer.parseInt(args[1]);
		double T = Integer.parseInt(args[2]);
		double P = Integer.parseInt(args[3]);
		
		out.printf("Iterative d(%f): %.2f\n", n, calculateDebtIterative(n, M, T, P));
		out.printf("Recursive d(%f): %.2f\n", n, calculateDebtRecursive(n, M, T, P));
	}
	
	public static double calculateDebtIterative(double n, double M, double T, double P) {
		
		for (int i = 0; i < n; i++) {
			M = M*(1+(T/100)) - P;
		}
		if (M < 0) return 0;
		return M;
		
	}
	
	public static double calculateDebtRecursive(double n, double M, double T, double P) {
		
		if (n == 0) {
			return M;
		}
		if (M < 0) return 0;
		return calculateDebtRecursive(n-1, M*(1+T/100)-P, T, P);	
	}
}

