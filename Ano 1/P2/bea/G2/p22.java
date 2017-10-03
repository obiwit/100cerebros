//import pt.ua.prog2.*;
import pt.ua.prog2.Contacto;
import java.util.*;

public class p22 {
	
	static Scanner input = new Scanner(System.in);

	public static void main(String[] args) {
		Contacto[] cl = new Contacto[7];
		cl[0] = new Contacto("Ana", "978676760");
		cl[1] = new Contacto("Rita", "867367834", "rita@gmail.com");
		cl[2] = new Contacto("Paulo", "897476388", "paulo@hotmail.com");
		cl[3] = new Contacto("Carlos", "674767867");
		/*for (int i = 0; i < cl.length; i++)
		{
		  System.out.println(cl[i].nome() + 
			  ": " + cl[i].telefone() + 
			  "; " + cl[i].eMail());
		}*/
		
		// more contacts generation
		for(int i = 4; i < 7; i++) {
			System.out.print("Nome: ");
			String nome = input.nextLine();
			System.out.print("Telefone: ");
			String telefone = input.nextLine();
			System.out.print("Email: ");
			String email = input.nextLine();
			System.out.println();
			cl[i] = new Contacto(nome, telefone, email);
		}
		
		listarContactos(cl);
		System.out.printf("Contactos: %d", Contacto.numContactos());

	}
	
	public static void listarContactos(Contacto[] contactos) {
		System.out.println("Listagem:");
		for(int i = 0; i < contactos.length; i++) {
			contactos[i].imprimirContacto();
		}
	}
}
