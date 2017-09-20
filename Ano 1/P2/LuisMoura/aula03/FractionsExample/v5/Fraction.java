package v5;

/**
 * Tipo de dados representando uma fracção - Versão 5.
 * <P>
 * Na versão anterior verificámos que quase todos os métodos da classe
 * {@link v4.Fraction} tinham pelo menos um parâmetro do próprio tipo
 * {@code Fraction}.
 * Esse é afinal um sintoma da forte coesão entre dados e operações que
 * justificou a sua associação num mesmo módulo.
 * Esse parâmetro comum ({@code f}) é invariavelmente a fracção
 * da qual se vai extrair alguma informação ({@code Fraction.toString(f)})
 * ou sobre a qual se vai aplicar alguma operação ({@code Fraction.add(f,b)}).
 * A linguagem Java (e outras) permite-nos realçar esta associação das
 * operações ao objecto a que se aplicam.
 * É o que fazemos nesta versão.
 * <P>
 * <b>Métodos de objecto (instância)</b>
 * <P>
 * Nesta versão a maioria dos métodos deixou de ser {@code static}.
 * Que implicações tem isso para a classe?
 * <ol>
 * <li>
 *    Os métodos perdem um parâmetro do tipo {@code Fraction}, que é
 *    substituído pelo objecto ao qual se aplica implicitamente a operação.
 *    Ver, por exemplo, o método {@link #toString()} {@link #toString() [ref1]}.
 * <li>
 *    No corpo desses métodos, o acesso aos atributos desse objecto implícito
 *    passa a fazer-se referindo directamente os nomes desses atributos,
 *    ({@code num} e {@code den}, em vez de {@code f.num} e {@code f.den})
 *    {@link #toString() [ref2]}.
 * <li>
 *    Se quisermos, podemos referir-nos ao objecto implícito como {@code this}
 *    e aos seus atributos como {@code this.num} e {@code this.den}.
 *    Nalguns casos pode mesmo ser necessário fazê-lo dessa forma
 *    {@link #set(int,int) [ref3]}.
 * </ol>
 * <P>
 * No entanto, um método mantém-se {@code static}
 * {@link #fromString(String) [ref4]}.
 * Quando uma operação não tem um destinatário (um alvo) óbvio, como é o
 * caso, pode ser preferível implementá-la como método {@code static}.
 * <P>
 * Se quisermos, podemos invocar:
 * <pre><code>
 *   y = x.fromString("7/3");
 * </code></pre>
 * mas a verdade é que o valor atribuído a {@code y} não depende minimamente
 * do valor de {@code x}, que até pode estar indefinido ou ser {@code null}.
 * Por isso é preferível invocar:
 * <pre><code>
 *   y = Fraction.fromString("7/3");
 * </code></pre>
 * <P>
 * <b>Protecção dos dados internos</b>
 * <P>
 * A segunda alteração introduzida neste módulo foi a qualificação dos
 * atributos como privados ({@code private})  {@link #num [ref5]}.
 * Isso implica que só os métodos desta classe lhes podem aceder.
 * Qualquer classe externa (como o programa principal) não os pode modificar
 * nem observar directamente.
 * <P>
 * Os restantes membros da classe foram declarados {@code public} de forma a
 * poderem ser usados por qualquer outra classe, mesmo de fora do pacote.
 * <P>
 * Também aproveitámos para definir novos métodos,
 * {@link #num()} e {@link #den()}, necessários para permitir a consulta dos
 * atributos entretanto protegidos {@link #num() [ref6]};
 * e {@link #set(int,int)} para pemitir a atribuição de um novo valor
 * à fracção.
 * Estes métodos permitem que os programas clientes possam continuar a
 * manipular fracções com detalhe, mas agora apenas de forma segura:
 * note-se a pré-condição exigida pelo método {@link #set set() [ref7]}.
 * <P>
 * Temos agora um módulo muito mais robusto, que garante a coerência dos
 * seus dados, agora protegidos pelo qualificador {@code private}.
 * <P>
 * Claro que continua a ser possível ter atributos {@code public},
 * mas o programador deve ponderar bem as consequências.
 * Também há lugar a métodos {@code private}, se só fizerem sentido para uso
 * interno da classe.
 * No entanto, o mais usual é que todos os atributos sejam {@code private}
 * e os métodos sejam {@code public}, eventualmente com algumas excepções. 
 * <P>
 * Para ver as implicações destas alterações nos programas clientes,
 * regresse ao programa {@link FractionCalculator v5/FractionCalculator.java}.
 * <P>
 * <b>Outras inovações - Construtores</b>
 * <P>
 * Para finalizar, aproveitámos para definir alguns construtores úteis:
 * <dl>
 * <dt>{@link #Fraction(int,int)}</dt>
 *   <dd>para criar uma fracção dados o numerador e o denominador;</dd>
 * <dt>{@link #Fraction(String)}</dt>
 *   <dd>para criar um fracção a partir de uma representação em forma de
 *   texto.</dd>
 * </dl>
 * As suas implementações são instrutivas.
 * <P>
 * <b>Como decidir se um método deve ser de classe ({@code static}) ou de objecto?</b>
 * <P>
 * Primeiro que tudo deve ter-se em conta as restrições que cada um desses
 * tipos de métodos implica (ver tabela).
 * <table border=1>
 * <caption>Restrições na implementação e utilização de métodos de objecto e
 * de classe (static).</caption>
 * <tr>
 * <th></th>
 * <th>Método de objecto (não {@code static})</th>
 * <th>Método de classe ({@code static})</th>
 * </tr>
 * <tr>
 * <th>Definição</th>
 * <td><code>public class Fraction {<br>&nbsp;  void f() {...}</code></td>
 * <td><code>public class Fraction {<br>&nbsp;  static void g() {...}</code></td>
 * </tr>
 * <tr>
 * <th>Implementação</th>
 * <td>Tem acesso a tudo na classe: métodos e atributos {@code static} ou não.
 *     <br>Pode usar o parâmetro implícito {@code this}.</td>
 * <td>Só tem acesso directo a métodos e atributos {@code static}.
 *     <br>Não pode usar {@code this}.</td>
 * </tr>
 * <tr>
 * <th>Invocação<br>na mesma classe</th>
 * <td>{@code f();      //} ou<br>{@code this.f();}</td>
 * <td>{@code g();          //} ou<br>{@code Fraction.g();}</td>
 * </tr>
 * <tr>
 * <th>Invocação<br>noutra classe</th>
 * <td>{@code Fraction x = new Fraction();}<br>{@code x.f();}</td>
 * <td>{@code Fraction.g(); //} ou<br>{@code x.g();}</td>
 * </tr>
 * </table>
 * <P>
 * Mesmo assim, por vezes poderá haver várias alternativas para implementar
 * uma certa funcionalidade, ora através de métodos de objecto,
 * ora através de métodos de classe ({@code static}).
 * A escolha deve ter em conta a clareza, a facilidade de utilização e
 * a coerência do conjunto, mas por vezes é também uma questão de gosto.
 * <P>
 * @author João Manuel Rodrigues
 * 2007-2017
 */

