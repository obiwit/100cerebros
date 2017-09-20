package e20;

import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class CityTraveler {
	
	public static void main (String[] args) {
		
		HashTable<LinkedList<String>> travelersInfo = new HashTable<>(1000); 
		
		if (args.length < 1) {
			err.println("Usage: java -ea CityTraveler <FICH1> <FICH2> ...");
			exit(1);
		}
		
		// Read args (files)
		for (String path : args) {
			try {
				File f     = new File (path);
				Scanner sc = new Scanner (f);
				saveInfo(sc, f.getName(), travelersInfo); // Read info in files
			} catch (IOException e) {
				err.println("ERROR in file " + path + ": read failure!");
				exit(2);
			}
		}
		
		printInfo(travelersInfo);
	}

	// Save info to data structure (HashTable<LinkedList <String>> Name :-> List of cities)
	public static void saveInfo (Scanner sc, String city, HashTable<LinkedList<String>> info) {
		
		while (sc.hasNext()) {
			String name = sc.next();
			if (!info.contains(name)) {
				LinkedList<String> cities = new LinkedList<>();
				cities.addLast(city);
				info.set(name,  cities);
			}
			else {
				LinkedList<String> cities = info.get(name);
				cities.addFirst(city);
			}
		}
		
	}
	
	// Print info
	public static void printInfo (HashTable<LinkedList<String>> info) {
		String[] names = info.keys();
		for (String name : names) {
			System.out.println(name + " : " + info.get(name).toString("", " ", ""));
		}
	}
	
	

}

