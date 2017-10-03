import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class P82{
	
	public static void main(String[] args) throws IOException{

		assert args.length>=1: "Usage: java -ea P82 file1(com extensao) ...";
		
		SortedListInt list = new SortedListInt ();
		
		for (int i = 0; i < args.length; i++)
			list = copyFileToList(args[i], list);
		
		list.print();
		
	}
	
	public static SortedListInt copyFileToList(String fName, SortedListInt list)throws IOException{
		File inFile = new File(fName);
		Scanner read = new Scanner(inFile);
		
		//copy the numbers of the file to the list
		while(read.hasNextLine()){
			String a[] = read.nextLine().split(" ");
			for (int i = 0; i < a.length; i++){
				if(isNumeric(a[i]))
				list.insert( Integer.parseInt(a[i]) );
				//~ out.println(a[i]);
				//~ out.println(isNumeric(a[i]));
			}			
		}
		
		return list;
	}
	
	
	public static boolean isNumeric(String str)  {  
		try  {  
			int number = Integer.parseInt(str);  
		}  
		catch(NumberFormatException nfe){
			return false;  
		}  
		return true;  
	}

}


