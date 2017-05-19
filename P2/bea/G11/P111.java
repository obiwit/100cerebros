import java.util.Scanner;
import java.io.*;
import p2utils.*;

public class P111 {
	
	public static void main (String[] args) {
		if (args.length != 1) {
			System.out.println("Usage: java P111 <file> (duh)");
			System.exit(1);
		}
		
		KeyValueList<String> dic = new KeyValueList<String>(); 
		
		// get and open file, fill dictionary with key/value pairs
		try {
			File fileIn = new File(args[0]);
			Scanner scIn = new Scanner(fileIn);
			while(scIn.hasNextLine()) {
				String[] line = scIn.nextLine().split(" ");
				dic.set(line[0], line[1]);
			}
		} catch (Exception e) {
			System.out.println(e+"\nFile problem *shrugs* ¯＼(º_o)/¯\n");
			System.exit(1);
		}
		
		// do authenthication
		Scanner input = new Scanner(System.in);
		System.out.print("Login:    ");
		while (input.hasNextLine()) {
			String key = input.nextLine();
			
			if (dic.contains(key)) {
				System.out.print("Password: ");
				String pw = input.nextLine();
				if (dic.get(key).equals(pw))
					System.out.println("Authentication successful");
				else
					System.out.println("Authentication failed");
			}
			
			System.out.print("Login:    ");
		}
		
	}
}
