import static java.lang.System.*;

public class Factors{
	public static void main(String[] args){
		for(int i = 0; i < args.length; i++)
			out.println(args[i]+" = "+factors(Integer.parseInt(args[i])));	
	}
	
	public static String factors(int n){
		if(n==1) return "1";
		if(isPrime(n)) return n+"";
		else{
			int primo = primeDiv(n);
			if(n%primo==0) return(primo+"*"+ factors(n/primo));
		}
		
		return("?");
		
	}
	
	//se n for primo retorna true
	public static boolean isPrime(int n){
		if(n == 2) return true;
		else if(n > 2){ 
			for(int i=2; i<n; i++)   { 
				if (n%i == 0) return false;
				if(i == n-1) return true;
			}
		}
		return false;
	}
	
	//retorna o nº primo q div M
	public static int primeDiv(int M){
		for(int x = 2; x <= (M/2); x++){ 	
			if(x == 2 && M%x==0) return x;
			if(x > 2){
				for(int i=2; i<x; i++){ 
					if (x%i==0 ) return -1;;
					if(i==x-1 && M%x==0) return x;   
				}
			} 
		}
		return -1;
	}
}

