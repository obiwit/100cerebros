package aula11;

import java.util.ArrayList;
import java.util.List;

import aula11.prob2.Circulo;
import aula11.prob2.Figura;
import aula11.prob2.Retangulo;

/**
 * Prob2
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob2 {

	public static void main(String[] args) {
		List<Figura> l = new ArrayList<>();

		for (int i = 1; i < 6; i++) {
			l.add(new Circulo(0, 0, Math.pow(i, 2)));
			l.add(new Retangulo(0, 0, i*2, 10*i));
			System.out.println("--- Iteracao " + i);
			System.out.println("\tFigura com maior area:\n\t--- " + maiorFiguraJ7_area(l));
			System.out.println("\tFigura com maior perimetro:\n\t--- " + maiorFiguraJ7_perimeter(l));
			System.out.println();
		}
		
		System.out.printf("Area total:  %.3f\n", areaTotalJ8(l));
		System.out.printf("Area total de Circulos:  %.3f\n", areaTotalJ8_subTypes(l, "Circulo"));
		System.out.printf("Area total de Retangulos: %.3f\n", areaTotalJ8_subTypes(l, "Retangulo"));
		
	}

	private static Figura maiorFiguraJ7_area(List<Figura> figs) { 
		return figs.stream().max((f, g) -> (int)((f.area() - g.area())*100)).get();
		 // multiplies by 100 so that areas such as 5.87 and 5.88 are correctly compared
	}

	private static Figura maiorFiguraJ7_perimeter(List<Figura> figs) { 
		return figs.stream().max((f, g) -> (int)((f.perimeter() - g.perimeter())*100)).get();
		 // multiplies by 100 so that perimeters such as 5.87 and 5.88 are correctly compared
	}
	
	private static double areaTotalJ8(List<Figura> figs) {
		return figs.stream().map(f -> f.area()).reduce(0.0, (sum, area) -> sum + area);
	}
	
	private static double areaTotalJ8_subTypes(List<Figura> figs, String subtipoNome) { 
		return figs.stream().filter(f -> f.getClass().getSimpleName().equals(subtipoNome))
						    .map(f -> f.area()).reduce(0.0, (sum, area) -> sum + area);
	}

}
