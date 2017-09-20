package v1;

import static java.lang.System.*;

/**
 * Calculadora com fracções - Versão 1.
 * <P>
 * Pretendemos fazer uma calculadora simples que trabalhe com fracções
 * (números racionais, por exemplo 3/4 ou 1/7) de forma exacta.
 * O programa deverá receber três parâmetros: duas fracções e uma operação (+,-,*,/)
 * e deve apresentar o resultado correspondente (uma fracção também).
 * <P>
 * Por exemplo, o comando
 * <pre><code>
 *   java v1.FractionCalculator 3/4 + 1/7
 * </code></pre>
 * deverá produzir o resultado
 * <pre><code>
 *   (3/4) + (1/7) = (25/28).
 * </code></pre>
 * <P>
 * Nesta primeira versão, o programa é monolítico:
 * está tudo concentrado numa única função (ver {@link #main main}).
 * <P>
 * Pontos fracos:
 * <ul>
 * <li> A função é difícil de compreender porque inclui código referente
 *      a múltiplos níveis de decomposição algorítmica.
 * <li> Há claramente redundância no código:
 *      veja-se a interpretação dos argumentos ou
 *      a impressão da operação e resultado
 * <li> Não há uma relação forte entre as duas variáveis que representam cada fracção;
 *      apenas os nomes bem escolhidos revelam essa relação.
 * </ul>
 * <P>
 * A próxima versão resolve esses problemas.
 * @see v2 Versão v2
 * <P>
 * @author João Manuel Rodrigues
 * 2007-2017
 * @author Miguel Oliveira e Silva
 * 2010
 */

public class FractionCalculator {
  /** A função principal que faz tudo.
   * <P>
   * (Sugestão: pode ver o código da função clicando no seu nome.)
   * <P>
   * Cada fracção é representada por duas variáveis inteiras:
   * uma para o numerador, outra para o denominador.
   * A função é longa e difícil de perceber numa leitura rápida.
   * Felizmente alguns comentários ajudam a identificar o primeiro nível de
   * decomposição do algoritmo:
   * <ol>
   * <li> definir fracções;
   * <li> executar a operação;
   * <li> imprimir a operação solicitada e o resultado.
   * </ol>
   *
   * @param args  array dos argumentos recebidos pelo programa.
   *              Deverão ser 3: fração1, operador, fração2.
   */
  public static void main(String[] args) {
    if (args.length != 3) {
      err.println("Uso: java v1.FractionCalculator <fraction1> <operation> <fraction2>");
      exit(1);
    }

    String frac1 = args[0];
    String op = args[1];
    String frac2 = args[2];

    int x_num, x_den;  // numerador e denominador do primeiro operando
    int y_num, y_den;  // numerador e denominador do segundo operando
    int z_num=0, z_den=1;  // numerador e denominador do resultado

    int p;
    String str;

    // 1) definir fracções (a partir dos argumentos);
    p = frac1.indexOf('/');  // descobre o sinal de fracção
    if (p>=0) { // se encontrar, extrai numerador e denominador
      x_num = Integer.parseInt(frac1.substring(0,p));
      x_den = Integer.parseInt(frac1.substring(p+1));
    } else {    // senão, extrai numerador e deixa o denominador a 1
      x_num = Integer.parseInt(frac1);
      x_den = 1;
    }
    assert x_den != 0;

    p = frac2.indexOf('/');  // descobre o sinal de fracção
    if (p>=0) { // se encontrar, extrai numerador e denominador
      y_num = Integer.parseInt(frac2.substring(0,p));
      y_den = Integer.parseInt(frac2.substring(p+1));
    } else {    // senão, extrai numerador e deixa o denominador a 1
      y_num = Integer.parseInt(frac2);
      y_den = 1;
    }
    assert y_den != 0;

    // 2) executar a operação;
    switch (op) {
      case "+":
        // adicionar dá trabalho
        z_num = x_num*y_den + x_den*y_num; // Pode conduzir a overflows...
        z_den = x_den*y_den;
        break;
      case "*":
        // multiplicar é fácil
        z_num = x_num*y_num;
        z_den = x_den*y_den;
        break;
      case "-":
        // FALTA implementar!
      case "/":
        // FALTA implementar!
      default:
        err.println("Operação inválida.");
        exit(2);
    }

    // 3) imprimir a operação solicitada e o resultado;
    str = "(";
    if (x_den>0) { // depende do sinal do denominador...
      str += (x_num) + "/" + (x_den);
    } else {
      str += (-x_num) + "/" + (-x_den);
    }
    str += ")";
    out.print(str);
    
    out.printf(" %s ", op);
    
    str = "(";
    if (y_den>0) { // depende do sinal do denominador...
      str += (y_num) + "/" + (y_den);
    } else {
      str += (-y_num) + "/" + (-y_den);
    }
    str += ")";

    out.print(str + " = ");

    str = "(";
    if (z_den>0) { // depende do sinal do denominador...
      str += (z_num) + "/" + (z_den);
    } else {
      str += (-z_num) + "/" + (-z_den);
    }
    str += ")";
    out.println(str);
  }
}
