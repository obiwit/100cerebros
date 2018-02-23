package bloco_01;

import java.util.Map;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;

public class ex_6 {
	
	static Map<String, String> translations = new HashMap<>();

	public static void main(String[] args) {
		System.out.println("1337 Translator\nBooting awesomeness up...");
		initializeTranslationsMap("resources/bloco_01/" + args[0]);
		
		for (int i = 1; i < args.length; i++) {
			System.out.println("Translating " + args[i] + "...");
			translateFile("resources/bloco_01/" + args[i]);
			System.out.println("\n");
		}
	}
	
	/**
	 * Reads and translates a file (maintaining line breaks) to the console (standard out), using the initialized translations map
	 * @param filepath
	 */
	public static void translateFile(String filepath) {
		try {
            // Template file reading code
            FileReader fileReader = new FileReader(filepath);
            BufferedReader bufferedReader =  new BufferedReader(fileReader);

            String line;
            while((line = bufferedReader.readLine()) != null) {
            		// process line to fill map
            		String[] lineParts = line.split(" ");
            		for(int i = 0; i < lineParts.length; i++) {
            			if (translations.containsKey(lineParts[i])) {
            				System.out.print(translations.get(lineParts[i]) + " ");
            			} else {
            				System.out.print(lineParts[i] + " ");
            			}
            		}
            }   
            bufferedReader.close();         
        }
        catch(Exception e) {
            e.printStackTrace();
        }
		
	}
	
	/**
	 * Initializes the translations map using the given file, using the format: [word] [translation (can have spaces)]
	 * @param filepath
	 */
	public static void initializeTranslationsMap(String filepath) {
		try {
            // Template file reading code
            FileReader fileReader = new FileReader(filepath);
            BufferedReader bufferedReader =  new BufferedReader(fileReader);

            String line;
            while((line = bufferedReader.readLine()) != null) {
            		// process line to fill map
            		String[] lineParts = line.trim().split(" ", 2);
            		if (!lineParts[1].trim().isEmpty()) {
            			translations.put(lineParts[0], lineParts[1].trim());
            		}
            }   
            bufferedReader.close();         
        }
        catch(Exception e) {
            e.printStackTrace();
        }
	}

}
