package g09;

import g09.iceCreamsManagement.Cone;
import g09.iceCreamsManagement.Copo;
import g09.iceCreamsManagement.Gelado;
import g09.iceCreamsManagement.GeladoSimples;
import g09.iceCreamsManagement.Topping;

/**
 * Ex2_IceCreams
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex2_IceCreams {
	public static void main(String args[]) {
		Gelado ice;
		ice = new GeladoSimples("Baunilha");
		ice.base(2);

		System.out.println(ice);

		// ----------------------------
		Gelado ice2 = new Copo(ice);
		ice2.base(3);
		System.out.println(ice2);

		Gelado ice3 = new Cone(ice);
		ice3.base(1);
		System.out.println(ice3);

		// ----------------------------
		Gelado ice4 = new Topping(ice, "Canela");
		ice4.base(2);
		System.out.println(ice4);

		ice = new Topping(ice, "Nozes");
		ice.base(1);
		System.out.println(ice);

		ice = new Topping(new Cone(new GeladoSimples("Morango")), "Fruta");
		ice.base(2);
		System.out.println(ice);

		ice = new Topping(
				new Topping(
						new Copo(new GeladoSimples("Manga")), "Chocolate"), "Natas");
		ice.base(4);
		System.out.println(ice);

		ice = new Topping(ice, "Pepitas");
		ice.base(3);
		System.out.println(ice);
	}
}

