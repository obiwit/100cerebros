package g11.prob1.ex1bcd;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * CountWords
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class CountWords {

	// Instance Fields
	private Set<String> set;
	private Map<String, Integer> map;
	private int countWords;

	// Constructors
	/**
	 * Constructor
	 */
	public CountWords() {
		set = new HashSet<>();
		map = new HashMap<>();
	}

	// Getters
	public Map<String, Integer> getWordCount(String... op) {
		if (op.length == 1 && op[0].equalsIgnoreCase("Ordered")) return new TreeMap<String, Integer>(map);
		return new HashMap<>(map);
	}

	/**
	 * 
	 * @return
	 */
	public Set<String> getDifferentWords() {
		return new HashSet<>(set);
	}

	public int getCountWords() {
		return countWords;
	}

	// Setters
	/**
	 * Adds a word
	 * @param word
	 */
	public void addWord (String word) {
		countWords++;
		set.add(word);
		if (map.containsKey(word)) map.put(word, map.get(word) + 1);
		else map.put(word, 1);
	}

	// Other methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CountWords [set=");
		builder.append(set);
		builder.append("\n, map=");
		builder.append(map);
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((map == null) ? 0 : map.hashCode());
		result = prime * result + ((set == null) ? 0 : set.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		CountWords other = (CountWords) obj;
		if (map == null) {
			if (other.map != null) {
				return false;
			}
		} else if (!map.equals(other.map)) {
			return false;
		}
		if (set == null) {
			if (other.set != null) {
				return false;
			}
		} else if (!set.equals(other.set)) {
			return false;
		}
		return true;
	}

}
