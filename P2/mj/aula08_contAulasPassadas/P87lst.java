
import static java.lang.System.*;
import p2utils.*;

public class P87lst
{
  // Coloca números inteiros da linha de comando numa SortedList.

  // Experimente, por exemplo:
  //    java -ea P87lst 8 31 - 4231 6 12123 64 - 213 2123 12 - 612 10

  public static void main(String[] args)
  {
    SortedList<Integer> lst = new SortedList<Integer>();

    for (int i=0; i<args.length; i++) {
      try {
        lst.insert(Integer.parseInt(args[i]));
      } catch (NumberFormatException e) {
        lst.removeFirst();
      }
    }
    out.println("lst.isSorted(): "+lst.isSorted());
   
    out.println();
	out.println("1 - Verifica se os números 1, 10 e 30 pertencem à lista: ");
    // Verifica se os números 1, 10 e 30 pertencem à lista
    out.println("lst.contains(1): "+lst.contains(1));
    out.println("lst.contains(10): "+lst.contains(10));
    out.println("lst.contains(30): "+lst.contains(30));
    // acrescentar mais testes se necessário

	out.println();
	out.println("2 - Teste da função toString(): ");
    // Teste da função toString()
    out.println("lst.toString(): "+lst.toString());

    SortedList<Integer> lst2 = new SortedList<Integer>();
    lst2.insert(999);
    lst2.insert(9);
    lst2.insert(99);
    out.println("lst2.toString(): "+lst2.toString());
    
    out.println();
    out.println("3 - Teste das função merge(): ");
    // Teste das função merge()
    SortedList<Integer> lst3 = lst.merge(lst2);
    out.println("lst3.toString(): "+lst3.toString());
    //out.println("lst3.print(): ");
    //lst3.print();

	out.println();
	out.println("4 - Retira elementos de lst e confirma que estão em lst3: ");
    // Retira elementos de lst e confirma que estão em lst3
    //out.println("fora while: !lst2.isEmpty(): "+!lst2.isEmpty());
    while (!lst.isEmpty()) {
	  //out.println("!lst3.isEmpty(): "+!lst3.isEmpty());
	  //~ out.println("lst3.first(): "+lst3.first());
	  //~ out.println("lst.contains(lst3.first()): "+lst.contains(lst3.first()));
      assert lst.contains(lst3.first());
      lst.removeFirst();
      //~ out.println("lst3.print(): ");
      //~ lst3.print();
      //~ out.println("lst.print(): ");
      //~ lst.print();
    }
    //~ out.println("lst.print(): ");
    //~ lst.print();
    //~ out.println("lst2.print(): ");
    //~ lst2.print();
    //~ out.println("lst3.print(): ");
    //~ lst3.print();
    
    out.println();
    out.println("5 - Retira elementos de lst2 e confirma que estão em lst3: ");
    // Retira elementos de lst2 e confirma que estão em lst3
    while (!lst2.isEmpty()) {
	  //~ out.println("lst2.print(): ");
	  //~ lst2.print();
	  //~ out.println("lst3.print(): ");
	  //~ lst3.print();
	  assert lst3.contains(lst2.first()) : "lst3.contains(lst2.first()) false" ;
      lst2.removeFirst();
    }
  }
}

