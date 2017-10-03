package aula2.prob2;

import java.io.File;
import java.util.Scanner;

public class WordSearchSolver {

	// Fields
	private String[] puzzle;
	private String[] words;
	
	// Constructor
	public WordSearchSolver(String filePath) {
		try {
			// open file containing the puzzle
			File file = new File(filePath);
			Scanner sc = new Scanner(file);

			// get puzzle (array of the puzzle's lines)
			String firstLine = sc.nextLine();
			int puzzleSize = firstLine.length();
			
			puzzle = new String[puzzleSize];
			puzzle[0] = firstLine;
			
	        for (int i = 1; i < puzzleSize; i++) {
	        		puzzle[i] = sc.nextLine();
	        }

	        
	        // get words to find in the puzzle (array of upper-case words)
	        String temp = "";
	        while(sc.hasNextLine()) {
	        		temp += sc.nextLine() + " ";
	        }
	        words = temp.toUpperCase().split(", |; | |,|;");
	        
	        sc.close();
			
		} catch (Exception e) {
	        System.out.println("You provided an incorrect file path, or the file you provided was not readable.");
		}
	}
	
	// Methods
	/**
	 * Lists (on the console) the Word Puzzle, the words to find in it, and their starting position and direction
	 */
	public void listWordPuzzle() {
		
		System.out.println("Puzzle: ");
		for(String s : puzzle) {
			System.out.println("\t"+ s);
		}
		System.out.println("Words: ");
		for(String s : words) {
			System.out.println("\t"+ s + "\t|   " + solveWord(s));
		}
	}
	
	/**
	 * Finds the start position and direction of the given word in the word puzzle
	 * @param word word to find
	 * @return WordPosition object with the start position and direction of the given word in the word puzzle
	 */
	private WordPosition solveWord(String word) {
		int x = 0, y = 0;
		Direction wordDirection = Direction.notFound;
		
		 do {

			if (puzzle[y].charAt(x) == word.charAt(0)) {
				wordDirection = checkWord(word, x, y);
			}
				
			if (x+1 >= puzzle.length) {
				x = 0;
				y++;
			} else {
				x++;
			}
			
			if (y >= puzzle.length) break;
			
		}  while (wordDirection.equals(Direction.notFound));
		
		return new WordPosition(y+1, x, wordDirection); 
		// Various adjustments are made in the creation of this WordPosition Object
		// 1st, I used the conventional axis system in my solution, but the given solution 
		//		first indicates the y coordinate, and only then the x coordinate. As such, I
		//		switched my own coordinates to match the solution.
		// 2nd, both y and x have to be incremented by 1 to be convert to starting-at-one (as
		//		opposed to starting-at-zero) indexes
		// Finally, x has to be decremented by 1 in order to compensate the automatic increment
		// 		it gets with every iteration
	}
	
	/**
	 * Checks whether the given word can be found at the starting position given. If yes,
	 * returns the Direction in which it can be found, else returns Direction.notFound
	 * @param word the word to find
	 * @param x beginning x coordinate of the word
	 * @param y beginning y coordinate of the word
	 * @return Direction with the direction in which the word can be found; or Direction.notFound if it can't be found
	 */
	private Direction checkWord(String word, int x, int y) {
		int[] possibleDirection = {-1, 0, 1};
		int j = 0, k = 0;
		int currentY = y, currentX = x;
		// search every direction
		for (int i = 1; i < word.length(); i++) {  // for every direction, starting at the second character of the word
			
			int newYCoord = currentY+possibleDirection[j], newXCoord = currentX+possibleDirection[k];
			
			if ((newXCoord < 0 || newYCoord < 0) || (newXCoord >= puzzle.length || newYCoord >= puzzle.length) 
					|| (puzzle[newYCoord].charAt(newXCoord) != word.charAt(i))) { // fail conditions => reset variables
				i = 0; // i will be incremented at the end of this iteration,
					   // which means i will equal 1 at the beginning of the next iteration
				
				// return to original y and x values
				currentY = y; 
				currentX = x;
				
				// get next direction
				if (k < possibleDirection.length-1) {
					k++;
				} else if (j < possibleDirection.length-1) {
					j++; 
					k = 0;
				} else {
					return Direction.notFound;
				}
				
			} else {
				// keep going in this direction until we reach the end of the word or a fail scenario
				currentY = newYCoord;
				currentX = newXCoord;
			}
		}
		return Direction.coordsToDirection(possibleDirection[k], -possibleDirection[j]); // y increases as it goes down, but in
																					   // terms of direction, as it goes down
																					   // y decreases, so its signal must be inverted
	}

}