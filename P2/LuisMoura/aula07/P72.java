
import static java.lang.System.*;
import java.io.*;
import p2utils.*;

public class P72 {

	public static void main(String[] args) throws IOException {
	out.println("Criar lista");
	out.println("\n");	
	LinkedList<Integer> lst = new LinkedList<Integer>();

	for(int i=0; i<10; i++) {
		lst.addFirst(i);
		lst.addLast(100+i);
	}
	out.println("Imprimir lista");	
	lst.print();
	out.println("Imprimir primeiro elemento da lista");	
	out.println(lst.first());
	out.println("Remover primeiro elemento da lista");
	out.println("\n");		
	lst.removeFirst();
	out.println("Clonar a lista");
	out.println("\n");	
	LinkedList<Integer> cln = lst.clone();
	out.println("Imprime clone da lista");	
	cln.print();
	out.println("Imprime primeiro elemento do clone");	
	out.println(cln.first());
	out.println("reverte lista");
	out.println("\n");		
	LinkedList<Integer> rev = cln.reverse();
	out.println("Imprime lista invertida");
	out.println(rev.last());
	out.println(rev.first());
	out.println("Imprime true se lista invertida contem elemento 5");	
	out.println(rev.contains(5));
	out.println("Remove elemento 5 da lista");	
	out.println("\n");	
	rev.remove(5);
	out.println("Imprime true se lista invertida contem elemento 5");	
	out.println(rev.contains(5));
	out.println("Criar nova lista");
	out.println("\n");		
	LinkedList<Integer> another = new LinkedList<Integer>();
	out.println("Adiciona first (123) e last (999) a nova lista");	
	out.println("\n");	
	another.addFirst(123);
	another.addFirst(999);
	out.println("Faz concatenacao da lista invertida com a nova lista");	
	LinkedList<Integer> conc = rev.concatenate(another);
	out.println("Imprime lista concatenada");
	conc.print();
	out.println("Em ciclo for imprime concatenacao da lista invertida com a nova lista con funcao get");		
	for(int p=0; p<conc.size(); p++) 
	out.println(conc.get(p));
	}
}
