/*
 * Ex01_4.java
 * 
 * Pedro Teixeira <pedro.teix@ua.pt> 
 * N. Mec 84715
 * MIECT - DETI UA
 */

import java.util.Scanner;
public class Ex01_4 {

	static Scanner read = new Scanner (System.in);

	public static void main(String[] args) {

		//UI Inicial
		System.out.printf("Tradutor de Português para o dialecto do Alberto Alexandre\n------------------------");
		System.out.printf("\n<Frase vazia termina>");

		String frase=null;

		do {
			//Leitura da frase
			System.out.printf("\nFrase de entrada -> ");
			frase=read.nextLine();
			if (frase.equals("")) break;		//Termina o programa se for detectada uma linha vazia
			
			//Obtenção da tradução
			String new_frase=getTranslation(frase);

			//Impressão do resultado
			System.out.printf("Frase traduzida -> %s\n", new_frase);
			
			
		} while (frase!=null);

	}

	//Função para traduzir de português para o dialecto do Alberto
	public static String getTranslation (String str) {
		String new_str="";

		for (int i=0; i<str.length(); i++) {
			char tmp=str.charAt(i);
			if (tmp=='L') new_str=new_str+'U'; 				//Se o caracter é L --> U
			else if (tmp=='l') new_str=new_str+'u';			//Se o caracter é l --> u
			else if (tmp=='r' || tmp=='R') {} 				//Se o caracter é r/R --> ignorado
			else {											//Restantes caracteres mantêm-se
				new_str=new_str+tmp;
			}						
		}

		return new_str;
	}

}