public class Fraction {
  /** Numerador (agora é privado [ref5]) */
  private int num = 0;
  /** Denominador (agora é privado [ref5]) */
  private int den = 1;
  // Quando criada, uma fracção é inicializada por defeito a zero (0/1)

  /** Cria uma nova fracção com o valor 0 (0/1).
   * <P>
   * Este era o construtor por defeito, mas agora temos que o declarar
   * explicitamente, porque temos outros construtores!
   */
  public Fraction() {}

  /** Cria uma nova fracção a partir de um par (numerador, denominador).
   *  <P>
   *  A implementação é trivial se recorrermos ao novo método {@link #set}.
   *  @param num numerador da nova fracção.
   *  @param den denominador da nova fracção.
   *  <b>Exige:</b> den != 0.
   */
  public Fraction(int num, int den) {
    assert den != 0;
    this.set(num, den);
  }

  /** Cria uma nova fracção a partir de uma String.
   *  <P>
   *  Isto é semelhante ao método {@link #fromString}, com a diferença de
   *  este ter de ser invocado com o operador {@code new}.
   *  <P>
   *  De facto, a implementação deste construtor foi adaptada da que estava
   *  nesse método.  Para evitar redundâncias, {@link #fromString} foi
   *  reimplementado recorrendo a este novo construtor.
   *  @param str String representando uma fracção válida no formato
   *  {@code "inteiro/inteiro"}.
   */
  public Fraction(String str) {
    int p = str.indexOf('/');  // descobre o sinal de fracção
    if (p>=0) { // se encontrar, extrai numerador e denominador
      num = Integer.parseInt(str.substring(0,p));
      den = Integer.parseInt(str.substring(p+1));
    } else {    // senão, extrai numerador e deixa o denominador a 1
      num = Integer.parseInt(str);
      den = 1;
    }
    assert den != 0;
  }
  // Funções que manipulam fracções:

