import p2utils.Stack;

public class P104 {
	
	public static void main (String[] args) {
		int n = args.length;
		if ((n == 0) || (n % 2 == 0))
			System.out.println("Usage: java P104 <num1> <num2> <nums> <operator1> <operators>");
		
		int operatorsNum = n / 2;
		int numsNum = n - operatorsNum;
		
		Stack calc = new Stack<Double>();
		
		for (int i = 0; i < numsNum; i++) {
			calc.push(Double.parseDouble(args[i]));
			System.out.println(calc);
		}
		
		for(int i = n-1; i >= numsNum; i--) {
			double a = (double)calc.top(); // sem o cast da erro (no Geany)
			calc.pop();
			double b = (double)calc.top();
			calc.pop();
			
			calc.push(calculate(a, b, args[i]));
			System.out.println(calc);
		}
	}
	
	public static double calculate(double a, double b, String op) {
		switch(op) {
			case "+": return a+b;
			case "-": return a-b;
			case "*":
			case "x": return a*b;
			case "/": return a/b;
			case "%": return a%b;
			default:
				System.out.println("Invalid operation");
				return 0;
		}
	}
}
/*
1 - 0
2 - 1
3 - 2
4 - 3
*/
