package v4;

import static java.lang.System.*;
import java.util.*;

/**
 * Calculadora com fracções - Versão 4.
 * <P>
 * Nesta versão a principal alteração é a junção dos métodos de
 * {@code FractionOps} à classe {@code Fraction}.
 * Porquê?  E como?  Veja em {@link Fraction v4/Fraction.java}.
 * Depois regresse aqui.
 * <P>
 * A classe {@code FractionOps} fica assim vazia e deixa de ter razão
 * de existir, pelo que se pode eliminar esse ficheiro.
 * <P>
 * Em consequência, o programa principal sofre algumas alterações:
 * onde estava {@code FractionOps}, passa a estar {@code Fraction}.
 * <P>
 * E basta. Compilando de novo fica tudo a funcionar como antes.
 * <P>
 * E o que ganhámos com isto tudo?
 * <P>
 * O módulo {@code Fraction} é agora uma entidade coesa internamente e
 * desacoplada do programa principal; características que indicam uma boa
 * modularidade da solução.
 * A modularidade promove a facilidade de leitura e compreensão do código,
 * a futura manutenção e extensão de funcionalidades e outros factores de
 * qualidade importantes.
 * <P>
 * @see v5 Versão v5
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
      err.println("Uso: java v4.FractionCalculator <fraction1> <operation> <fraction2>");
      exit(1);
    }

    String frac1 = args[0];
    String op = args[1];
    String frac2 = args[2];

    Fraction x;
    Fraction y;
    Fraction z = new Fraction();

    // 1) definir fracções (a partir dos argumentos);
    x = Fraction.fromString( frac1 );
    y = Fraction.fromString( frac2 );

    // 2) executar a operação;
    switch (op) {
      case "+":
        z = Fraction.add(x,y); break;
      case "*":
        z = Fraction.multiply(x,y); break;
      case "-":
        //z = Fraction.subtract(x,y); break;
      case "/":
        //z = Fraction.divide(x,y); break;
      default:
        out.println("Operação inválida.");
        System.exit(1);
    }

    // 3) imprimir a operação solicitada e o resultado;
    out.printf("%s %s %s = %s\n",
        Fraction.toString(x), op, Fraction.toString(y), Fraction.toString(z));
  }
}
