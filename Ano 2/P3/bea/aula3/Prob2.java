package aula3;

import aula3.prob2.Circulo;
import aula3.prob2.Ponto;
import aula3.prob2.Retangulo;
import aula3.prob2.Quadrado;

public class Prob2 {

	public static void main(String[] args) {
		Circulo c1 = new Circulo (2);
		Circulo c2 = new Circulo (1,3,2); 
		Circulo c3 = new Circulo (2);	
		System.out.println(c1 + " \ntem area: " + c1.area() + " e perimetro: " + c1. perimeter() + "\n");
		System.out.println(c3 + " \ntem area: " + c3.area() + " e perimetro: " + c3. perimeter());
		System.out.println("c1 equals to c3? -> " + c1.equals(c3) + "\n"); // True
		
		Quadrado q1 = new Quadrado(2); 
		Quadrado q2 = new Quadrado(3,4,2); 
		Quadrado q3 = new Quadrado(3,4,2);
		System.out.println(q1 + " \ntem area: " + q1.area() + " e perimetro: " + q1.perimeter() + "\n");
		System.out.println(q3 + " \ntem area: " + q3.area() + " e perimetro: " + q3.perimeter());
		System.out.println("q1 equals to q3? -> " + q1.equals(q3) + "\n"); // False
		
		Retangulo r1 = new Retangulo(2,3); 
		Retangulo r2 = new Retangulo(3,4,2,3); 
		Retangulo r3 = new Retangulo(3,4,2,3);
		System.out.println(r1 + " \ntem area: " + r1.area() + " e perimetro: " + r1. perimeter() + "\n");
		System.out.println(r3 + " \ntem area: " + r3.area() + " e perimetro: " + r3. perimeter()); 
		System.out.println("r2 equals to r3? -> " + r2.equals(r3) + "\n"); // True
	}
	
	public static void anotherTest() {
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