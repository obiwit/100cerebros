package g11;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

import g11.prob1.ex1bcd.CountWords;

/**
 * Ex1bc
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob1bcd {

	public static void main (String[] args) throws FileNotFoundException {
		long initialTime = System.currentTimeMillis();

		// Read file
		/*
		System.out.print("File Path -> ");
		Scanner sc = new Scanner(System.in);
		String path = sc.next();
		 */
		String path = "fileTest.txt";

		Scanner scFile = new Scanner(new File(path));

		CountWords c = new CountWords();
		while (scFile.hasNext()) {
			c.addWord(scFile.next());
		}

		Set<String> differentWords = c.getDifferentWords();
		Map<String, Integer> countWords = c.getWordCount();
		Map<String, Integer> countWordsOrdered = c.getWordCount("Ordered");

		System.out.println("Número Total de Palavras: " + c.getCountWords());
		System.out.println("Número de Palavras Diferentes: " + differentWords.size());

		System.out.println("----------------------------\nPalavras Diferentes: ");
		differentWords.forEach(s -> System.out.println(s));

		System.out.println("----------------------------\nContagem de Palavras: ");
		countWords.forEach((s, v)-> System.out.println(s + "\t" + v));

		System.out.println("----------------------------\nContagem de Palavras (Ordered): ");
		countWordsOrdered.forEach((s, v)-> System.out.println(s + "\t" + v));

		scFile.close();
		System.out.println("Executed in " + ((System.currentTimeMillis() - initialTime)) + " milliseconds");
	}
}
