import static java.lang.System.*;
import java.io.File;

import p2utils.LinkedList;

public class P73 {

	public static void main(String[] args) {
		if (args.length != 1) {
			out.println("Uso: java -ea P73 <dir>");
			exit(1);
		}

		File dir = new File(args[0]);

		// Verificar entrada
		if (!dir.exists()) {
			err.printf("ERRO: %s nao existe!\n", dir);
			exit(2);
		}

		LinkedList<File> files = recListFiles(dir);
		files.print();
	}

  /** Devolve uma lista com o conteúdo de um directório f
   *  e de todos os seus subdirectórios recursivamente.
   */
	public static LinkedList<File> recListFiles(File f) {
		assert f.isDirectory() : "is not a dir";
		
		LinkedList<File> files = new LinkedList<File>();		
		File [] paths;
				
		//returns pathnames for files and directory
		paths = f.listFiles();
		
		//for each pathname array
		for(File path : paths){
			//prints file and directory paths
			 files.addLast(path);
			
			if(path.isDirectory()){
				files = files.concatenate(recListFiles(path));
			}
		}
		
		return files;
	}

  
}
