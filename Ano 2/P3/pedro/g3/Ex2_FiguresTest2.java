package g3;

import g3.figures.Circulo;
import g3.figures.Quadrado;
import g3.figures.Rectangulo;

/**
 * Ex2_FiguresTest2
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex2_FiguresTest2 {
	public static void main(String[] args) {

		Circulo c1 = new Circulo (0,0,2);
		Circulo c2 = new Circulo (1,3,2);
		Circulo c3 = new Circulo (1,3,2);
		System.out.println(c1 + " tem getArea: " + c1.getArea() + " e getPerimetro: " + c1. getPerimetro());
		//System.out.println(c2 + "tem getArea: " + c2.getArea() + " e getPerimetro: " + c2. getPerimetro());
		System.out.println(c3 + " tem getArea: " + c3.getArea() + " e getPerimetro: " + c3. getPerimetro());
		System.out.println("c2 equals to c3? -> " + c2.equals(c3)); // True

		Quadrado q1 = new Quadrado(0,0,2);
		Quadrado q2 = new Quadrado(3,4,2);
		Quadrado q3 = new Quadrado(3,4,2);

		System.out.println(q1 + " tem getArea: " + q1.getArea() + " e getPerimetro: " + q1.getPerimetro());
		System.out.println(q2 + "tem getArea: " + q2.getArea() + " e getPerimetro: " + q2.getPerimetro());
		System.out.println(q3 + " tem getArea: " + q3.getArea() + " e getPerimetro: " + q3.getPerimetro());
		System.out.println("q1 equals to q3? -> " + q1.equals(q3)); // False

		Rectangulo r1 = new Rectangulo(0,0,2,3);
		Rectangulo r2 = new Rectangulo(3,4,2,3);
		Rectangulo r3 = new Rectangulo(3,4,2,3);
		System.out.println(r1 + " tem getArea: " + r1.getArea() + " e getPerimetro: " + r1. getPerimetro());
		System.out.println(r3 + " tem getArea: " + r3.getArea() + " e getPerimetro: " + r3. getPerimetro());
		System.out.println("r2 equals to r3? -> " + r2.equals(r3)); // True
	}
}
