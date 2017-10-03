package aula1.prob1;

public class StringHelper {
	// Fields
	private String s;
	private int length; // for efficiency purposes

	// Constructor
	public StringHelper(String s) {
		this.s = s;
		length = s.length();
	}
	
	// Methods
	public int numericChars() {
		int numericCharNum = 0;
		
		for(int i = 0; i < length; i++) {
			if (Character.isDigit(s.charAt(i))) {
				numericCharNum++;
			}
		}
		
		return numericCharNum;
	}
	
	public boolean isUpperCase() {
		return s.equals(s.toUpperCase());
	}
	
	public boolean isLowerCase() {
		return s.equals(s.toLowerCase());
	}
	
	public int numWords() {
		return s.split(" ").length;
	}
	
	public String twoCharSwitchedString() {
		String switched = "";
		
		for(int i = 0; i+1 < length; i+=2) {
			switched += s.charAt(i+1);
			switched += s.charAt(i);
		}
		
		if (length % 2 != 0) switched += s.charAt(length - 1);
		
		return switched;
	}

}