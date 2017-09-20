import static java.lang.System.*;

public class AllDivisors{

	public static void main(String[] args){
		assert args.length==1 : "Usage: java -ea AllDivisors <NUM>";
		
		int n = Integer.parseInt(args[0]);
		
		div(n);
		
	}
	
	public static void div(int n){
		for (int i = 2; i <= n/2; i++){
			if(n%i == 0){
				//out.println("n"+n);
				out.println(i);
				div(i);
			}
		}
	}
	
	public static void spaces(int n){
	
	}
	
}

