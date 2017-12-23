package aula9.gelataria;

/**
 * Cone
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Cone extends Gelado {

	private Gelado gelado;
	private String flavor; // TODO FIXME
	
	public Cone(Gelado g, String flavor) {
		gelado = new GeladoSimples(flavor);
	}
	public Cone(Gelado g) {
		this(g, "Baunilha");
	}
	
	@Override
	public void base(int b) {
		gelado.base(b);
		System.out.print(" em cone");
	}

}
