import static java.lang.System.*;
import p2utils.*;

public class P86
{
  public static void main(String[] args){
	
    if (args.length % 4 != 0 || args.length == 0) {
      out.println("Erro: invalid number of arguments");
      out.println("use: java P86 d1 m1 y1 name1 d2 m2 y2 name2 ...");
      exit(1);
    }
    
    SortedList<Pessoa> list = new SortedList<Pessoa>();

    for(int i=0; i<args.length/4; i++) {
      try {
        int d = Integer.parseInt(args[4*i]);
        int m = Integer.parseInt(args[4*i+1]);
        int y = Integer.parseInt(args[4*i+2]);
        String name = args[4*i+3];   
       list.insert( new Pessoa(name, new Data(d, m, y)) );
      }
      catch (NumberFormatException e) {
        out.println("Erro: formato inválido (informação não registada)");
      }
    }

    list.print();
  }
}


