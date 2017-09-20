/**
 * Ex10_1
 * Fa¸ca um programa que detecte se uma sequˆencia de letras e d´ıgitos ´e um pal´ındromo (ou
 * seja, se a sequˆencia lida do in´ıcio para o fim ´e igual `a sequˆencia lida do fim para o in´ıcio).
 * O programa deve ignorar todos os caracteres que n˜ao sejam letras ou d´ıgitos, assim como
 * ignorar a diferen¸ca entre mai´usculas e min´usculas. Por exemplo as frases: "somos" e "O
 * galo nada no lago" s˜ao pal´ındromos. Utilize uma pilha e uma fila para resolver este
 * problema.
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import java.util.Scanner;

import p2utils.Queue;
import p2utils.Stack;

public class Ex10_1 {

	public static void main(String[] args) {
		// read sequence

		// through args
		if (args.length >= 1)
			for (String str : args) {
				System.out.println("The string " + str + (isPalindrome(str)? " is" : " is not") + " a palindrome");
			}
		// through console
		else {
			Scanner read = new Scanner (System.in);
			String str = read.nextLine();
			isPalindrome(str);
		}

		System.exit(0);

	}

	/**
	 * Implementation with stack and queue
	 * @param argStr : String to verify
	 * @return true if the string is a palindrome, false if it is not
	 */

	public static boolean isPalindrome (String argStr) {
		Stack<Character> stack = new Stack<Character>();
		Queue<Character> queue = new Queue<Character>();
		argStr = argStr.toUpperCase();

		// save str char by char
		int len = argStr.length();
		for (int i = 0; i < len; i++) {
			char c = argStr.charAt(i);
			if (Character.isLetterOrDigit(c)) {  // ignores spaces
				stack.push(c);
				queue.in(c);
			}
		}

		/* Compares element j of the string with element j of the stack
		 * if they're equal all the way up to the end of the string, then the string is a palindrome */ 
		for (int j = 0; j < stack.size(); j++) {
			if (stack.top() != queue.peek()) {
				return false;
			}
			stack.pop();
			queue.out();

		} 
		return true;
	}

	/**
	 * Implementation with stack
	 * @param argStr : String to verify
	 * @return true if the string is a palindrome, false if it is not
	 */
	public static boolean isPalindrome_Stack(String argStr) {
		Stack<Character> stack = new Stack<Character>();
		argStr = argStr.toUpperCase();

		// save str char by char
		for (int i = 0; i < argStr.length(); i++) {
			char c = argStr.charAt(i);
			if (Character.isLetterOrDigit(c)) {  // ignores spaces
				stack.push(c);
			}
		}

		/* Compares element j of the string with element j of the stack
		 * if they're equal all the way up to the end of the string, then the string is a palindrome */ 
		for (int j = 0; j < argStr.length(); j++) {
			char c = argStr.charAt(j);
			if (Character.isLetterOrDigit(c)) {
				if (stack.top() != c) {
					return false;
				}
				stack.pop();
			}
		} 
		return true;
	}

}
