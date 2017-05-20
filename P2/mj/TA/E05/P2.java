import static java.lang.System.*;

public class P2{
	public static void main(String[] args){
		for(int i = 0; i < args.length; i++)
			out.println("'"+args[i]+"'"+" contains "+ countPairs(args[i]) +" pairs of consecutive equal characters");	
	}
	
	public static int countPairs(String s){
		int count=0;
		for (int i = 0; i < s.length()-1; i++){
			if(s.charAt(i) == s.charAt(i+1)) count++;
		}
		return count;
	
	}
}

