package e19;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class PhoneCalls2 {

	public static void main(String[] args){
		long startTime = System.nanoTime();
		// Fields
		HashTable<String> names	= null;		   
		HashTable<LinkedList<String>> calls = null; 

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
							calls = saveCls(clsSc);

						} catch (FileNotFoundException e) {
							System.out.printf("ERROR in file %s: read failure!", str);
						}
					}
				}

				// Others (like numbers)
				else {
					//out.println("OTHER STUFF. POSSIBLY NUMBER");
					print(calls, names);		
					printNumInfo(str, calls, names);
					
				}
			}
		}
		long endTime = System.nanoTime();
		System.out.println("Took "+(endTime - startTime) + " ns"); 
		
	}

	// Read from cls (calls: hashtable String "num1 to num2" -> linkedlist with durations)
	public static HashTable<LinkedList<String>> saveCls (Scanner sc) {
		HashTable<LinkedList<String>> table = new HashTable<>(100000);

		while (sc.hasNextLine()) {
			String line = sc.nextLine();
			String[] lineContents = line.split(" ");
			if (lineContents.length >= 3) {				// ignores faulty lines (ie with less than 3 columns)

				// Creates string "num1 to num2" (the key in the hashtable entries)
				String nums = lineContents[0] + " " + lineContents[1];
				//String nums[] = {lineContents[0], lineContents[1]};

				// List containing durations of calls from num1 to num2 (the element in the hashtable entries)
				// Updates list (list already exists)
				if (table.contains(nums)) {
					LinkedList<String> durationList = table.get(nums);
					// duration = lineContents[2]
					durationList.addLast(lineContents[2]);							
				}

				// Creates list (list doesn't exist yet)
				else {
					LinkedList<String> durationList = new LinkedList<>();
					// duration = lineContents[2]
					durationList.addLast(lineContents[2]);
					table.set(nums, durationList);		
				}

				// other columns in the line are ignored
			}
		}
		return table;
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
	public static void print(HashTable<LinkedList<String>> calls, HashTable<String> names) {
		String[] keys = calls.keys();

		for (String key : keys) {
			String[] nums = key.split(" ");

			// if num has a corresponding name in names hashtable, that name will be used to print the call info
			if (names != null) {
				if (names.contains(nums[0])) nums[0] = names.get(nums[0]);		
				if (names.contains(nums[1])) nums[1] = names.get(nums[1]);
			}

			LinkedList<String> durationsList = calls.get(key);
			String durationsStr = durationsList.toString("", " ", "");		// retrieve all durations
			String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations

			// Print format: 009047362 to 269633507 (287 seconds)
			for (String duration : durations) 
				System.out.println(nums[0] + " to " + nums[1] + " (" + duration + " seconds)");
		}
	}

	public static void printNumInfo(String str, HashTable<LinkedList<String>> calls, HashTable<String> names) {
		String[] keys = calls.keys();
		System.out.println();
		System.out.println("Calls made by phone " + str + ":");
		for (String key : keys) {
			String[] nums = key.split(" ");
			
			if (nums[0].equals(str)) { 
				if (names != null && names.contains(nums[1])) nums[1] = names.get(nums[1]);

				// retrieve all durations
				LinkedList<String> durationsList = calls.get(key);
				String durationsStr = durationsList.toString("", " ", "");		
				String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations

				// Print format: 009047362 to 269633507 (287 seconds)
				for (String duration : durations) 
					System.out.println("   - to phone " + nums[1] + " (" + duration + " seconds)");
			}
		}
		
		System.out.println("Calls received by phone " + str + ":");
		for (String key : keys) {
			String[] nums = key.split(" ");
			if (nums[1].equals(str)) { 
				if (names != null && names.contains(nums[0])) nums[0] = names.get(nums[0]);

				// retrieve all durations
				LinkedList<String> durationsList = calls.get(key);
				String durationsStr = durationsList.toString("", " ", "");		
				String[] durations  = durationsStr.split(" ");					// split the string to get an array with all the durations

				// Print format: 009047362 to 269633507 (287 seconds)
				for (String duration : durations) 
					System.out.println("   - from phone " + nums[0] + " (" + duration + " seconds)");
			}
		}
	}
	
}