package aula11.prob1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.stream.Stream;

/**
 * StreamWordCounter
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class StreamWordCounter {
	
	private Stream<String> stream;
	
	public StreamWordCounter(String filepath) {
		
		Path path = Paths.get(filepath);
		
		try {
		  stream = Files.lines(path).flatMap(s -> Arrays.stream(s.trim().split(" ")));
		  
		} catch (IOException ex) {
		  ex.printStackTrace();
		}
	}
	
	public Stream<String> stream() {
		return stream;
	}
	
}
