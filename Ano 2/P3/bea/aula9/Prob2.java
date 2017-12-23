package aula9;

import aula9.gelataria.Cone;
import aula9.gelataria.Copo;
import aula9.gelataria.Gelado;
import aula9.gelataria.GeladoSimples;
import aula9.gelataria.Topping;

/**
 * Prob2
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob2 {

	public static void main(String args[]) {
		Gelado ice;
		
		ice = new GeladoSimples("Baunilha");
		ice.base(2);
		System.out.println();
		
		new Copo(ice).base(3);
		System.out.println();
		
		new Cone(ice).base(1);
		System.out.println();
		
		new Topping(ice, "Canela").base(2);
		System.out.println();
		
		ice = new Topping(ice, "Nozes");
		ice.base(1);
		System.out.println();
		
		ice = new Topping(new Cone(new GeladoSimples("Morango")), "Fruta"); 
		ice.base(2);
		System.out.println();
		
		ice = new Topping(
				new Topping(
						new Copo(new GeladoSimples("Manga")), "Chocolate"), "Natas");
		ice.base(4);
		System.out.println();
		
		ice = new Topping(ice, "Pepitas"); 
		ice.base(3);
		System.out.println();
	}

}