  /** Converte uma string numa fracção.
   *  <P>
   *  Optámos por manter como método static porque não se aplica a
   *  uma fracção já existente, cria é uma nova fracção.  [ref4]
   *  (Reparem que não tinha nenhum parâmetro {@code Fraction}).
   *  <P>
   *  No corpo de uma função static não se pode aceder ao objecto
   *  {@code this} nem aos seus atributos {@code num} e {@code den},
   *  mas pode aceder-se a objectos passados como parâmetros ou criados
   *  localmente.
   *  Também se poderia aceder a eventuais atributos de classe (static).
   *  <P>
   *  Nota: este método foi reimplementado de forma trivial,
   *  recorrendo ao novo construtor {@link #Fraction(String)}, para evitar
   *  redundância (repetição de código).
   *  <P>
   *  @param str a string a converter.
   *  @return fracção correspondente a {@code str}.
   */
  public static Fraction fromString(String str) {
    return new Fraction(str);
  }

  /** Converte a fracção numa string.
   *  <P>
   *  Na versão anterior este era um método de classe (static):
   *  <pre><code>
   *    public static String toString(Fraction f) {
   *      ... f.num... f.den...  // ANTES: f.num, f.den
   *    }
   *  </code></pre>
   *  Agora é um método de objecto (não static) que se aplica directamente a
   *  uma determinada fracção e tem acesso directo aos seus atributos,
   *  pelo que já não necessita de um parâmetro f. [ref1]
   *  <pre><code>
   *    public String toString() {
   *      ... num... den...     // AGORA basta: num, den [ref2]
   *    }
   *  </code></pre>
   *  <P>
   *  Para usar este método sobre uma fracção x,
   *  antes era preciso escrever:
   *  <pre><code>
   *    Fraction.toString(x);  // ANTES
   *  </code></pre>
   *  agora basta:
   *  <pre><code>
   *    x.toString();  // AGORA
   *  </code></pre>
   *  A vantagem é evidente: é quase como se estivéssemos a aceder
   *  directamente a um atributo.
   *  <P>
   *  @return string com a representação desta fracção.
   */
  public String toString() {
    String s = "(";
    if (den>0) { // depende do sinal do denominador...
      s += (num) + "/" + (den);
    } else {
      s += (-num) + "/" + (-den);
    }
    s += ")";
    return s;
  }

  /** Multiplica esta fracção por outra (this * b).
   *  @param b multiplicando.
   *  @return fracção produto de this * b.
   */
  public Fraction multiply(Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = num*b.num;
    r.den = den*b.den;
    return r;
  }

  /** Adiciona esta fracção com outra (this + b).
   *  @param b fracção a adicionar a esta.
   *  @return fracção soma de this + b.
   */
  public Fraction add(Fraction b) {
    Fraction r = new Fraction();  // fracção para o resultado
    r.num = num*b.den + den*b.num;
    r.den = den*b.den;
    return r;
  }

  // Novos métodos que permitem a consulta aos atributos: [ref6]

  /** Devolve o numerador da fracção.
   *  Passou a ser necessário pois os atributos são agora privados [ref6].
   *  <P>
   *  @return numerador desta fração.
   */
  public int num() { return num; }

  /** Devolve o denominador da fracção.
   *  Passou a ser necessário pois os atributos são agora privados [ref6].
   *  <P>
   *  @return denominador desta fração.
   */
  public int den() { return den; }

  /** Atribui um novo valor (num/den) à fracção.
   *  <P>
   *  Permite alterar o valor da fracção, mas garantindo a pré-condição!
   *  <P>
   *  Na implementação deste método referimo-nos ao atributo
   *  {@code this.xxx} para não haver confusão com o parâmetro
   *  {@code xxx}.
   *  Se não houvesse ambiguidade entre os nomes de parâmetros e atributos
   *  poderia ter-se omitindo o prefixo {@code this.}
   *  como se fez nos outros métodos. [ref3]
   *  <P>
   *  @param num novo numerador
   *  @param den novo denominador
   *  <P>
   *  <b>Exige:</b> den != 0. [ref7]
   */
  public void set(int num, int den) {
    assert den != 0; // importante! [ref7]
    this.num = num;
    this.den = den;
  }

}
