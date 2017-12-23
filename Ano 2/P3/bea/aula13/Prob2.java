package aula13;

import java.util.stream.Stream;

import aula13.prob2.DocumentAnalysis;

public class Prob2 {
	public static void main(String[] args) {
		DocumentAnalysis da = new DocumentAnalysis("resources/Policarpo.txt");
		Stream<String> words = da.stream();
		words.forEach(System.out::println);
		
		da.writePairsToFile("resources/Policarpo_pairs.txt");
	}
}
