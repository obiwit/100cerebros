
public class p66 {
	
	public static void main (String[] args) {
		assert args.length == 4 : "Use: <n> <M> <T> <P>";
		
		int n = Integer.parseInt(args[0]);
		int M = Integer.parseInt(args[1]); 
		int T = Integer.parseInt(args[2]);
		int P = Integer.parseInt(args[3]);
		
		System.out.println("recursive solution: " + getDebtR(n, M, T, P));
		System.out.println("iterative solution: " + getDebtI(n, M, T, P));
	}
	
	//recursive solution
	public static double getDebtR(double n, double M, double T, double P) {
		if(n==0)
			M=M;
		else{
			M=getDebtR(n-1, M, T, P)*(1+T/100)-P;
		}
		
		return M;
	
	}
	
	//iterative solution
	public static double getDebtI(double n, double M, double T, double P) {
		for (double i = 0; i < n; i++) {		// for each one of the n months   
			M = M*(1+T/100)-P;					// debt = debt - sum of the interest rate and the mortage value
		}
		return M;
	}
}

