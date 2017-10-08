package g3;
import java.util.LinkedList;

import g3.figures.Circulo;
import g3.figures.Figura;
import g3.figures.Quadrado;
import g3.figures.Rectangulo;

/**
 * Ex2_FiguresTest
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex2_FiguresTest {

	public static void main(String[] args) {
		Circulo c1 = new Circulo(3, 4, 9);
		Circulo c2 = new Circulo(1, 2, 9);
		Circulo c3 = new Circulo(1, 2, 3);
		Circulo c4 = new Circulo(20, 10, 3);

		Quadrado q1 = new Quadrado(3, 9, 7);

		Rectangulo r1 = new Rectangulo(4, 9, 2, 3);
		Rectangulo r2 = new Rectangulo(3, 9, 7, 7);

		LinkedList<Figura> figures = new LinkedList<>();
		figures.addLast(c1);
		figures.addLast(c2);
		figures.addLast(c3);
		figures.addLast(q1);
		figures.addLast(r1);
		figures.addLast(r2);
		System.out.println(figures);

		// Testing Circulo Class
		System.out.println(c2.interceptWith(c3));		// true
		System.out.println(c1.interceptWith(c4));		// false
		System.out.println(c1.equals(c3));				// false

		// Testing Quadrado Class
		System.out.println(q1.equals(r2));				// false

		// Testing Rectangulo Class
		System.out.println("Before setComp: " + r1.getComp());
		r1.setComp(35);
		System.out.println("After setComp (should be 35): " + r1.getComp());
	}

}
