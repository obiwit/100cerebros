import static java.lang.System.*;
import java.io.File;

import p2utils.*;


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
	 
//--- primeira solucao com uma funcao e apenas com parametros dados ----
//--- tem o problema de reatribuir a uma nova lista a cada pasta aberta-
	 
	//~ public static LinkedList<File> recListFiles(File f) {
		//~ LinkedList<File> linked = new LinkedList<File>();
		//~ linked.addLast(f);
		//~ if (f.isDirectory()) {
			//~ File[] list = f.listFiles();
			//~ for (int i = 0; i < list.length; i++) {
					//~ linked = linked.concatenate(recListFiles(list[i]));
			//~ }
		//~ }
		//~ return linked;
	//~ }
		
//--- segunda solucao, mais eficiente ----------------------------------
//--- faz apenas adicoes de nodes --------------------------------------
		
		public static LinkedList<File> recListFiles(File f) {
			
			LinkedList<File> linked = new LinkedList<File>();
			return recListFiles(f, linked);
		}
		private static LinkedList<File> recListFiles(File f, LinkedList<File> lst) {
		lst.addLast(f);
		if (f.isDirectory()) {
			File[] list = f.listFiles();
			for (int i = 0; i < list.length; i++) {
					lst.concatenate(recListFiles(list[i], lst));
			}
		}
		return lst;
		}
}
