/**
 * Tipo de dados representando uma fracção.
 * Esta versão impõe um invariante (interno) mais forte:
 * as frações armazenadas têm sempre denominador positivo.
 * Isto permite simplificar alguns métodos.
 *
 * @author João Manuel Rodrigues
 * 2007-2017
 * 
 * @author Pedro
 * 
 */

package aula4.p47;
public class Fraction implements Comparable<Fraction>{
	
	/* Testa o invariante do objeto.
	 * Ou seja, a propriedade que define a validade de uma fração.
	 * É para testar em asserções nos métodos.
	 */
	public boolean invariant() {
		return den > 0;   
	}
	
	// Tests if denominator is valid
	public boolean validDenominator(){
		return !(den == 0);
	}

	// Fields
	private int num, den = 1; //den can't be 0... 
	
	// Default constructor
	public Fraction () {
	}
	
	/** Constructor
	 *  @param num Numerador da fracção
	 *  @param den Denominador da fracção
	 */
	public Fraction (int num, int den) {
		assert validDenominator() : "Denominator must not be 0";
		
		/* For an irreducible fraction,
		 * divide the number and denominator of a fraction
		 * by their greatest common diviser 
		 */
		
		int gcd = getGCD(Math.abs(num), Math.abs(den));
		
		if (den < 0) {
			this.num = -num/gcd;		
			this.den = -den/gcd;
		}
		else {
			this.num = num/gcd;
			this.den = den/gcd;
		}
		
		
		assert invariant() : "Denominator must be positive";
	}

	/** Converte uma string numa fracção.
	 *  Chamava-se fromString na v5.  Implementado de outra forma.
	 *  @param str String no formato {@code "inteiro/inteiro"}
	 *             representando uma fracção válida.
	 *  @return fracção correspondente a {@code str}.
	 */
	public static Fraction parseFraction(String str) {
		String[] p = str.split("/", 2);  // divide a string em até 2 partes
		int n = Integer.parseInt(p[0]);  // extrai numerador
		int d = (p.length==2)? Integer.parseInt(p[1]) : 1;
		// se tem 2 partes, extrai denominador, senão fica 1
		return new Fraction(n, d);
	}

	/** Converte a fracção numa string.
	 *  @return string com a representação desta fracção.
	 */
	public String toString() {
		assert invariant();
		/* Com um invariante mais forte, pode-se simplificar este método!
		String s;
		if (den > 0)
			s = "(" + num + "/" + den + ")";
		else
			s = "(" + (-num) + "/" + (-den) + ")";
		return s;
		*/
		
		return "(" + num + "/" + den + ")";
	}

	/** Devolve o numerador da fracção.
	 *  @return numerador desta fração.
	 */
	public int num() { 
		return num; 
	}

	/** Devolve o denominador da fracção.
	 *  @return denominador desta fração.
	 */
	public int den() { 
		return den; 
	}

	/** Multiplica esta fracção por outra (this * b).
	 *  @param b multiplicando.
	 *  @return fracção produto de this * b.
	 */
	public Fraction multiply(Fraction b) {
		Fraction r = new Fraction();  // fracção para o resultado
		r.num = num*b.num;  // possibilidade de overflow!
		r.den = den*b.den;
		assert r.invariant() : "Result should be valid.";
		return r;
	}

	/** Adiciona esta fracção com outra (this + b).
	 *  @param b fracção a adicionar a esta.
	 *  @return fracção soma de this + b.
	 */
	public Fraction add(Fraction b) {
		Fraction r = new Fraction();  // fracção para o resultado
		r.num = num*b.den + den*b.num;  // possibilidade de overflow!
		r.den = den*b.den;
		assert r.invariant() : "Result should be valid.";
		return r;
	}
	
	/** Divide esta fracção com outra (this / b).
	 *  @param b fracção a adicionar a esta.
	 *  @return fracção divisão de this / b.
	 */
	public Fraction divide(Fraction b) {
		assert b.num != 0 : "Division by zero!";
		
		Fraction r = new Fraction();  
		r.num = this.num * b.den; 
		r.den = this.den * b.num;
		assert r.invariant() : "Result should be valid.";
		return r;
	}

	/** Subtrai esta fracção com outra (this - b).
	 *  @param b fracção a adicionar a esta.
	 *  @return fracção subtração de this - b.
	 */
	public Fraction subtract(Fraction b) {
		Fraction r = new Fraction();  
		r.num = num*b.den - den*b.num;  
		r.den = den*b.den;
		assert r.invariant() : "Result should be valid.";
		return r;
	}
	
	/** Compara a igualdade esta fracção com outra (this = b ? ).
	 *  @param b fracção a comparar a esta.
	 *  @return this == b.
	 */
	public boolean equals(Fraction b) {
		// a/b == c/d if ad == cb
		return (this.num * b.den == this.den * b.num); 
	}
	
	/** Compares this fraction with another (this <> b ? ).
	 *  @param b fracção a comparar a esta.
	 *  @return negative int if this < b, positive if this > b and nule if this = b 
	 */
	public int compareTo(Fraction b) {
		/* a/b < c/d if ad <= cb 
		 * similar to a/b > c/d */
		return (this.num * b.den - this.den * b.num); 
	}
	
	/** Euclidean Algorithm 
	 * 	@param a integer number
	 *  @param b integer number
	 *  @return greatest common divisor between a and b 
 	 */
	public int getGCD(int a, int b){
		while (b != 0){
			int r = a % b;
			a = b;
			b = r;
		}
		
		return a;
	}
}
