/*
 * p62.java
 * 
 * Copyright 2017 Beatriz
 * 
 * 
 */


public class p63 {
	
	public static void main (String[] args) {
		String[] s = {"Hi", "There", "Ms.", "Jones"};
		printStringArray(s, 4);
	}
	
	public static void printStringArray(String[] s, int N) {
		if ((s.length < 1) || (N < 1)) {
			return;
		}
		else {		
			System.out.println(s[N-1]);
			printStringArray(s, N-1);	
		}
	}
}
