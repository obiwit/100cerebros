package g2.lettersSoup;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.LinkedList;
import java.util.Scanner;

/**
 * LettersSoup
 * 
 * @author Pedro Teixeira, 84715, MIECT
 * 		   pedro.teix@ua.pt
 */

public class LettersSoup {

	// Instance Fields
	private char[][] soup;
	private LinkedList<String> wordsToSearch;

	// Constructor
	/**
	 * 
	 * Constructor
	 * 
	 * @param filePath Path to the file to be read
	 */
	public LettersSoup(String filePath) {
		readFile(filePath);
	}

	// Methods
	/** 
	 * Solves the letter soup.
	 */
	public void solve() {
		for (String word: wordsToSearch) {
			System.out.println(word.toUpperCase() + "  " + solve(word.toUpperCase()));
		}
	}

	// Private/Auxiliary Methods
	/**
	 * Solves the letter soup for a given word
	 * @param word
	 * @return an empty {@code String} if the word is not found, else the position (line, column) of the first char and the direction, relatively to the first char, the word can be found.
	 */
	private String solve(String word) {
		// Search for the first char (chartAt(0)) of the word in the soup
		for (int i = 0; i < soup.length; i++) {
			for (int j = 0; j < soup.length; j++) {
				if (soup[i][j] == word.charAt(0)) { 	// First char found
					// For testing purposes
					// System.out.println("############################");
					// System.out.println(i + "," + j);

					/* Verifies if, starting in the (i,j) position, 
					 * the whole word exists in the soup,
					 * in one of the 8 possible directions
					 */
					for (int k = 0; k < 8; k ++) {
						//System.out.println(Direction.values()[k]);

						// If the whole word exists
						if (searchWord(word.toUpperCase(), String.valueOf(soup[i][j]), i, j, k)) {
							//System.out.print("true for " + i + "," + j + " ");

							/* Returns the position of the first char and the direction in which
							 * the word can be found in the soup
							 * i+1 and j+1 since line and column #1 is */ 
							return (i+1) + "," + (j+1) + " " + Direction.values()[k];		
						}
					}
					// System.out.println("\nfalse for " + i + "," + j + " ");
				}
			}
		}
		return "";
	}

	/**
	 * Searches for a word in the given directions.
	 * 8 Directions are possible. 
	 * Going to the next position in the letters soup means an increment/decrement of incrementLine positions in the vertical and of incrementCol positions in the horizontal.
	 *  
	 * 	UP								| incrementLine = -1 ; incrementCol =  0
	 * 	DOWN							| incrementLine = +1 ; incrementCol =  0
	 * 	LEFT							| incrementLine =  0 ; incrementCol = -1
	 * 	RIGHT							| incrementLine =  0 ; incrementCol = +1
	 *  DIAG_LEFT_UP    <=> UPLEFT		| incrementLine = -1 ; incrementCol = -1
	 *  DIAG_LEFT_DOWN  <=> DOWNLEFT	| incrementLine = +1 ; incrementCol = -1
	 *  DIAG_RIGHT_UP   <=> UPRIGHT		| incrementLine = -1 ; incrementCol = +1
	 *  DIAG_RIGHT_DOWN <=> DOWNRIGHT	| incrementLine = +1 ; incrementCol = +1
	 * 
	 * @param word			word to search
	 * @param currentWord	auxiliary string that is "built" during the recursive calls. See {@link LettersSoup#searchWord(String, String, int, int, int, int)}
	 * @param line			integer representing the number of the line (being line 1 <=> line = 0)
	 * @param col			integer representing the number of the line (being column 1 <=> column = 0)
	 * @param direction		integer representing the number of the line (between 0 and 8)
	 * @return	{@code true} if the word is found in the soup for the given direction and starting with the char in the position (line, col), else {@code false}
	 */
	private boolean searchWord (String word, String currentWord, int line, int col, int direction) {
		switch (direction) {
			case 0:		// UP
				return searchWord(word, currentWord, line, col, -1,  0).equals(word);
			case 1:		// DOWN
				return searchWord(word, currentWord, line, col,  1,  0).equals(word);
			case 2:		// LEFT
				return searchWord(word, currentWord, line, col,  0, -1).equals(word);
			case 3:		// RIGHT			
				return searchWord(word, currentWord, line, col,  0,  1).equals(word);
			case 4:		// DIAG_LEFT_UP	   <=> UPLEFT
				return searchWord(word, currentWord, line, col, -1, -1).equals(word);
			case 5:		// DIAG_LEFT_DOWN  <=> DOWNLEFT	
				return searchWord(word, currentWord, line, col,  1, -1).equals(word);
			case 6:		// DIAG_RIGHT_UP   <=> UPRIGHT
				return searchWord(word, currentWord, line, col, -1,  1).equals(word);
			case 7:		// DIAG_RIGHT_DOWN <=> DOWNRIGHT
				return searchWord(word, currentWord, line, col,  1,  1).equals(word);
		}
		return false;
	}

