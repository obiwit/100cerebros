package aula9.gelataria;

/**
 * GeladoSimples
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class GeladoSimples extends Gelado {

	private String flavor;
	
	public GeladoSimples(String s) {
		flavor = s;
	}
	
	@Override
	public void base(int b) {
		super.base(b);
		System.out.printf(" de %s", flavor);
	}

}
