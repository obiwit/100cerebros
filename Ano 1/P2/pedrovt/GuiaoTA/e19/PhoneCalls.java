package e19;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class PhoneCalls {

	public static void main(String[] args){
		long startTime = System.nanoTime();
		// Fields
		HashTable<String> names	= null;		   
		HashTable<HashTable<LinkedList<Integer>>> receivedCalls = new HashTable<>(10000);
		HashTable<HashTable<LinkedList<Integer>>> sentCalls     = new HashTable<>(10000);

		// Read arguments
		if (args.length < 1) {
			System.err.println("Usage: java -ea PhoneCalls <path to cls/nms file or number>");
			System.exit(-1);
		} else {
			// Verify file extension
			for (String str : args) {

				String[] strContents = str.split("\\.");
				if (strContents.length > 1) {

					// Files *.nms (names)
					if (strContents[1].equals("nms")) {
						//out.println("NMS FILE");

						try {
							File nmsFile  = new File (str);
							Scanner nmsSc = new Scanner (nmsFile);
							names = saveNms(nmsSc);
						} catch (FileNotFoundException e) {
							System.out.printf("ERROR in file %s: read failure!", str);
						}

					}

					// Files *.cls (calls)
					else if (strContents[1].equals("cls")) {
						//out.println("CLS FILE");

						try {
							File clsFile  = new File (str);
							Scanner clsSc = new Scanner (clsFile);
							saveCls(clsSc, receivedCalls, sentCalls);

						} catch (FileNotFoundException e) {
							System.out.printf("ERROR in file %s: read failure!", str);
						}
					}
				}

				// Others (like numbers)
				else {
					//out.println("OTHER STUFF. POSSIBLY NUMBER");
					print(receivedCalls, names);		
					printNumInfo(str, receivedCalls, sentCalls, names);
				}
			}
		}
		long endTime = System.nanoTime();
		System.out.println("Took "+(endTime - startTime) + " ns"); 
	}

	// Read from cls
	public static void saveCls (Scanner sc, HashTable<HashTable<LinkedList<Integer>>>  receivedCalls, HashTable<HashTable<LinkedList<Integer>>>  sentCalls) {
		while (sc.hasNextLine()) {
			String line = sc.nextLine();
			String[] lineContents = line.split(" ");
			
			// lineContents[0] : FROM number; lineContents[1] : TO number; lineContents[2] : duration
			// faulty lines (ie with less than 3 columns) are ignored
			// other columns in the line are ignored
			
			if (lineContents.length >= 3) {				
				
				// receivedCalls HashTable
				// Situation 1 : From number was not registrated yet
				if (!receivedCalls.contains(lineContents[0])) {
					HashTable<LinkedList<Integer>> toCalls = new HashTable<>(10000);
					LinkedList<Integer> durations = new LinkedList<>();
					
					durations.addLast(Integer.parseInt(lineContents[2]));
					toCalls.set(lineContents[1], durations);
					receivedCalls.set(lineContents[0], toCalls);
				}
				
				// Situation 2: From number was already registrated
				else {
					HashTable<LinkedList<Integer>> toCalls = receivedCalls.get(lineContents[0]);
					// Situation 2A: To number was not yet registrated : create new LinkedList with durations and update hashtable
					if (!toCalls.contains(lineContents[1])) {
						LinkedList<Integer> durations = new LinkedList<>();
						durations.addLast(Integer.parseInt(lineContents[2]));
						toCalls.set(lineContents[1], durations);
					}
					// Situation 2B: To number was already registrated : update LinkedList
					else {
						LinkedList<Integer> durations = toCalls.get(lineContents[1]);
						durations.addLast(Integer.parseInt(lineContents[2]));
					}
				}
				
				// ===================================================================================
				// sentCalls HashTable
				// Situation 1 : To number was not registrated yet
				if (!sentCalls.contains(lineContents[1])) {
					HashTable<LinkedList<Integer>> fromCalls = new HashTable<>(10000);
					LinkedList<Integer> durations = new LinkedList<>();
					
					durations.addLast(Integer.parseInt(lineContents[2]));
					fromCalls.set(lineContents[0], durations);
					sentCalls.set(lineContents[1], fromCalls);
				}
				
				// Situation 2: To number was already registrated
				else {
					HashTable<LinkedList<Integer>> fromCalls = sentCalls.get(lineContents[1]);
					// Situation 2A: From number was not yet registrated : create new LinkedList with durations and update hashtable
					if (!fromCalls.contains(lineContents[0])) {
						LinkedList<Integer> durations = new LinkedList<>();
						durations.addLast(Integer.parseInt(lineContents[2]));
						fromCalls.set(lineContents[0], durations);
					}
					// Situation 2B: From number was already registrated : update LinkedList
					else {
						LinkedList<Integer> durations = fromCalls.get(lineContents[0]);
						durations.addLast(Integer.parseInt(lineContents[2]));
					}
				}
			}
		}
	}

	// Read from nums (hashtable num -> names)
	public static HashTable<String> saveNms (Scanner sc) {
		HashTable<String> table = new HashTable<String>(100000);

		while (sc.hasNextLine()) {
			String line = sc.nextLine();
			String[] lineContents = line.split(" ");

			if (lineContents.length >= 3) {		// ignores faulty lines (ie with less than 3 columns)
				String name = lineContents[1] + " " + lineContents[2]; 	// first name + " " + surname
				table.set(lineContents[0], name);	// num = lineContents[0], name = lineContents[1]
			}
		}		
		return table;
	}

	// Print
	public static void print(HashTable<HashTable<LinkedList<Integer>>> calls, HashTable<String> names) {
		String[] fromNums = calls.keys();
		for (String fromNum : fromNums) {
			
			HashTable<LinkedList<Integer>> toNumsMap = calls.get(fromNum);
			String[] toNums = toNumsMap.keys();
			
			for (String toNum: toNums) {
				
				// Gets LinkedList with durations
				LinkedList<Integer> durationsList = toNumsMap.get(toNum);
				String durationsStr = durationsList.toString("", " ", "");		// retrieve all durations
				String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations
	
				// Updates numbers with the corresponding names (if they exist)
				if (names != null) {
					if (names.contains(fromNum)) fromNum = names.get(fromNum);		
					if (names.contains(toNum))   toNum = names.get(toNum);
				}
	
				// Print format: 009047362 to 269633507 (287 seconds)
				for (String duration : durations) 
					System.out.println(fromNum + " to " + toNum + " (" + duration + " seconds)");
			}
		}
	}

	public static void printNumInfo(String str, HashTable<HashTable<LinkedList<Integer>>> receivedCalls, HashTable<HashTable<LinkedList<Integer>>> sentCalls, HashTable<String> names) {
		System.out.println();
		
		System.out.println("Calls made by phone " + str + ":"); 
		try{ 
			HashTable<LinkedList<Integer>> callsMade = receivedCalls.get(str); 
				String[] toNums = callsMade.keys();
			
			for (String toNum: toNums) {
				
				// Gets LinkedList with durations
				LinkedList<Integer> durationsList = callsMade.get(toNum);
				String durationsStr = durationsList.toString("", " ", "");		// retrieve all durations
				String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations
	
				// Updates numbers with the corresponding names (if they exist)
				if (names != null) {
					if (names.contains(str))     str    = names.get(str);		
					if (names.contains(toNum))   toNum  = names.get(toNum);
				}
	
				// Print format: 009047362 to 269633507 (287 seconds)
				for (String duration : durations) 
					System.out.println("  - to phone " + toNum + " (" + duration + " seconds)");
			}
				
			System.out.println("Calls received by phone " + str + ":");
			HashTable<LinkedList<Integer>> callsReceived = sentCalls.get(str);
			String[] fromNums = callsReceived.keys();
			
			for (String fromNum: fromNums) {
				
				// Gets LinkedList with durations
				LinkedList<Integer> durationsList = callsReceived.get(fromNum);
				String durationsStr = durationsList.toString("", " ", "");		// retrieve all durations
				String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations
	
				// Updates numbers with the corresponding names (if they exist)
				if (names != null) {
					if (names.contains(fromNum))    fromNum = names.get(fromNum);		
					if (names.contains(str))   		str      = names.get(str);
				}
	
				// Print format: 009047362 to 269633507 (287 seconds)
				for (String duration : durations) 
					System.out.println("  - from phone " + fromNum + " (" + duration + " seconds)");
			}
		} catch (NullPointerException e) {
		}
	}
	
}