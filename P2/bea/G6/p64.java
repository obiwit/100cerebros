/*
 * p64.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */


public class p64 {
	
	public static void main (String[] args) {
		System.out.println(invertString("aeiou"));
		System.out.println(invertString("foram mil epopeias"));
		System.out.println(invertString("vidas tao cheias"));
		System.out.println(invertString("foram oceanos de amor"));
	}
	
	public static String invertString(String s) {
		if (s.length() <= 1) return s;
		return s.charAt(s.length() - 1) + invertString(s.substring(0, s.length() - 1));
	}
}

