import java.io.*;
import java.util.*;

public class p67{
	
	public static void main (String[] args)throws IOException{
		Scanner read = new Scanner(System.in);
		
		File dir = null;
		File f = null;
		String fileName="";
		
			
		try{
					
			if(args.length == 2){
				//create new file
				dir = new File(args[0]);
				fileName = args[1];
			}
			else{
				System.out.println("Use: <directory> <search name>");
				System.out.print("<directory> ");
				dir = new File(read.nextLine());
				System.out.print("<search name>");
				fileName = read.nextLine();
			}
			//assert args.length == 2 : "Use: <directory> <search name>";
				
			filePath(dir, fileName);
			
		}
		catch(Exception e){
			//if any error occurs
			e.printStackTrace();
		}
	}
	
	public static void filePath(File dir, String fileName){
		assert dir.isDirectory() : " is not a dir";
		assert fileName!="" : " name null";
		
		File [] paths;
				
		//returns pathnames for files and directory
		paths = dir.listFiles();
		
		//for each pathname array
		for(File path : paths){
			//search in others directorys
			if(path.isDirectory()){
				filePath(path, fileName);
			}
						
			String name="";
			int pos = path.getName().lastIndexOf(".");
			if(pos != -1) 
			   name = path.getName().substring(0, pos);
			
			if(path.getName().equals(fileName) || name.equals(fileName))
				System.out.println(path);
		}
	}
	
}


