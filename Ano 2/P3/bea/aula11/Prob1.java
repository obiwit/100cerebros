package aula11;

import java.util.HashMap;
import java.util.HashSet;
import java.util.TreeMap;
import java.util.stream.Collectors;

import aula11.prob1.StreamWordCounter;

/**
 * Prob1
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob1 {

	public static void main(String[] args) {
		long initialTime = System.currentTimeMillis();
		streamTest();
		System.out.println("Executed in " + ((System.currentTimeMillis() - initialTime)) + " milliseconds");
	}

	private static void streamTest() {
		
		String path = "resources/random_words.txt";

		StreamWordCounter s = new StreamWordCounter(path);

		System.out.println("\n\n----------------------------------------------------------------");
		System.out.println("---                       UNIQUE WORDS                       ---");
		System.out.println("----------------------------------------------------------------");
		HashSet<String> hashSet = new HashSet<>();
		hashSet.addAll(s.stream().collect(Collectors.toList()));
		hashSet.forEach(System.out::println);


		s = new StreamWordCounter(path);

		System.out.println("\n\n----------------------------------------------------------------");
		System.out.println("---                 UNORDERED COUNTED WORDS                  ---");
		System.out.println("----------------------------------------------------------------");
		HashMap<String, Integer> hashMap = new HashMap<>();
		s.stream().forEach(word -> { if(hashMap.containsKey(word)) {
			hashMap.put(word, hashMap.get(word) + 1);
		} else {
			hashMap.put(word, 1);
		} });
		hashMap.forEach((val, key) -> System.out.printf("%-20s %d\n", val, key));


		s = new StreamWordCounter(path);

		System.out.println("\n\n----------------------------------------------------------------");
		System.out.println("---                  ORDERED COUNTED WORDS                   ---");
		System.out.println("----------------------------------------------------------------");
		TreeMap<String, Integer> treeMap = new TreeMap<>();
		s.stream().forEach(word -> { if(treeMap.containsKey(word)) {
			treeMap.put(word, treeMap.get(word) + 1);
		} else {
			treeMap.put(word, 1);
		} });
		treeMap.forEach((val, key) -> System.out.printf("%-20s %d\n", val, key));
	}

}
