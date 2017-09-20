import static java.lang.System.*;
import java.util.Arrays;
import number.Fraction; // Usa o tipo Fraction

/**
 * Ordenação de fracções.
 */
public class p46 {
  public static void main(String[] args) {
    boolean ea = false;
    assert ea = true;  // An assert with side-effects? But for a good reason!
    if (!ea) {
      err.printf("Please run with enabled assertions:\n  java -ea p47\n");
      exit(1);
    }

    runTests();
    
    Fraction[] array = randomArray(20);
    out.println("Random array:");
    showArray(array);

    Arrays.sort(array);
    out.println("Sorted array:");
    showArray(array);
  }

  static void runTests() {
    Fraction x = randomFraction();
    Fraction y = randomFraction();
    Fraction x2 = new Fraction(-x.num(), -x.den());  // == x
    assert x.equals(x2);
    assert x.compareTo(x2) == 0;
    assert Integer.signum(x.compareTo(y)) == -Integer.signum(y.compareTo(x));
    assert Integer.signum(x2.compareTo(y)) == -Integer.signum(y.compareTo(x2));
    out.println("Tests OK.");
  }

  // Gera uma fração aleatória entre -100/1 e +100/1
  static Fraction randomFraction() {
    int n, d;
    n = (int)(Math.random()*201.0) - 100;
    do {
      d = (int)(Math.random()*201.0) - 100;
    } while (d == 0);  // avoid zero!
    return new Fraction(n, d);
  }

  // Gera um array com n frações aleatórias
  static Fraction[] randomArray(int n) {
    Fraction[] array = new Fraction[n];
    for (int i = 0; i < n; i++) {
      array[i] = randomFraction();
    }
    return array;
  }

  static void showArray(Fraction[] array) {
    String sep = "";
    for (int i = 0; i < array.length; i++) {
      if (i>0) {
        int d = array[i-1].compareTo(array[i]);
        sep = (d<0)? " < " : (d>0)? " > " : " = ";
      }
      out.printf("%s%s", sep, array[i]);
    }
    out.println();
  }
}
