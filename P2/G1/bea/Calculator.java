/*
 * Calculator.java
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


public class Calculator {
	
	public static void main (String[] args) {
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter a number, an operation and another number: ");
		String[] calcInfo = input.nextLine().split(" ");
		
		// validade input
		if (calcInfo.length == 3) {
			// calculate and print result
			System.out.print(calculate(Double.parseDouble(calcInfo[0]), 
				calcInfo[1].charAt(0), Double.parseDouble(calcInfo[2])));
		} else if (calcInfo.length > 3) {
			System.err.print("Invalid input. Usage: number operation number");
		} else {
			char op = input.nextLine().charAt(0);
			double operand = Double.parseDouble(input.nextLine());
			// calculate and print result
			System.out.print(calculate(Double.parseDouble(calcInfo[0]), 
				op, operand));
		}
	}
	
	public static double calculate(double operand1, char op, double operand2) {
		switch(op) {
			case '+':
				return (operand1 + operand2);
			case '-':
				return (operand1 - operand2);
			case '*':
				return (operand1 * operand2);
			case '/':
				return (operand1 / operand2);
			default:
				return -1;
		}
	}
}

