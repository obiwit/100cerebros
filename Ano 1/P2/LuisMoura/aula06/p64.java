public class p64 {
	
	public static void main (String[] args) {
	
		for(int i = 0; i < args.length; i++) {
			System.out.print(invertString(args[i]));
			System.out.print("\n");
		}	
	}
	
	//~ public static String invertString(String args) {
		//~ String iStr = args;
		//~ String temp = "";
		//~ char lastLetter = iStr.charAt(iStr.length() - 1);
		//~ for (int i = 0; i < iStr.length() - 1; i++) {
			//~ temp += iStr.charAt(i);
		//~ }
		//~ if (temp.length() > 0) {
			//~ iStr = lastLetter + invertString(temp);
		//~ }
		//~ return iStr;
	//~ }

	public static String invertString(String s) {
		if (s.length() <= 1) return s;
		return s.charAt(s.length() - 1) + invertString(s.substring(0, s.length() - 1));
}
}

