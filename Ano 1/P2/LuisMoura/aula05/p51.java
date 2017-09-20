import static java.lang.System.*;
import java.util.Scanner;

public class p51 {
	private static final Scanner scin = new Scanner(System.in);
	
	public static void help(GuessGame game) {
	
		assert game != null;
		out.printf("Find the secret number in range [%d,%d]!\n",
					game.min(), game.max());
		out.printf("Available commands:\n");
		out.printf("  <number>   (new attempt to guess secret)\n");
		out.printf("  count      (show current number of attempts)\n");
		//out.printf("  show       (show all attempts done)\n");
		out.printf("  help       (information on command usage)\n");
		out.printf("  quit       (exits the program)\n");
	}

	public static void main(String[] args) {
		if (args.length != 0 && args.length != 2) {
			out.println("Usage: p42 [ <min> <max> ]");
			out.println("(by default range [0,20] is used)");
			exit(1);
		}
		int min = 0;
		int max = 20;
		if (args.length == 2) {
			try {
				min = Integer.parseInt(args[0]);
			catch{
				
			max = Integer.parseInt(args[1]);
		}
	
		GuessGame game = new GuessGame(min, max);

		out.println();
		help(game);
		out.println();
		while (!game.finished()) {
			out.print("Command? ");
			String command = scin.next();
			out.println();
			switch (command) {
				case "quit":
					exit(1);
					break;
				case "help":
					help(game);
					break;
				case "count":
					out.printf("Number of attempts: %d", game.numAttempts());
					break;
				default:
					int guess = Integer.parseInt(command);
					if (!game.validAttempt(guess)) {
						out.printf("ERROR: %d is invalid", guess);
					} else {
						game.play(guess);
						if (game.attemptIsHigher()) {
							out.printf("%d is to high!", game.attempt());
						} else if (game.attemptIsLower()) {
							out.printf("%d is to low!", game.attempt());
						} else {
							out.printf("Game finished in %d attempts!", game.numAttempts());
							exit(2);
						}
					}
					break;
			}
			out.println();
		}
		out.printf("Game finished in %d attempts\n", game.numAttempts());
	}
}

