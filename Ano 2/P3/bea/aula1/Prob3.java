package aula1;

import aula1.prob3.Circulo;
import aula1.prob3.Ponto;

public class Prob3 {

	public static void main(String[] args) {
		Circulo c1 = new Circulo(); // point with center (0,0) and radius 1
		
		Circulo c2 = new Circulo(0.1, 0.5, 1);
		Circulo c3 = new Circulo(2, 0, 1);
		Circulo c4 = new Circulo(2.1, 0, 1);
		
		System.out.println("Teste de intersects()");
		System.out.println(c1.intersects(c2));
		System.out.println(c1.intersects(c3)); // intersection on (1,0)
		System.out.println(c1.intersects(c4) + "\n");

		System.out.println("Teste de equals()");
		System.out.println(c1.equals(c3));
		System.out.println(c3.equals(c4));
		c4.setCenter(new Ponto(2, 0));
		System.out.println(c3.equals(c4) + "\n");
		
		System.out.println("Teste de toString()");
		System.out.println(c1);

	}

}