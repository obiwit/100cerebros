package e14;
import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class JustifiedText {

	public static void main(String[] args){

		if (args.length != 2) {
			err.println("Usage: java -ea JustifiedText <NUM-COLUMNS> <FILE>");
			exit(1);
		}

		// Read arguments: length and file name
		else {
			try {
				int  length  = Integer.parseInt (args[0]);
				File inFile  = new File (args[1]);
				Scanner inSc = new Scanner (inFile); 
				justifyText(inSc, length);
				exit(0);
			} catch (NumberFormatException e) {
				err.println("ERROR: argument " + args[0] + " is not an integer number!");
				exit(2);
			} catch (IOException e) {
				err.println("ERROR in file " + args[1] + ": read failure!");
				exit(3);
			}
		}
	}
	
	/**
	 * Justifies the (text) content in the Scanner (a {@code String}, a {@code File})
	 * creating lines with the specified length.
	 * @param sc	 Scanner
	 * @param length Desired length of the lines
	 */
	public static void justifyText (Scanner sc, int length) {
		// Read words to queue
		Queue<String> line = new Queue<>();
		String word, toPrint = "";
		int totalLength = 0, missingChars = 0, spaceSize = 0, currentJustWordsLength = 0, justWordsLength = 0;

		while (sc.hasNext()) {
			word = sc.next();
			//System.out.println(word);
			
			/* Total length of words if the new word + 1 space 
			 * (minimum between 2 words) is inserted in the queue */ 
			totalLength    += word.length() + 1;		
			
			/* Current total of the length of words (without considering spaces) 
			 * ALREADY inserted in the queue */ 
			currentJustWordsLength = justWordsLength;
			
			/* Total of the length of words (without considering spaces) 
			 * if the new word is inserted in the queue  */
			justWordsLength 	  += word.length();

			/* If there's still space in the line (ie totalLength is 
			 * inferior to desired length) the word is inserted in the queue */
			// System.out.println("CURRENTLENGTH: " + currentLength + " NEW LENGTH: " + newLength);
			if (totalLength - 1 <= length) {
				//System.out.println("INSERT " + word);
				line.in(word);
			}

			/* else, if there's not more space in the line
			 * the line is created and printed */
			else { 
				missingChars = length - currentJustWordsLength;
				//System.out.println("Desired Length: " + length + " CurrentLength: " + currentJustWordsLength + " MissingChars: " +missingChars + " Queue size (num of words): " + line.size());
				
				if (!(line.size() <= 1) && missingChars != 0) {
					spaceSize = (int) missingChars/(line.size() - 1);
					//System.out.println(s);
					//System.out.println(missingChars - spaceSize);
				}
				else spaceSize = 1;
				
				//System.out.println(spaceSize);
				
				while (!line.isEmpty()) {
					toPrint += line.peek();
					for (int i = 0; i < spaceSize; i++) toPrint += " ";
					line.out();
					
					/* Adds a space before the last word (line.size = 1) 
					 * if needed (only if the spaceSize * numWords - 1 
					 * + totalLength < length) 
					 */
					if (line.size() == 1 && toPrint.length() + line.peek().length() < length) {
						int j = toPrint.length() + line.peek().length();
						for (; j < length; j++) toPrint += " "; 
				}}
				
				out.println(toPrint);
				//out.println("-----------");
				
				// Reinicialize variables for new line (queue is empty by now)
				missingChars    = 0;
				spaceSize       = 0;
				toPrint 	    = "";
				
				// Adds the still unprocessed word/its length to the queue/variables
				line.in(word);
				currentJustWordsLength = word.length();
				justWordsLength 	   = word.length();
				totalLength 	       = word.length() + 1;
			}
		}

	/* Tests (TO REMOVE) ===================================================================
	public static String[] parseText (Scanner sc) {
		LinkedList<String> list = new LinkedList<>();
		while (sc.hasNext()) {
			String word = sc.next();
			list.addLast(word);
		}

		String listStr = list.toString("", " ", "");
		String[] contents = listStr.split(" ");

		return contents;

	}

	public static void justifyText (String[] fileContents, int length) {
		// Read words to queue
		Queue<String> line = new Queue<>();
		String toPrint = "";
		int currentLength = 0, newLength = 0, missingChars = 0, spaceSize = 0;

		for (String word : fileContents) {	
			currentLength = newLength;				// total length of words already in queue line
			newLength    += word.length() + 1;		// total length of words if the new word + 1 space (minimum space) is inserted in queue line

			// if there's still space in the line (ie newLength is inferior to desired length)
			// the word is inserted in the queue
			// problem --> not inserting all words in queue
			//  idea: read all text first?
			if (newLength < length) {
				line.in(word);
			}

			// if there's not more space in the line
			// the line is created and printed
			else { 
				missingChars = length - currentLength;
				if (!line.isEmpty()) spaceSize = missingChars/line.size();
				while (!line.isEmpty()) {
					toPrint += line.peek();
					for (int i = 0; i < spaceSize; i++) toPrint += " ";
					line.out();
				}
				out.println(toPrint);

				// reinicialize
				currentLength = 0;
				newLength 	  = 0;
				missingChars  = 0;
				spaceSize     = 0;
				word    = "";
				toPrint = "";
			}
		}
		 */
	}
}