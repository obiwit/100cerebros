package v5;

import static java.lang.System.*;
import java.util.*;

/**
 * Calculadora com fracções - Versão 5.
 * <P>
 * Nesta versão quase todos os métodos de {@link Fraction} deixaram de
 * ser {@code static}.  Porquê?  Ver {@link Fraction v5/Fraction.java}.
 * <P>
 * Quais as consequências no programa cliente?
 * <P>
 * Os métodos passam a aplicar-se aos objectos do tipo Fraction,
 * por exemplo [ref1]:
 * <pre><code>
 *   x.toString();
 * </code></pre>
 * em vez de serem "aplicados" à classe, passando o objecto como parâmetro:
 * <pre><code>
 *   Fraction.toString(x);
 * </code></pre>
 * <P>
 * Vantagens?
 * <ul>
 * <li> O objecto a que se aplica a operação fica claramente identificado,
 *      em vez de ser apenas um parâmetro.
 * <li> Consultas como {@code y.toString()} ficam sintaticamente semelhantes
 *      a meros acessos a atributos.
 * <li> Podemos considerar os novos métodos como uma extensão do conceito de
 *      "campo" de um registo: passámos a ter campos calculados em vez de
 *      armazenados.
 * </ul>
 * Algum código beneficia bastante com a mudança.
 * <P>
 * Outra alteração fundamental foi a protecção dos atributos do
 * tipo {@link Fraction} (ver v5/Fraction.java).
 * <P>
 * A consequência importante é que passou a ser impossível alterar
 * directamente os atributos de uma fracção num programa cliente.
 * Por exemplo, deixou de ser possível fazer:
 * <pre><code>
 *   x.num = 1; x.den = n;  // NÃO PODE fazer assim!
 * </code></pre>
 * que corria o risco de deixar em {@code x} uma representação
 * inválida (se {@code n==0}), o que se iria repercutir em resultados
 * incorrectos, mas que poderiam passar despercebidos durante muito tempo,
 * sabe-se lá com que consequências.
 * <P>
 * Agora se quisermos modificar uma fracção teremos de usar um método criado
 * especificamente com esse propósito:
 * <pre><code>
 *   x.set(1, n);
 * </code></pre>
 * o que tem a vantagem de interromper a execução caso falhe a pré-condição
 * {@code n!=0}, evitando propagar o erro ao resto do programa.
 * <P>
 * Para podermos, no programa, observar o numerador e o denominador de uma
 * dada fracção, é necessário agora recorrer a métodos de consulta criados
 * com esse propósito:
 * {@link Fraction#num()} e {@link Fraction#den()}.
 * É um pequeno preço a pagar pela segurança acrescida que ganhámos.
 * <P>
 * Temos agora a possibilidade de garantir a coerência das entidades do tipo
 * {@code Fraction} protegendo devidamente os acessos aos seus métodos com as
 * asserções apropriadas.
 * <P>
 * Esta é a última versão deste programa e do módulo Fraction (para já).
 * Ao longo das várias versões, mostrámos:
 * <ol>
 * <li> Um programa monolítico. (v1)
 * <li> Estruturação por abstração algorítmica (funções) e de dados (registos). (v2)
 * <li> Separação em módulos para potenciar a reutilizabilidade. (v3)
 * <li> Agregação de dados e operações para dar mais coesão ao módulo. (v4)
 * <li> Introdução de métodos de objecto e protecção dos seus dados. (v5)
 * </ol>
 * Certifique-se que percebeu bem estes conceitos e os aspectos técnicos
 * associados.
 * <P>
 * Daqui em diante produziremos programas e módulos análogos aos que temos
 * na versão 5.  Não faz sentido percorrer de novo todos os passos que demos
 * aqui, a não ser pelo interesse pedagógico, claro.
 * <P>
 * FIM.
 * <P>
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
      err.println("Uso: java v5.FractionCalculator <fraction1> <operation> <fraction2>");
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
        z = x.add(y); break;
      case "*":
        z = x.multiply(y); break;
      case "-":
        //z = x.subtract(y); break;
      case "/":
        //z = x.divide(y); break;
      default:
        out.println("Operação inválida.");
        System.exit(1);
    }

    // 3) imprimir a operação solicitada e o resultado;
    out.printf("%s %s %s = %s\n",
        x.toString(), op, y.toString(), z.toString());    // [ref1]
  }
}
