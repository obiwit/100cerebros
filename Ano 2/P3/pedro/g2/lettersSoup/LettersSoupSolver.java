package g2.lettersSoup;

/**
 * LettersSoupSolver
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class LettersSoupSolver {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		for (String s: args) {
			System.out.println(s);
			LettersSoup l = new LettersSoup(s);
			l.solve();
			System.out.println("\n");
		}

	}

}
