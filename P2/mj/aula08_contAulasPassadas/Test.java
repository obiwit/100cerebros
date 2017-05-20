import java.util.*;
public class Test {

   public static void main(String args[]) {
     
      int result;
      
      String str1 = "Strings are immutable";
      String str2 = "Strings are immutable";
      String str3 = "Integers are not immutable";
       
      System.out.println("str1: "+str1); 
      System.out.println("str2: "+str2); 
      System.out.println("str3: "+str3);
      
      result = str1.compareTo( str2 ); 
      System.out.println("str1.compareTo( str2 )" + result);  //str1==str2 0
      
      result = str3.compareTo( str2 );
      System.out.println("str3.compareTo( str2 )" + result);  //str2<str3 negativo
      
      result = str2.compareTo( str3 );
      System.out.println("str2.compareTo( str3 )" + result); //str3>str2 positivo
      
      System.out.println("----------------------------------------");
      
      Integer a = 1;
      Integer c = 2;
      
      System.out.println("a: "+a); 
      System.out.println("c: "+c);
      
      result = a.compareTo( a ); 
      System.out.println("a.compareTo( a )" + result);  //a==a 0
       
      result = c.compareTo( a );
      System.out.println("c.compareTo( a )" + result); //a<c negativo
      
      result = a.compareTo( c );
      System.out.println("a.compareTo( c )" + result);  //c>a positivo
      
      System.out.println("----------------------------------------");
      
      Double b = 1.0;
      Double d = 2.0;
      
      System.out.println("b: "+b); 
      System.out.println("d: "+d);
      
      result = b.compareTo( b ); 
      System.out.println("b.compareTo( b )" + result);  //b==b 0
       
      result = d.compareTo( b );
      System.out.println("d.compareTo( b )" + result); //b<d negativo
      
      result = b.compareTo( d );
      System.out.println("b.compareTo( d )" + result);  //d>b positivo
      
      
   }
}

