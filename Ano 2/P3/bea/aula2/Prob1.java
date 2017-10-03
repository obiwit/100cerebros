package aula2;

import java.util.Scanner;

import aula2.prob1.VideoClub;

public class Prob1 {
	
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		
		// Runs a "non-functional" function, left here simply as a way of allowing
		// the teacher to test the VideoClub directly if they so wish.
		new VideoClub(5).test();
		
		// For normal execution, please run instead:
		//new VideoClub(N).run(); // replace N with an integer at choice
	}

}
