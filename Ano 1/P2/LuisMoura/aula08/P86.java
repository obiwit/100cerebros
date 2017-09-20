
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

    SortedList<Pessoa> pessoas = new SortedList<Pessoa>();

    for(int i=0; i<args.length/4; i++) {
      try {
        int d = Integer.parseInt(args[4*i]);
        int m = Integer.parseInt(args[4*i+1]);
        int a = Integer.parseInt(args[4*i+2]);
        Pessoa pessoa = new Pessoa(new Data(d, m, a), args[4*i+3]);
        pessoas.insert(pessoa);
      }
      catch (NumberFormatException e) {
        out.println("Erro: formato inválido (informação não registada)");
      }
    }

    while(!pessoas.isEmpty()) {
      out.printf("%s - %d-%d-%d\n", pessoas.first().name(), pessoas.first().birthDay().dia(), pessoas.first().birthDay().mes(), pessoas.first().birthDay().ano());
      pessoas.removeFirst();
    }
    
    while ( !pessoas.isEmpty()) {
		out.println(pessoas.first());
		pessoas.removeFirst();
	}
  }
}


