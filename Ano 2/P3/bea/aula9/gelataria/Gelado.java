package aula9.gelataria;

/**
 * Gelado
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public abstract class Gelado {

	private int base;
	
	public void base(int b) {
		base = b;
		System.out.printf("%d bolas de gelado", base);
	}

}
