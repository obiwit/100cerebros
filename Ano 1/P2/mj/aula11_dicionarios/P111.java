import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import p2utils.*;

public class P111 {
	
	public static void main (String[] args)throws IOException {
		assert args.length>=1 : "Usage: java P111 <file with passwords> ";
		File fPass = new File(args[0]);
		assert fPass.isFile(): "It's not a file";
		
		Scanner inF = new Scanner(fPass);	
		
		KeyValueList<String> key = new KeyValueList<String>();
		
		while(inF.hasNextLine()){
			String [] s = inF.nextLine().split(" ");
			//~ out.println(s[0]);
			//~ out.println(s[1]);
			key.set(s[0], s[1]);			
		}
		
		Scanner in = new Scanner(System.in);
		for(;;){
			out.printf("login: ");
			String login = in.nextLine();
			out.printf("password: ");
			String password = in.nextLine();
			if(key.contains(login)){
				if(password.equals(key.get(login)))
					out.println("Authentication successful");
				else out.println("Authentication failed");
			}
			else out.println("Authentication failed");
			
		}
	}
}

