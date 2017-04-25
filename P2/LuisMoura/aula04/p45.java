import static java.lang.System.*;
import number.Fraction; // Usa o tipo Fraction!

/**
 * Calculadora com fracções.
 * Semelhante a FractionCalculator da aula03.
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class p45 {
  /** A função principal.
   *
   * @param args  array dos argumentos recebidos pelo programa.
   *              Deverão ser 3: fração1, operador, fração2.
   */
  public static void main(String[] args) {
    if (args.length != 3) {
      err.println("Uso: java -ea p45 <fraction1> <operation> <fraction2>");
      exit(1);
    }

    String frac1 = args[0];
    String op = args[1];
    String frac2 = args[2];

    Fraction x;
    Fraction y;

    // 1) definir fracções (a partir dos argumentos);
    x = Fraction.parseFraction( frac1 );
    y = Fraction.parseFraction( frac2 );

    String result = "";
    // 2) executar a operação;
    switch (op) {
      case "+":
        result += x.add(y);  // .toString() é invocado implicitamente!
        break;
      case "*":
      case "x":
        result += x.multiply(y); break;
      case "-":
        result += x.subtract(y); break;
      case "/":
        result += x.divide(y); break;
      case "=":
        result += x.equals(y); break;
      case "<":
        // result += x.compareTo(y) < 0; break;  // descomente qdo fizer 4.6
      default:
        out.println("Operação inválida.");
        System.exit(1);
    }

    // 3) imprimir a operação solicitada e o resultado;
    out.printf("%s %s %s = %s\n", x, op, y, result);
  }
}
