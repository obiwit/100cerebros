import static java.lang.System.*;

public class P2 {
	
	public static void main(String[] args) {
		
		LinkedList<String> lst = new LinkedList<String>();

		for(int i = 0; i < args.length; i++) {
			lst.addLast(args[i]);
		}
		// --- CHAMADA PARA ITERATIVO ---
		//~ lst.print();
		//~ LinkedList<String> newList = invertDigits(lst);
		//~ newList.print();
		
		// --- CHAMADA PARA RECURSIVO --- Está assim, porque está tudo aqui na main ---
		lst.print();
		out.println("-------");
		LinkedList<String> newList = new LinkedList<String>();
		int i = 0;
		String result = "";
		while (newList.size() != lst.size()) {
			SortedList<Character> temp = new SortedList<Character>();
			newList.addLast(invertDigits(args[i], 0, temp));
			result = "";
			i++;
		}
		newList.print();
	}
			
		
	public static String toString(SortedList<Character> list) {
		if (list.size() == 0) {
			return "";
		}
		String string = "";
		while(list.size() != 0) {
			string += list.first();
			list.removeFirst();
			}
		return string;
	}

//--- ITERATIVO --------------------------------------------------------

	//~ public static LinkedList<String> invertDigits(LinkedList<String> lst) {
		//~ LinkedList<String> newList = new LinkedList<String>();
		//~ String result = "";
		//~ while (lst.size() != 0) {
			//~ SortedList<Character> temp = new SortedList<Character>();
			//~ if (lst.first() != null) {
				//~ String s = lst.first(); // to simplify following code
				//~ for (int i = 0; i < s.length(); i++) {
					//~ if (Character.isDigit(s.charAt(i))) {
						//~ temp.insert(s.charAt(i));
						//~ if (i == s.length() - 1) {
							//~ result += toString(temp);
						//~ }
					//~ }	
					//~ else {
						//~ result += toString(temp);
						//~ while(temp.size() != 0) {
							//~ temp.removeFirst();
						//~ }
						//~ result += s.charAt(i);
					//~ }
				//~ }
				//~ newList.addLast(result);
				//~ result = "";
			//~ }
			//~ lst.removeFirst();
		//~ }
		//~ return newList;	
	//~ }
	

// --- RECURSIVO -------------------------------------------------------
	
	public static String invertDigits(String s, int i, SortedList<Character> temp) {
		String result = "";
		if (i == s.length()) {
			result += toString(temp);
			return result;
		}
		else if (Character.isDigit(s.charAt(i))) {
			temp.insert(s.charAt(i));
			result += invertDigits(s, i+1, temp);
		}
		else {
			result += toString(temp);
			while(temp.size() != 0) {
				temp.removeFirst();
			}
			result += s.charAt(i);
			result += invertDigits(s, i+1, temp);
		}
		return result;	
	}

}

