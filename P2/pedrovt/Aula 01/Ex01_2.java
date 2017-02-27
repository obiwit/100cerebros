/*
 * Ex01_2.java
 * 
 * Pedro Teixeira <pedro.teix@ua.pt> 
 * N. Mec 84715
 * MIECT - DETI UA
 */

import java.util.Scanner;

public class Ex01_2 {

	public static void main(String[] args) {
		//UI Inicial
		System.out.printf("Cálculo da nota de Programação 2\n----------------------------\n");

		//Ler notas
		String message = "Introduza a nota do ";
		double[] notas = new double[6];
		notas[0] = getDoubleRange(message+"TPI1: ", 0, 20);
		notas[1] = getDoubleRange(message+"TPI2: ", 0, 20);
		notas[2] = getDoubleRange(message+"PG1: ", 0, 20);
		notas[3] = getDoubleRange(message+"PG2: ", 0, 20);
		notas[4] = getDoubleRange(message+"PG3: ", 0, 20);
		notas[5] = getDoubleRange(message+"EF: ", 0, 20);

		//Cálculo da nota final

		//Cálculo nota prática
		double pg = (notas[2] + notas[3] + notas[4])/3;
		double prat = 0;
		
		if (pg < (notas[5]-4)) 
			prat = 0.75*notas[5]+0.25*pg-1;
		
		else if (pg > (notas[5]+4)) 
			prat = 0.75*notas[5]+0.25*pg+1;

		else
			prat = 0.5*notas[5]+0.5*pg;
		
		double media = 0.2*((notas[0]+notas[1])/2)+0.8*prat;

		//Aprovado?
		String state;
		if (media >= 9.5) state = "Aprovado";
		else state = "REPROVADO";

		//Apresentar nota final + aprovação ou não
		System.out.printf("Nota Global: %.0f valores | %s", media, state);

	}

	//Ler nota com validação
	public static double getDoubleRange (String message, double lim1, double lim2) {
		Scanner read = new Scanner(System.in);

		double lim_superior=0, lim_inferior=0, n=0;
		if (lim1>lim2) {
			lim_superior=lim1; lim_inferior=lim2;
		} else if (lim1<lim2) {
			lim_superior=lim2; lim_inferior=lim1;
		}

		System.out.printf("%s", message);
		n=read.nextDouble();

		while ((n>lim_superior) || (n<lim_inferior)) {
			System.out.printf("\nTem de introduzir um valor pertencente ao intervalo [%d, %d]: ", lim_inferior, lim_superior);
			n=read.nextDouble();
		}

		return n;
	}

}
