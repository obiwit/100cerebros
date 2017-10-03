/*
 * p61.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */


public class p61 {
	
	public static void main (String[] args) {
		System.out.println(fibonacci(1));
		System.out.println(fibonacci(2));
		System.out.println(fibonacci(3));
		System.out.println(fibonacci(4));
		System.out.println(fibonacci(5));
		System.out.println(fibonacci(6));
		System.out.println(fibonacci(7));
		System.out.println(fibonacci(8));
		System.out.println(fibonacci(9));
		System.out.println(fibonacci(10));
	}
	
	public static int fibonacci(int index) {
		if (index == 0) return 0;
		else if (index == 1) return 1;
		else return fibonacci(index-1) + fibonacci(index-2);
	}
}

