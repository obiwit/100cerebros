package bloco_01;

import java.util.Stack;
import java.util.Queue;
import java.util.Scanner;
import java.util.LinkedList;

public class ex_2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while(true) {
			Stack<Double> operandsStack = new Stack<>();
			Queue<String> operationsStack = new LinkedList<String>();
			
			System.out.print("1337 Reverse Polish Notation Calculator... enter an operation below\n -> ");

			
			try {
				String[] in = sc.nextLine().split(" ");
	
				// process input
				for(int i = 0; i < in.length; i++) {
					
					if (in[i].matches("-?\\d+(\\.\\d+)?")) {
						System.out.println( (i != 0)? "Stack: " + operandsStack : "");;
						operandsStack.push(Double.parseDouble(in[i]));
					}
					else {
						for (int j = i; j < in.length; j++) {
							operationsStack.add(in[j]);
						}
						break;
					}
					
				}
				
				// calculate output
				while(!operationsStack.isEmpty()) {
					System.out.println("Stack: " + operandsStack);
					String operator = operationsStack.remove();
					switch(operator) {
					case "+":
						operandsStack.push(operandsStack.pop() + operandsStack.pop());
						System.out.println("Stack: " + operandsStack);
						break;
					case "-":
						operandsStack.push(operandsStack.pop() - operandsStack.pop());
						System.out.println("Stack: " + operandsStack);
						break;
					case "/":
						operandsStack.push(operandsStack.pop() / operandsStack.pop());
						System.out.println("Stack: " + operandsStack);
						break;
					case "*":
						operandsStack.push(operandsStack.pop() * operandsStack.pop());
						System.out.println("Stack: " + operandsStack);
						break;
					default:
						System.err.println("Wrong usage - unsupported operation.");
					}
				}
				System.out.println("\n"); // esthetic reasons
				
			} catch(Exception e) {
				System.err.println("Wrong usage - unsupported format.");
				sc.close();
			}
		}
	}

}