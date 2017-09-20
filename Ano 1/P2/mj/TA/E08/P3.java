import static java.lang.System.*;

public class P3 {

	public static void main(String[] args) {
		assert args.length != 0 : "java -ea P3 <word> <prefix>";
		
		for (int i = 0; i < args.length-1; i++){
			out.printf("'%s' is prefixed by '%s' -> %b\n", args[i], args[++i], isPrefix(args[i-1], args[i], 0));
			//nota: se se puser um 'S' maiusculo no printf as strings sao impressas em maiusculo
		}
	}
	
	
	public static boolean isPrefix(String word, String prefix, int i) {
		//word.startswith(prefix);
		if(prefix.equals("")) return true;
		if(word.length() < prefix.length()) return false;
		if(i == prefix.length()-1 && word.charAt(i) == prefix.charAt(i)) return true;
		if(word.charAt(i) == prefix.charAt(i)){
			return (true && (isPrefix(word, prefix, ++i)));
		}
		else return false;
	}
	
	

}

