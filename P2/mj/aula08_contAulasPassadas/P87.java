
import static java.lang.System.*;
import p2utils.*;

public class P87
{
  // Coloca números inteiros da linha de comando num SortedArray.

  // Experimente, por exemplo:
  //    java -ea P87 8 31 - 4231 6 12123 64 - 213 2123 12 - 612 10

  public static void main(String[] args)
  {
    SortedArray<Integer> lst = new SortedArray<Integer>(args.length);

    for (int i=0; i<args.length; i++) {
      try {
        lst.insert(Integer.parseInt(args[i]));
      } catch (NumberFormatException e) {
        lst.removeFirst();
      }
    }
    out.println(lst.isSorted());

    // Verifica se os números 1, 10 e 30 pertencem à lista
    out.println(lst.contains(1));
    out.println(lst.contains(10));
    out.println(lst.contains(30));
    // acrescentar mais testes se necessário

    // Teste da função toString()
    out.println(lst.toString());

    SortedArray<Integer> lst2 = new SortedArray<Integer>(3);
    lst2.insert(999);
    lst2.insert(9);
    lst2.insert(99);
    
    // Teste das função merge()
    SortedArray<Integer> lst3 = lst.merge(lst2);
    out.println(lst3.toString());

    // Retira elementos de lst e confirma que estão em lst3
    while (!lst.isEmpty()) {
      assert lst3.contains(lst.first());
      lst.removeFirst();
    }
    // Retira elementos de lst2 e confirma que estão em lst3
    while (!lst2.isEmpty()) {
      assert lst3.contains(lst2.first());
      lst2.removeFirst();
    }
  }
}

