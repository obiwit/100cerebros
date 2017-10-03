/**
 * Ex10_4
 * 
 * Sempre que aparece um operando (número) ele é carregado
 * para a pilha. Sempre que aparece um operador (binário), são retirados os dois últimos
 * números da pilha e o resultado da operação é colocado na pilha. Se a pilha não tiver o
 * número de operandos necessário, então há um erro sintáctico na expressão.
 * O programa deve ler os operandos e os operadores como palavras (strings separadas
 * por espaços) lidas do standard input. 

 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import java.util.Scanner;

import p2utils.Stack;

public class Ex10_4 {

	static Stack<Double> calculator; 

	public static void main(String[] args) {
		calculator = new Stack<Double>();

		// read stuff from args if args are given
		if (args.length > 0) {
			for (String i : args) {
				System.out.println(i);
				
				// read numbers
				try {			
					double num = Double.parseDouble(i);			
					pushNumber(num);
				} catch (NumberFormatException e) {
					// read operations
					if (!isValidOperation(i)) {
						System.err.println("ERROR: Invalid operator!");
						System.exit(-1);
					} 
					runOperation(i);
					
					/*switch (i) {		// this solution isn't as elegant as isValidOperation method
					case "+" :
					case "-" :
					case "*" :
					case "/" :
						runOperation(i);
						break;
					default:
						System.err.println("ERROR: Invalid operator!");
						System.exit(-1);
					}
					 */
				}
			}
			System.exit(0);
		}	
		
		// otherwise reads from console
		Scanner inScanner = new Scanner(System.in);
		while (inScanner.hasNext()) {
			// gets numbers
			if (inScanner.hasNextDouble()) {
				pushNumber(inScanner.nextDouble());
			}
			else {
				String op = inScanner.next();
				if (!isValidOperation(op)) {
					System.err.println("ERROR: Invalid operator!");
					System.exit(-1);
				} 
				runOperation(op);
			}
		}
		System.exit(0);
	}

	/** Puts a number in the stack
	 * @param argNum : number to be pushed to the stack 
	 */
	public static void pushNumber (Double argNum) {
		calculator.push(argNum);
		System.out.println("Stack: " + calculator);
		
		assert !calculator.isEmpty() : "Stack can't be empty";
	}
	
	/**
	 * Verifies if the given symbol is the symbol of a valid algebric operation
	 * @param argOp : symbol to verify
	 * @return {@code true} if argOp is + (addition), - (subtraction), * (multiplication) or / (division), otherwise {@code false}
	 */
	public static boolean isValidOperation (String argOp) {
		return argOp.equals("+") || argOp.equals("-") || argOp.equals("*") || argOp.equals("/");
	}
	
	/** Runs operation between the 2 oldest numbers in the stack and pushes it to the stack
	 * 
	 * @param argOp : Symbol of the algebric operation to be done 
	 * (+ addition, - subtraction, * multiplication, / division)
	 */
	public static void runOperation (String argOp) {
		assert isValidOperation(argOp) : "Invalid operator";  

		// Get operands
		if (calculator.isEmpty()) {
			System.err.println("ERROR: two operands missing!");
			System.exit(-2);
		}

		double op1 = calculator.top();
		calculator.pop();

		if (calculator.isEmpty()) {
			System.err.println("ERROR: one operand missing!");
			System.exit(-2);
		}

		double op2 = calculator.top();
		calculator.pop();

		// Calculates result
		double result = 0.0;

		switch (argOp) {
			case "+" : 
				result = op1 + op2;
				break;
			case "-" : 
				result = op1 - op2;
				break;
			case "*" :
				result = op1 * op2;
				break;
			case "/" :
				if (op2 == 0) {
					System.err.println("ERROR: divide by zero!");
					System.exit(-3);
				}
				result = op1 / op2;
				break;
		}

		// Puts results in the stack
		pushNumber(result);
	}
}
