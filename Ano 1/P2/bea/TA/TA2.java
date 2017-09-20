/*
 * TA2.java
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

import java.util.*;
import static java.lang.System.*;

public class TA2 {
	
	public static void main (String[] args) {
		
		// invertDigits
		String[] strings = {"1234", "abc9876cba", "a123", "312asd", "a12b34c56d"};
		for (String s : strings) {
			out.printf("%s -> %s\n", s, invertDigits(s, 0));
		}
		out.printf("\n\n");
		
		// factors
		int[] nums = {0, 1, 10, 4, 10002};
		for (int n : nums) {
			out.printf("%d -> %s\n", n, factors(n));
		}
		out.printf("\n\n");
		
		// countPairs
		String[] strs = {"112233", "aaaa", "a", "abba", "sfffsff"};
		for (String s : strs) {
			out.printf("%s -> %s\n", s, countPairs(s, 0));
		}
		out.printf("\n\n");
		
		// allDivisors
		int[] ns = {12, 23, 81, 32};
		for (int n : ns) {
			allDivisors(n, 0);
			out.printf("\n\n");
		}
		out.printf("\n\n");
		
		// unitaryFractionSum
		int[][] fractions = {{3,4}, {3,7}, {1,8}, {2,20}, {4, 5}};
		for (int[] f : fractions) {
			out.printf("%d/%d = %s\n", f[0], f[1], unitaryFractionSum(f[0], f[1]));
		}
		out.printf("\n\n");
		
		// isPrefix
		out.println("'de' is prefix of 'dedo' : " + isPrefix("de", "dedo", 0));
		out.println("'sim' is prefix of 'assim' : " + isPrefix("sim", "assim", 0));
		out.println("'sd' is prefix of 's' : " + isPrefix("sd", "s", 0));
		out.println("'f' is prefix of 'ff' : " + isPrefix("f", "ff", 0));
		out.println("'tudo' is prefix of '' : " + isPrefix("tudo", "", 0));
		out.println("'' is prefix of 'nada' : " + isPrefix("", "nada", 0));
	}
	
	public static String invertDigits(String toInvert, int index) {
		int len = toInvert.length();
		if(index == len - 1) { return Character.toString(toInvert.charAt(index)); }
		
		if (!Character.isDigit(toInvert.charAt(index))) { 
			return toInvert.charAt(index) + invertDigits(toInvert, index+1);
		}
		// if only digits, and next char is also a digit
		if (index != (len - 1) && Character.isDigit(toInvert.charAt(index+1))) { 
			return invertDigits(toInvert, index+1) + toInvert.charAt(index);
		}
		// only digits, but next char is not a digit
		return Character.toString(toInvert.charAt(index));

	}
	
	public static String factors(int num) {
		for(int i = 2; i <= num; i++) {
			if (num == i) return Integer.toString(i);
		    if (num % i == 0) return i + " * " + factors(num/i);
		}
		return "";
	}
	
	public static int countPairs(String s, int index) {
		if(index == s.length() - 1) { return 0; }
		if (s.charAt(index) == s.charAt(index+1)) return 1 + countPairs(s, index+1);
		return countPairs(s, index+1);
	}
	
	public static void allDivisors(int num, int degree) {
		String spaces = "";
		for (int i = 0; i < degree; i++) { spaces += "  "; }
		out.println(spaces + num);
		
		for(int i = num/2; i > 1; i--) {
		    if (num % i == 0) allDivisors(i, degree+1);
		}
	}
	
	public static String unitaryFractionSum(int num, int den) {
		if (den % num == 0) return "1/" + den/num;
		int d = (int)Math.ceil((double)den/num);
		return "1/" + d + " + " + unitaryFractionSum(Math.abs(num*d - den), d * den);
	}
	
	public static boolean isPrefix(String prefix, String s, int index) {
		if (s.length() < prefix.length()) return false;
		if (index == prefix.length()) return true;
		if (prefix.charAt(index) == s.charAt(index)) 
			return isPrefix(prefix, s, index+1);
		return false;
	}
}

