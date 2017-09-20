package v3;

import static java.lang.System.*;
import java.util.*;

/**
 * Calculadora com fracções - Versão 3.
 * <P>
 * Nesta versão, o programa foi distribuído por 3 ficheiros.
 * Este preserva a função principal do programa, mas tudo o que tem que ver
 * com fracções foi separado:
 * o tipo de dados foi colocado em {@link Fraction v3/Fraction.java}
 * e as funções sobre fracções foram colocadas em
 * {@link FractionOps v3/FractionOps.java}.
 * (Consulte esses ficheiros, p.f.)
 * <P>
 * Aqui só foi necessário alterar a invocação das funções (estáticas),
 * recorrendo às novas designações qualificadas com
 * o nome da nova classe a que agora pertencem:
 * <pre><code>
 *   FractionOps.add(x, y);
 * </code></pre>
 * em vez de:
 * <pre><code>
 *   fractionAdd(x, y);
 * </code></pre>
 * <P>
 * Agora já temos a desejada separação que permitirá a reutilização sem
 * redundância.
 * Mas podemos fazer melhor!
 * <P>
 * @see v4 Versão v4
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class FractionCalculator {
  /** A função principal.
   *
   * @param args  array dos argumentos recebidos pelo programa.
   *              Deverão ser 3: fração1, operador, fração2.
   */
  public static void main(String[] args) {
    if (args.length != 3) {
      err.println("Uso: java v3.FractionCalculator <fraction1> <operation> <fraction2>");
      exit(1);
    }

    String frac1 = args[0];
    String op = args[1];
    String frac2 = args[2];

    Fraction x;
    Fraction y;
    Fraction z = new Fraction();

    // 1) definir fracções (a partir dos argumentos);
    x = FractionOps.fromString( frac1 );
    y = FractionOps.fromString( frac2 );

    // 2) executar a operação;
    switch (op) {
      case "+":
        z = FractionOps.add(x,y); break;
      case "*":
        z = FractionOps.multiply(x,y); break;
      case "-":
        //z = FractionOps.subtract(x,y); break;
      case "/":
        //z = FractionOps.divide(x,y); break;
      default:
        out.println("Operação inválida.");
        System.exit(1);
    }

    // 3) imprimir a operação solicitada e o resultado;
    out.printf("%s %s %s = %s\n",
        FractionOps.toString(x), op, FractionOps.toString(y), FractionOps.toString(z));
  }

  // As funções para fracções sairam daqui!
  // Foram colocadas em FractionOps.java
}

// A definição do tipo Fraction foi colocada em Fraction.java
