import static java.lang.System.*;

import p2utils_aula8.*;

public class P86 {
	public static void main(String[] args) {
		if (args.length % 4 != 0) {
			out.println("Erro: número de argumentos inválido");
			out.println("Utilização: java P86 d1 m1 a1 nome1 d2 m2 a2 nome2 ...");
			exit(1);
		}
		
		// list to save people
		SortedList<Pessoa> people = new SortedList<Pessoa>();

		// read values
		for(int i=0; i<args.length/4; i++) {
			try {
				int d = Integer.parseInt(args[4*i]);		// days
				int m = Integer.parseInt(args[4*i+1]);		// months
				int a = Integer.parseInt(args[4*i+2]);		// years
				if (Data.isValid(d, m, a)) {				// validates date
					Pessoa person = new Pessoa(new Data(d,m,a), args[4*i+3]); 
					people.insert(person);
				}
				else {
					out.println("Erro: data inválida (informação não registada)");
				}

			}
			catch (NumberFormatException e) {
				out.println("Erro: formato inválido (informação não registada)");
			}
		}
			
		// people.print();					// for testing purposes
		out.println(people);				// toString is automatically invoked
	}
}


