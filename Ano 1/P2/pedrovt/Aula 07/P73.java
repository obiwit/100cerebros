import static java.lang.System.*;
import java.io.File;

import p2utils.LinkedList;

/**
 * P73
 * No exercıcio 6.5 fez uma funcao para listar recursivamente o conteudo de um diretorio. Escreva
 * agora uma funcao recListFiles que em vez de imprimir a lista, devolva o resultado
 * numa lista ligada de elementos de tipo File.

 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

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
		LinkedList<File> dir_files = new LinkedList<File>();
		recListFiles(f, dir_files);
		return dir_files;
	}

	private static void recListFiles(File f, LinkedList<File> list) {
		if (f.isDirectory()) {
			list.addLast(f);
			File[] contents = f.listFiles();
			if (contents != null) {			//avoids I/O Errors (see listFiles documentation)
				for (File i : contents) {
					// if it's a directory, gets its contents
					if (i.isDirectory()) {
						recListFiles(i, list);
					}
					// else (if it's a file) adds the file to the list
					else {
						list.addLast(i);
					}
				}
			}
		}
	}
}