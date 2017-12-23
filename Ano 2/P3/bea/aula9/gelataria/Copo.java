package aula9.gelataria;

/**
 * Copo
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Copo extends Gelado {

	private Gelado gelado;
	
	public Copo(Gelado g, String flavor) {
		gelado = new GeladoSimples(flavor);
	}
	public Copo(Gelado g) {
		this(g, "Baunilha");
	}
	
	@Override
	public void base(int b) {
		gelado.base(b);
		System.out.print(" em copo");
	}

}
