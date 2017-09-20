/*
 * Ex01_1.java
 * 
 * Pedro Teixeira <pedro.teix@ua.pt> 
 * N. Mec 84715
 * MIECT - DETI UA
 */

//System.err.*

import java.util.Scanner;

public class Ex01_1 {
	
	public static void main(String[] args) {
		Scanner read = new Scanner (System.in);
		
		//Ler operação	
		System.out.printf("Introduza a operação (<número> <operador> <número>, com as 3 partes separadas por espaços ou em linhas diferentes): ");
		
		double num1=read.nextDouble();
		
		String op = read.next();
		
		//Validação da operação
		if (!op.equals("+") && !op.equals("-") && !op.equals("*") && !op.equals("/")) System.err.printf("\nOperação Inválida");
		else {
			double num2=read.nextDouble();
			//Executar operação
			double res=0;
			switch (op) {
				case "+": 
					res=num1+num2;
					break;
				case "-":
					res=num1-num2;
					break;
				case "*":
					res=num1*num2;
					break;
				case "/":
					res=num1/num2;
					break;
			}
			
			//Imprimir operação
			System.out.printf("%f %s %f = %f", num1, op, num2, res);
		}
	}

}
