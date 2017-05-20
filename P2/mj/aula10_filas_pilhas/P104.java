import static java.lang.System.*;
import java.util.Scanner;
import p2utils.*;
public class P104 {
	
	public static void main (String[] args) {
		Scanner in = new Scanner(System.in);
		
		out.println("Usage: n1 n2 op");
		String read = in.nextLine();

		//out.println(read);

		String [] array = read.split(" ");

		Stack <Double> pilha = new Stack<Double>();
			
		for (int i = 0; i < array.length; i++){
			//out.println(array[i]);
			if(isNumeric(array[i])){//se e numero
				//out.println(array[i]);
				pilha.push(Double.parseDouble(array[i]));
				out.println("Stack: "+pilha.print());
			}
			else{
				//out.println(isOp(array[i]));
				if(isOp(array[i])){				
					if(pilha.size() == 1){
						out.println("ERROR: one operand missing!");
						exit(1);
					}
					else{
						pilha = operation(array[i], pilha);
						out.println("Stack: "+pilha.print());
					}
				}
				else{
					out.println("ERROR: invalid operator!");
					exit(1);
				}
			
			}
		}
		
	}
	
	public static boolean isOp(String op){
		switch(op){
			case "+": 
			case "-": 
			case "*": 
			case "/": return true;
			default : return false;
			}
	}
	
	public static Stack<Double> operation(String op, Stack<Double> pilha){
		double n1 = pilha.top();
		pilha.pop();
		double n2 = pilha.top();
		pilha.pop();
		
		switch(op){
			case "+": pilha.push(n1+n2);
					  break;
			case "-": pilha.push(n1-n2);
					  break;
			case "*": pilha.push(n1*n2);
					  break;
			case "/": pilha.push(n1/n2);
					  break;
			default : out.println("ERROR: invalid operator!");
					  exit(1);
			}
		return pilha;
	}
	
	public static boolean isNumeric(String str)  {  
		try  {  
			double d = Double.parseDouble(str);  
		}  
		catch(NumberFormatException nfe){  
			return false;  
		}  
		return true;  
	}
}

