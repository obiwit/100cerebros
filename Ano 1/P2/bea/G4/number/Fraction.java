package number;

/**
 * Tipo de dados representando uma fracção.
 * Esta versão impõe um invariante (interno) mais forte:
 * as frações armazenadas têm sempre denominador positivo.
 * Isto permite simplificar alguns métodos.
 *
 * @author João Manuel Rodrigues
 * 2007-2017
 */
 
 /* 
  * Editing: Beatriz Borges 
  * 2017 
  */

public class Fraction implements Comparable<Fraction> {
	int n, d;
	
    //assert invariant();

  /* Testa o invariante do objeto.
   * Ou seja, a propriedade que define a validade de uma fração.
   * É para testar em asserções nos métodos.
   */
  public boolean invariant() {
	// O denominador não pode ser menor que (ou igual a) 0!
	// A fracao e irredutivel
    return (d > 0) && (minCommonDiv(this) == -1);   
  }

  // contructors
  public Fraction() {
	n = 1;
	d = 1;
  }
  public Fraction(int num, int den) {
	  // make sure den > 0
	  if (den < 0) {  
	    num *= -1;
	    den *= -1;
	  }
	  n = num;
	  d = den;
	  
	  // make sure fraction's irredutible
	  int mcd;
	  while ((mcd = minCommonDiv(this)) != -1) { n /= mcd; d /= mcd;}
	  
	  assert this.invariant();
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
    // Com um invariante mais forte, pode-se simplificar este método!
    String s = "(" + n + "/" + d + ")";
    return s;
  }

  /** Devolve o numerador da fracção.
   *  @return numerador desta fração.
   */
  public int num() { return n; }

  /** Devolve o denominador da fracção.
   *  @return denominador desta fração.
   */
  public int den() { return d; }
  
  /**
   * Torna a funcao irredutivel.
   */
   public void reduce() {
	// find min common div, and keep dividing until no longer possible
	int mcd = minCommonDiv(this);
	while(mcd != -1) {
		// divide by it
		this.n = this.n/mcd;
		this.d = this.d/mcd;
		
		mcd = minCommonDiv(this);
	}
  }

  /** Multiplica esta fracção por outra (this * b).
   *  @param b multiplicando.
   *  @return fracção produto de this * b.
   */
  public Fraction multiply(Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.n = n*b.n;  // possibilidade de overflow!
    r.d = d*b.d;
	r.reduce();   // fracao irredutivel
    assert r.invariant() : "Result should be valid.";
    return r;
  }

  /** Adiciona esta fracção com outra (this + b).
   *  @param b fracção a adicionar a esta.
   *  @return fracção soma de this + b.
   */
  public Fraction add(Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.n = n*b.d + d*b.n;  // possibilidade de overflow!
    r.d = d*b.d;
	r.reduce();           // fracao irredutivel
    assert r.invariant() : "Result should be valid.";
    return r;
  }

  public Fraction divide(Fraction b) {
    assert b.n != 0 : "Division by zero!";
    
    Fraction r = new Fraction(this.n * b.d, this.d * b.n);
    
    assert r.invariant() : "Result should be valid.";
    return r;
  }

  public Fraction subtract(Fraction b) {
    Fraction r = new Fraction(this.n * b.d - b.n * this.d, this.d * b.d);
    assert r.invariant() : "Result should be valid.";
    return r;
  }

  public boolean equals(Fraction b) {
    return (this.n * b.d == b.n * this.d);
  }

  public int compareTo(Fraction b) {
	int sameDenA = this.n * b.den();
	int sameDenB = b.num() * this.d;
    
    if (sameDenA > sameDenB) { return 1; }
    else if (sameDenA < sameDenB) { return -1; }
    else { return 0; }
  }
  
  
  
  // class methods
  private static int minCommonDiv(Fraction f) {
    // find min common div
	int mcd = 2;
	boolean noMcd = false;
	while (f.n%mcd != 0 || f.d%mcd !=0) {
		if ((mcd > f.n) || (mcd >f.d)) {
			noMcd = true;
			break;
		}
		mcd++;
	}
	return (noMcd)? -1 : mcd;
  }
}
