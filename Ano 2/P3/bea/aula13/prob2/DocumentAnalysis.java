package aula13.prob2;

import java.io.IOException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.util.Set;
import java.util.List;
import java.util.TreeMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.stream.Stream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.Files;
import java.nio.charset.Charset;

public class DocumentAnalysis {
	
	// fields
	private List<String> words = new LinkedList<>();
	private TreeMap<String, TreeMap<String, Integer>> wordPairs = new TreeMap<>();
	
	// constructors
	public DocumentAnalysis(Path path) {
		documentToList(path);
		countWordPairs();
	}
	public DocumentAnalysis(String filepath) {
		this(Paths.get(filepath));
	}
	
	/**
	 * @return a stream containing all the words with 3 or more characters from the given file
	 */
	public Stream<String> stream() {
		return words.stream();
	}
	
	/**
	 * @return a Set containing all the word pairs (and the number of their occurrences)
	 */
	public Set<?> getWordPairsMap() {
		return wordPairs.entrySet();
	}
	
	/**
	 * @return String representation of this object
	 */
	public String toString() {
		Iterator<String> it = words.iterator();
		String wordPairsStr = "";
		while(it.hasNext()) {
			String currentWord = it.next();
			TreeMap<String, Integer> wordHashMap = wordPairs.get(currentWord);
			wordPairsStr += currentWord + "=" + wordHashMap + '\n';
		}
		return wordPairsStr;
	}

	/**
	 * Writes the information regarding the word pairs present in the file
	 * @param filepath Path to the file where the information should be written
	 */
	public void writePairsToFile(String filepath) {
		writePairsToFile(Paths.get(filepath));
	}
	/**
	 * Writes the information regarding the word pairs present in the file
	 * @param file Path to the file where the information should be written
	 */
	public void writePairsToFile(Path file) {
		Charset charset = Charset.forName("UTF-8");
		String s = toString();
		try (BufferedWriter writer = Files.newBufferedWriter(file, charset)) {
			writer.write(s, 0, s.length()); 
		} catch (IOException x) {
			System.err.format("IOException: %s%n", x); 
		}
	}
	
	/**
	 * Generates a HashMap containing all the word pairs and the number of times they occurred.
	 */
	private void countWordPairs() {
		int maxIndex = words.size() - 2;
		for(int i = 0; i < maxIndex; i++) {
			String currentWord = words.get(i);
			String nextWord = words.get(i + 1);
			
			TreeMap<String, Integer> wordHashMap = (wordPairs.containsKey(currentWord)) ? 
													wordPairs.get(currentWord) : new TreeMap<String, Integer>();
			int numberOfPairs = (wordHashMap.containsKey(nextWord)) ? wordHashMap.get(nextWord) : 0;
			wordHashMap.put(nextWord, numberOfPairs + 1);
			
			wordPairs.put(currentWord, wordHashMap);
		}
	}

	/**
	 * Generates a List containing all the words with 3 or mare characters from a given file,
	 * maintaining their original order.
	 */
	private void documentToList(Path filepath) {
		Charset charset = Charset.forName("UTF-8");
		try (BufferedReader reader = Files.newBufferedReader(filepath, charset)) {
			String line = null;
			while ((line = reader.readLine()) != null) {
				
				// separate words by \t\n.,:'‘’;?!-*{}=+&/()[]”“\"\'
				String[] wordsInLine = line.toLowerCase().split("[\\W]");
				
				for(String word : wordsInLine) {
					// remove if length(word) < 3
					if (word.length() > 2) {
						words.add(word);
					}
				}
			}
		} catch (IOException x) { 
			System.err.format("IOException: %s%n", x);
		}
	}
}
