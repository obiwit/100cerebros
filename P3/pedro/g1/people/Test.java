package g1.people;

/**
 * Test
 * 
 * @author Pedro Teixeira 84715
 */

public class Test {
	public static void main (String[] args) {
		Data d = new Data(11, 4, 1974);
		Pessoa p = new Pessoa ("António Nunes", 98012244, d);
		System.out.print(d + "\n" + p);
	}
}
