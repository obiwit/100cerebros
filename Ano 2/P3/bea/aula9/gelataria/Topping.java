package aula9.gelataria;

/**
 * Topping
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Topping extends Gelado {

	private Gelado gelado;
	private String topping;
	
	public Topping(Gelado g, String top) {
		gelado = g;
		topping = top;
	}
	
	@Override
	public void base(int b) {
		gelado.base(b);
		System.out.printf(" com %s", topping);
	}

}
