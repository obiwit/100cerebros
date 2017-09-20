/*
 * p62.java
 * 
 * Copyright 2017 Beatriz
 * 
 * 
 */


public class p62 {
	
	public static void main (String[] args) {
		String[] s = {"Hi", "There", "Ms.", "Jones"};
		printStringArray(s, 3);
	}
	
	public static void printStringArray(String[] s, int N) {
		if (N > 1) printStringArray(s, N-1);			
		System.out.println(s[N-1]);
	}
}

