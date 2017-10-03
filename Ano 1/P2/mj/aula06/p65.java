import java.io.*;

public class p65 {
	
	public static void main (String[] args)throws IOException{
		File f = null;
			
		try{			
			//create new file
			f = new File(args[0]);
			filePath(f);
			
		}
		catch(Exception e){
			//if any error occurs
			e.printStackTrace();
		}
	}
	
	public static void filePath(File f){
		assert f.isDirectory() : "is not a dir";
		
		File [] paths;
				
		//returns pathnames for files and directory
		paths = f.listFiles();
		
		//for each pathname array
		for(File path : paths){
			//prints file and directory paths
			System.out.println(path);
			
			if(path.isDirectory())
				filePath(path);
		}
	}
}