	/**
	 * 
	 * @param word			word to search
	 * @param currentWord	auxiliary {@code String} that is "built" during the recursive calls
	 * @param line			integer representing the number of the line (being line 1 <=> line = 0)
	 * @param col			integer representing the number of the line (being column 1 <=> column = 0)
	 * @param incrementLine horizontal increment needed to go to the next adjacent position
	 * @param incrementCol	vertical   increment needed to go to the next adjacent position
	 * @return the word if the word is found, an empty {@code String} if the word is not found
	 */
	private String searchWord (String word, String currentWord, int line, int col, int incrementLine, int incrementCol) 	{
		// For testing purposes 
		// System.out.println("----------\nWORD: " + word + "\nCURRENTWORD: " + currentWord);
		// System.out.println("WORD SUBSTRING: "  + word.substring(0, currentWord.length()));
		// System.out.println("line= " + line + " column= " + col);


		/* Terminal Conditions:
		 * 1. Line or column to read is outside the limits of the soup letter. The word is not found. 
		 * 2. The auxiliary String currentWord is equal to the word being searched. The word is found.
		 * 3. The auxiliary String currentWord is not equal to a substring of the word being searched. The word is not found.
		 */  
		if (line + incrementLine < 0 || col + incrementCol < 0 || line + incrementLine > soup.length - 1 || col + incrementCol > soup.length - 1) return "";
		if (currentWord.equals(word)) return currentWord;
		if (!currentWord.equals(word.substring(0, currentWord.length()))) return "";

		// Concatenates the auxiliary String with the char in the next adjacent position
		else 
			currentWord += soup[line + incrementLine][col + incrementCol];

		return searchWord(word, currentWord, line + incrementLine, col + incrementCol, incrementLine, incrementCol);

	}

	/**
	 * Reads a text file containing the letters soup and the words to 
	 * search and saves the info in the apropriated instance fields.
	 * @param filePath Path to the file to be read
	 * @throws FileNotFoundException
	 * @throws IllegalStateException
	 */
	private void readFile(String filePath) {
		File file = new File(filePath);

		try {
			Scanner read = new Scanner(file);
			int numChars = 0;
			wordsToSearch = new LinkedList<>();	//LinkedList since the number of words to search is unknown

			// ----------------------------
			// Reads number of chars to initialize instance field soup 
			// and reads the words to search to the LinkedList wordsToSearch
			try {
				while (read.hasNextLine()) {
					String line = read.nextLine();
					if (line.toUpperCase().equals(line))
						numChars = line.length();
					else {
						// add words
						String[] words = line.split(", |; | ");
						for (String word : words)
							wordsToSearch.add(word);
					}
				} 
			} catch (IllegalStateException e) {
				System.err.println("I/O Error.");
			}


			soup = new char[numChars][numChars];
			read.close();

			// ----------------------------
			// Read chars to field soup
			read = new Scanner(file);
			int lineNum = 0;

			while(read.hasNextLine()) {
				String line = read.nextLine();
				if (line.toUpperCase().equals(line)) {
					for (int j = 0; j < numChars; j++) {
						soup[lineNum][j] = line.charAt(j);
					}
					lineNum++;
				}
			}

			read.close();

		} catch (FileNotFoundException e) {
			System.err.println("I/O Error. File not found.");
		}

	}

	// For testing purposes
	@SuppressWarnings("unused")
	private void printArray() {
		System.out.println(wordsToSearch);
		System.out.println(wordsToSearch.size());
		for (int i = 0; i < soup.length; i++) {
			for (int j = 0; j < soup.length; j++) {
				System.out.println("soup[" + i + "][" + j + "]=" + soup[i][j]);
			}
		}
	}	
}

/**
 * 
 * Direction
 * @author Pedro Teixeira, 84715, MIECT
 */
enum Direction {
	UP, DOWN, LEFT, RIGHT, UPLEFT, DOWNLEFT, UPRIGHT, DOWNRIGHT;
}
