import p2utils.*;
import static java.lang.System.*;
public class P101 {
	
	public static void main (String[] args) {
		String phrase="";
		if(args.length==1)
			phrase = args[0];
		else{
			if(args.length==0 || args[0] != "\"" ){
				err.println("Usage: java -ea P101 \"text\"");
				exit(1);
			}
			else
				for (int i = 0; i < args.length; i++){
					phrase = phrase + args[i];
				}
		}
		
		if(isPalindromo(phrase))
			out.println("\""+phrase+"\" is palindromo");
		else 
			out.println("\""+phrase+"\" is not palindromo");
		
	}
	
	public static boolean isPalindromo(String phrase){
		boolean b = true;
		Queue <Character> fila = new Queue<>();
		Stack <Character> pilha = new Stack<>();
		
		for (int i = 0; i < phrase.length(); i++){
			fila.in(phrase.charAt(i));
			pilha.push(phrase.charAt(i));
		}
		
		while(!fila.isEmpty() || !pilha.isEmpty()){
			if(!fila.peek().equals(pilha.top())) b=false;				
			fila.out();
			pilha.pop();
		}
		
		return b;
		
	
	}
	
	
}

