/**
 * Ex12_3_4
 * O ficheiro numbers.txt contém uma lista de números com as suas representações numéricas
 * e as suas descrições por extenso. Fazendo uso de um array associativo, escreva um programa
 * que traduza, palavra a palavra, todas as ocorrências por extenso de números pelo
 * respectivo valor numérico (mantendo todas as restantes palavras).
 * 
 * Copyright 2017, MIECT - DETI UA
 * @author Pedro Teixeira
 */

public class Ex12_3_4 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		NumberDictionary dictionary = new NumberDictionary("C:\\Users\\Pedro\\Documents\\Universidade de Aveiro\\Programação\\P2\\Aula 12\\numbers.txt");

		//dictionary.getDirectTranslation();
		dictionary.getSmartTranslation();
		System.exit(0);
	}
	
}
