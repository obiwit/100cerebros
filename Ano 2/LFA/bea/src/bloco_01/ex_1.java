package bloco_01;

import java.util.Scanner;

public class ex_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.print("1337 Calculator... enter an operation below [ <num> <+|-|/|*> <num> ]\n -> ");
			String[] in = sc.nextLine().split(" ");
			try {
				String operator = in[1];
				switch(operator) {
				case "+":
					System.out.println(Double.parseDouble(in[0]) + Double.parseDouble(in[2]));
					break;
				case "-":
					System.out.println(Double.parseDouble(in[0]) - Double.parseDouble(in[2]));
					break;
				case "/":
					System.out.println(Double.parseDouble(in[0]) / Double.parseDouble(in[2]));
					break;
				case "*":
					System.out.println(Double.parseDouble(in[0]) * Double.parseDouble(in[2]));
					break;
				default:
					System.err.println("Wrong usage - unsupported format.");
				}
			} catch(Exception e) {
				System.err.println("Wrong usage - unsupported format.");
				sc.close();
			}
		}
	}
	
}
