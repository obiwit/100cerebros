
import static java.lang.System.*;
import p2utils.*;

public class P84
{
  // Introduz numa lista ordenada
  // os numeros inteiros dados na linha de comando
  // e verifica se os números 1, 10 e 30 pertencem à lista

  public static void main(String[] args)
  {
    SortedList<Integer> lst = new SortedList<Integer>();

    for(int i=0; i<args.length; i++) {
      lst.insert(Integer.parseInt(args[i]));
    }
    
    lst.insert(1);
    lst.insert(10);
    lst.insert(9);
    lst.insert(99);
    lst.insert(999);

    out.println(lst.contains(1));
    out.println(lst.contains(10));
    out.println(lst.contains(30));
    out.println(lst.contains(9));
    out.println(lst.contains(999));
    // acrescentar mais testes se necessário

    while(!lst.isEmpty()) {
      out.println(lst.first());
      lst.removeFirst();
    }
  }
}

