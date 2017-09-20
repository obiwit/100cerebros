package v3;

/**
 * Esta classe define um conjunto de operações sobre fracções - Versão 3.
 * <P>
 * As funções foram simplesmente retiradas do programa
 * {@code FractionCalculator} da versão anterior
 * ({@link v2.FractionCalculator v2/FractionCalculator.java}).
 * <P>
 * No entanto, em Java estas funções têm de ser agrupadas numa classe
 * que neste caso decidimos chamar de {@code FractionOps}.
 * <P>
 * Para ser acessível aos programas clientes e a outras classes exteriores
 * (noutros ficheiros e possivelmente noutros directórios ou pacotes),
 * a classe tem ainda de ser declarada {@code public}.
 * <P>
 * Entretanto, aproveitámos para eliminar o prefixo {@code fraction-}
 * dos nomes dos métodos {@link #fromString(String) [ref1]}.
 * De facto, como nos programas clientes os métodos serão sempre precedidos
 * do nome da classe ({@code FractionOps.something()}), não poderá haver
 * qualquer confusão com outros métodos {@code something()} de outras classes.
 * Esta é uma alteração relativamente superficial, mas não deixa de trazer
 * alguma simplificação ao código, o que é sempre bem-vindo.
 * <P>
 * E basta.  Já se pode compilar este ficheiro.
 * Mas agora a invocação destas funções no programa principal
 * tem de indicar a classe a que pertencem!
 * <P>
 * (Voltar a {@link FractionCalculator v3/FractionCalculator.java}).
 * <P>
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class FractionOps {

  /** Converte uma string numa fracção.
   *  <P>
   *  Na versão anterior esta função chamava-se 
   *  {@link v2.FractionCalculator#fractionFromString(String) fractionFromString}  [ref1].
   *  <P>
   *  @param str a string a converter.
   *  @return fracção correspondente a str.
   */
  static Fraction fromString(String str) {
    Fraction f = new Fraction();
    int p = str.indexOf('/');  // descobre o sinal de fracção
    if (p>=0) { // se encontrar, extrai numerador e denominador
      f.num = Integer.parseInt(str.substring(0,p));
      f.den = Integer.parseInt(str.substring(p+1));
    } else {    // senão, extrai numerador e deixa o denominador a 1
      f.num = Integer.parseInt(str);
      f.den = 1;
    }
    assert f.den != 0;
    return f;
  }

  /** Converte uma fracção numa string.
   *  @param f a fracção a converter.
   *  @return string com a representação de f.
   */
  static String toString(Fraction f) {
    String s = "(";
    if (f.den>0) { // depende do sinal do denominador...
      s += (f.num) + "/" + (f.den);
    } else {
      s += (-f.num) + "/" + (-f.den);
    }
    s += ")";
    return s;
  }

  /** Multiplica fracções (a * b).
   *  @param a multiplicador.
   *  @param b multiplicando.
   *  @return fracção produto de a * b.
   */
  static Fraction multiply(Fraction a, Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = a.num*b.num;
    r.den = a.den*b.den;
    return r;
  }

  /** Adiciona fracções (a + b).
   *  @param a primeiro termo.
   *  @param b segundo termo.
   *  @return fracção soma de a + b.
   */
  static Fraction add(Fraction a, Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = a.num*b.den + a.den*b.num;
    r.den = a.den*b.den;
    return r;
  }

}
