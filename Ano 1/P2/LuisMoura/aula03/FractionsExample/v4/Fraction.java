package v4;

/**
 * Tipo de dados representando uma fracção - Versão 4.
 * <P>
 * As operações sobre fracções (métodos de {@code FractionOps})
 * não fazem sentido sem o tipo de dados {@code Fraction}.
 * Todas têm parâmetros e/ou variáveis locais daquele tipo.
 * A dependência é total.
 * <P>
 * Por outro lado, o tipo {@code Fraction} deveria ser mais que um mero par
 * de inteiros.  Afinal o que distingue uma fracção de um ponto de coordenadas inteiras,
 * por exemplo?  As suas estruturas de dados são idênticas: dois inteiros.
 * Os nomes dados aos seus atributos poderão até ser diferentes, mas isso é
 * uma diferença superficial que não garante nada: qualquer programador
 * poderá mudar o nome dos atributos.
 * Na verdade, o que nos permite distinguir a noção de fracção da de ponto
 * são as diferentes operações que se podem aplicar sobre esses dois
 * tipos de dados (podem multiplicar-se fracções, mas o que significa
 * multiplicar pontos?); bem como as propriedades distintas que essas
 * operações e dados respeitam (a ordenada de um ponto pode ser zero, mas o
 * denominador de uma fracção não; (2,3)!=(4,6), mas 2/3==4/6).
 * <P>
 * Assim, faz sentido associar ao tipo fracção todas as operações que se lhe
 * aplicam.
 * <P>
 * Na prática, a melhor forma de conseguir essa união profunda consiste em
 * mover para a classe {@code Fraction} as funções que tínhamos anteriormente
 * em {@code FractionOps}.
 * <P>
 * Isto é novo!
 * Até agora tínhamos classes que serviam de meros invólucros para os métodos
 * (funções) que compunham os nossos programas;
 * ou então tínhamos classes que continham apenas atributos (campos) e que
 * serviam para definir novos tipos de dados estruturados
 * (conhecidos como registos ou estruturas).
 * Pela primeira vez temos uma classe que contém tanto atributos (dados) como
 * métodos (operações), e que nos serve para definir um novo tipo de dados
 * (essencialmente, um registo), mas com um "comportamento" e um "significado"
 * que lhe são conferidos pelas operações e propriedades associadas.
 * <P>
 * Isto é um módulo. Módulo = Dados + Operações associadas.
 * As outras duas formas de classe que já usámos são casos particulares extremos:
 * <ul>
 * <li> módulos sem atributos, só com métodos (programas ou
 *      bibliotecas de funções como {@link java.lang.Math}); ou
 * <li> módulos sem métodos, só com atributos (registos).
 * </ul>
 * <P>
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class Fraction {
  /** Numerador */
  int num = 0;
  /** Denominador */
  int den = 1;
  // Quando criada, uma fracção é inicializada por defeito a zero (0/1)

  // Funções que manipulam fracções:

  /** Converte uma string numa fracção.
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
