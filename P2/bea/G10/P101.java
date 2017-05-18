/*
 * P101.java
 * 
 * Copyright 2017 Beatriz Borges <bea@ubuntu>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

//import java.util.*;
import java.lang.*;
import p2utils.*;

public class P101 {
	
	public static void main (String[] args) {
		String a = "somos";
		String b = "O galo nada no lago";
		String c = "Imma build a whale";
		
		System.out.println(isPalindrome(a));
		System.out.println("----------------");
		System.out.println(isPalindrome(b));
		System.out.println("----------------");
		System.out.println(isPalindrome(c));
	}
	
	
	public static boolean isPalindrome(String s) {
		Stack<Character> stack = new Stack<Character>();
		Queue<Character> queue = new Queue<Character>();
		s = s.toUpperCase();
		int len = s.length();
		boolean flag = true;
		
		for(int i = 0; i < len; i++) {
			char c = s.charAt(i);
			if(Character.isLetterOrDigit(c)) {
				stack.push(c);
				queue.in(c);
			}
		}
		for(int i = 0; i < stack.size(); i++) {
			char c = s.charAt(i);
			if (stack.top() != queue.peek()) flag = false;
			stack.pop();
			queue.out();
		}
		return flag;
		
		/*/
		// only stack implementation
		Stack<Character> stack = new Stack<Character>();
		s = s.toUpperCase();
		int len = s.length();
		boolean flag = true;
		
		for(int i = 0; i < len; i++) {
			char c = s.charAt(i);
			if(Character.isLetterOrDigit(c)) stack.push(c);
		}
		
		for(int i = 0; i < len; i++) {
			char c = s.charAt(i);
			if(Character.isLetterOrDigit(c)) {
				if(stack.top() != c) flag = false;
				stack.pop();
			}
		}
		return flag;*/
	}
}
