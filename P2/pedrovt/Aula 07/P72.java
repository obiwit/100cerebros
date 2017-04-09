
import static java.lang.System.*;
import java.io.*;
import p2utils.*;

public class P72
{

  public static void main(String[] args) throws IOException
  {
    LinkedList<Integer> lst = new LinkedList<Integer>();

    for(int i=0; i<10; i++) {
      lst.addFirst(i);
      lst.addLast(100+i);
    }
    out.println(lst.first());
    
    // Tests for get
    /*out.println("START OF THE LIST");
    lst.print();
    out.println("END OF THE LIST");
    out.println("Element 7 of the list:  " + lst.get(7));*/
    
    lst.removeFirst();

    LinkedList<Integer> cln = lst.clone();

    out.println(cln.first());

    LinkedList<Integer> rev = cln.reverse();

    out.println(rev.first());

    out.println(rev.contains(5));
    rev.remove(5);
    out.println(rev.contains(5));
    
    // Concatenate ----------------------------------------------------------
    LinkedList<Integer> another = new LinkedList<Integer>();
    another.addFirst(123);
    another.addFirst(999);
    
    /* Tests
    out.println("START OF THE LIST another");
    another.print();
    out.println("END OF THE LIST another");
    */
    
    // ----------------------------------------------------------
    LinkedList<Integer> conc = rev.concatenate(another);
    
    /* Tests
    out.println("START OF THE LIST conc");
    conc.print();
    out.println("END OF THE LIST");
	*/
    
    for(int p=0; p<conc.size(); p++) 
      out.println(conc.get(p));
  }
}
