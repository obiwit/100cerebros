package e18;

import static java.lang.System.*;

public class TestContainers {
  public static void main(String[] args) {
    
    out.printf("\nTesting a ContainerStack\n");
    Container c1 = new Container("carrots");
    Container c2 = new Container("apples");
    Container c3 = new Container("bananas");
    Container c4 = new Container("oranges");
    Container c5 = new Container("rice");
    ContainerStack s1 = new ContainerStack(5);
    s1.push(c5); s1.push(c4); s1.push(c2); s1.push(c3); s1.push(c1);
    
    String t = s1.toString();
    out.printf("s1.toString()=%s\n", t);
    
    
    int p;
    p = s1.searchRec("carrots");
    out.printf("s1.searchRec(\"%s\")=%d\n", "carrots", p);
    p = s1.searchRec("apples");
    out.printf("s1.searchRec(\"%s\")=%d\n", "apples", p);
    p = s1.searchRec("nuts");
    out.printf("s1.searchRec(\"%s\")=%d\n", "nuts", p);
    out.printf("containersInStack()=[ ");
    Container[] a = s1.containersInStack();
    for (int i=0; i<a.length; i++) {
    	out.printf("%s ", a[i].toString());
    }
    out.printf("]\n");
    
    out.printf("\nTesting a ContainerTerminal\n");
    String[] types = {"a", "b", "c", "d", "b", "b", "a"};
    ContainerTerminal term1 = new ContainerTerminal(3, 4);
    for (String type: types) {
      term1.store(new Container(type));
    }
    term1.print();
    
    
    Container c;
    c = term1.retrieve("b");
    out.printf("retrieve(\"b\")=%s\n", c.toString());
    term1.print();
    c = term1.retrieve("b");
    out.printf("retrieve(\"b\")=%s\n", c.toString());
    term1.print();
    double avgops = term1.averageOpsPerContainer();
    out.printf("averageOpsPerContainer()=%f\n", avgops);
    
    out.printf("\nTesting another ContainerTerminal using arguments\n");
    int num = 3;
    int max = 5;
    ContainerTerminal term = new ContainerTerminal(num, max);
    for (String s: args) {
      if (s.charAt(0) == '-') {
        c = term.retrieve(s.substring(1));
        if (c == null) {
          err.printf("Container %s not found.\n", s.substring(1));
        } else {
          out.printf("Container %s retrieved\n", c.toString());
        }
      } else {
        term.store(new Container(s));
      }
      
      term.print();
    }
    
    
  }
  
  static {
    boolean enabled = false;  // are assertions enabled?
    assert enabled = true;    // yes! with side effects!
    if (!enabled) {
      err.printf("Please run the program with enabled assertions (-ea)!\n");
      exit(1);
    }
  }
  
}

