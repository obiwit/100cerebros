
import static java.lang.System.*;
import p2utils.*;

public class P86
{
  public static void main(String[] args)
  {
    if (args.length % 4 != 0) {
      out.println("Erro: número de argumentos inválido");
      out.println("Utilização: java P86 d1 m1 a1 nome1 d2 m2 a2 nome2 ...");
      exit(1);
    }

    //...

    for(int i=0; i<args.length/4; i++) {
      try {
        int d = Integer.parseInt(args[4*i]);
        int m = Integer.parseInt(args[4*i+1]);
        int a = Integer.parseInt(args[4*i+2]);
        //...
      }
      catch (NumberFormatException e) {
        out.println("Erro: formato inválido (informação não registada)");
      }
    }

    //...
  }
}


