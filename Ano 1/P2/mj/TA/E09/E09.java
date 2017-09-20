
import static java.lang.System.*;
import java.io.*;
import p2utils.*;

public class E09
{

   public static void main(String[] args) throws IOException
   {
      LinkedList<Integer> lst = new LinkedList<Integer>();

      for(int i=0; i<7; i++) {
         lst.addFirst(i);
         lst.addFirst(myRandom(8));
         lst.addLast(100+i);
      }

      out.println(lst.toString());

      out.println(lst.count(5));

      out.println(lst.cloneReplace(5,99).toString());

      out.println(lst.indexOf(5));

      out.println(lst.cloneSublist(7,14).toString());

      out.println(lst.cloneExceptSublist(7,14).toString());

      lst.removeSublist(7,14);
      out.println(lst.toString());
   }   

   static int myRandom(int n) {
      return (int)(Math.random()*n);
   }
}


