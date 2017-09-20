package v2;

import static java.lang.System.*;
import java.util.*;

/**
 * Calculadora com fracções - Versão 2.
 * <P>
 * Nesta versão definimos um novo tipo de dados para representar fracções:
 * um registo com dois inteiros (numerador e denominador).
 * Procure {@link Fraction} {@link Fraction [ref1]}
 * para ver o código correspondente.
 * <P>
 * Também definimos uma série de funções [ref2] que operam sobre fracções
 * para as
 * {@link #fractionMultiply(Fraction,Fraction) multiplicar},
 * {@link #fractionAdd(Fraction,Fraction) adicionar},
 * {@link #fractionToString(Fraction) converter para String} e
 * {@link #fractionFromString(String) obter a partir de uma String}.
 * <P>
 * Com isto conseguimos escrever a função principal {@link #main main}
 * de uma forma bastante concisa e elegante, abstraindo-nos dos detalhes de
 * implementação  {@link #main(String[]) [ref3]}.
 * <P>
 * É um bom exemplo de abstacção algorítmica.
 * <P>
 * Neste nível de abstracção, as fracções são tratadas como entidades unas,
 * de pleno direito: são criadas, manipuladas e escritas sem nunca se vislumbrarem
 * as suas partes constituintes (não aparecem no {@code main} quaisquer
 * referências aos atributos {@link Fraction#num} ou {@link Fraction#den}).
 * <P>
 * É um bom exemplo de abstracção de dados.
 * <P>
 * As restantes funções também são bastante elegantes:
 * <ul>
 * <li> são curtas;
 * <li> fáceis de ler e compreender;
 * <li> têm propósitos bem definidos e distintos entre si, permitindo
 *      combiná-las para resolver inúmeros problemas.
 * </ul>
 * <P>
 * Este último ponto é particularmente importante porque promove a
 * reutilizabilidade das funções dentro do programa:
 * Poderíamos ter escrito uma função que adicionasse duas frações e imprimisse
 * o resultado em vez de o devolver, mas não a poderíamos reutilizar para
 * calcular x*(y+x), por exemplo.
 * <P>
 * Apesar disto, se quisermos reutilizar estas funções noutro programa que
 * lide com fracções, a única forma seria fazer "copy and paste"
 * para outro ficheiro.
 * Isto implica redundância: código repetido, neste caso não no mesmo
 * programa, mas em múltiplos programas.
 * Essa situação não é nada aconselhável porque qualquer correcção ou extensão
 * que façamos no futuro a estas funções deverá implicar a alteração do
 * código de todos os programas em que estiverem copiadas.
 * Uma tarefa ingrata e sujeita a falhas.
 * <P>
 * Resumo da versão 2: Programa estruturado.
 * <P>
 * Pontos positivos:
 * <ul>
 * <li> Usa funções (abstração algorítmica).
 * <li> Usa um novo tipo de dados (registo Fraction) para estruturar os dados.
 * </ul>
 * Pontos fracos:
 * <ul>
 * <li> A única forma de reutilizar o tipo de dados e funções associadas
 *      noutro programa seria fazer "copy and paste" para outro ficheiro.
 * </ul>
 * <P>
 * Para uma solução melhor, avance para a próxima versão.
 * @see v3 Versão v3
 * <P>
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class FractionCalculator {
  /** A função principal.  [ref3]
   * <P>
   * O código desta função está muito próximo de uma
   * descrição algorítmica de alto nível.
   *
   * @param args  array dos argumentos recebidos pelo programa.
   *              Deverão ser 3: fração1, operador, fração2.
   */
  public static void main(String[] args) {
    if (args.length != 3) {
      err.println("Uso: java v2.FractionCalculator <fraction1> <operation> <fraction2>");
      exit(1);
    }

    String frac1 = args[0];
    String op = args[1];
    String frac2 = args[2];

    Fraction x;
    Fraction y;
    Fraction z = new Fraction();

    // 1) definir fracções (a partir dos argumentos);
    x = fractionFromString( frac1 );
    y = fractionFromString( frac2 );

    // 2) executar a operação;
    switch (op) {
      case "+":
        z = fractionAdd(x,y);  break;
      case "*":
        z = fractionMultiply(x,y);  break;
      case "-":
        //z = fractionSubtract(x,y);  break;
      case "/":
        //z = fractionDivide(x,y);  break;
      default:
        err.println("Operação inválida.");
        System.exit(1);
    }

    // 3) imprimir a operação solicitada e o resultado;
    out.printf("%s %s %s = %s\n",
        fractionToString(x), op, fractionToString(y), fractionToString(z));
  }

  // Funções que manipulam fracções:  [ref2]

  /** Converte uma string numa fracção.
   *  @param str a string a converter.
   *  @return fracção correspondente a str.
   */
  static Fraction fractionFromString(String str) {
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
  static String fractionToString(Fraction f) {
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
   *  <P>
   *  Esta implementação é simples e correcta, mas não garante que o
   *  resultado fique na forma mais reduzida (de denominador mínimo).
   *  Poderá ser melhorada numa versão futura.
   *  <P>
   *  @param a multiplicador.
   *  @param b multiplicando.
   *  @return fracção produto de a * b.
   */
  static Fraction fractionMultiply(Fraction a, Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = a.num*b.num;
    r.den = a.den*b.den;
    return r;
  }

  /** Adiciona fracções (a + b).
   *  Esta implementação é simples e correcta, mas não garante que o
   *  resultado fique na forma mais reduzida (de denominador mínimo).
   *  Poderá ser melhorada numa versão futura.
   *  <P>
   *  @param a primeira parcela.
   *  @param b segunda parcela.
   *  @return fracção soma de a + b.
   */
  static Fraction fractionAdd(Fraction a, Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = a.num*b.den + a.den*b.num;
    r.den = a.den*b.den;
    return r;
  }

}

/**
 * Tipo de dados representando uma fracção - Versão 2.
 * <P>
 * É simplesmente um registo com dois campos inteiros. [ref1]
 */
class Fraction {
  /** Numerador */
  int num = 0;
  /** Denominador */
  int den = 1;
  // Quando criada, uma fracção é inicializada por defeito a zero (0/1)
}

