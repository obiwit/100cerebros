
import static java.lang.System.*;

import p2utils_aula8.*;

public class P85
{
  // teste das funções toString() e merge()
  public static void main(String[] args)
  {
    SortedList<Integer> lst = new SortedList<Integer>();

    for(int i=0; i<args.length; i++) {
      lst.insert(Integer.parseInt(args[i]));
    }

    out.println(lst.toString());
    
    SortedList<Integer> lst2 = new SortedList<Integer>();
    lst2.insert(999);
    lst2.insert(99);
    lst2.insert(9);
    out.println(lst.merge(lst2).toString());
    
  }
}

