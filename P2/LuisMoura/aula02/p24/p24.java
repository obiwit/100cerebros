import pt.ua.prog2.*;
import java.util.*;

public class p24 {
	
	static Scanner read = new Scanner(System.in);
	public static void main(String[] args) {
		
		System.out.println("CRIACAO DE UMA LISTA DE 4 CONTACTOS\n");

		Contacto[] cl = new Contacto[4];
		for (int i = 0; i < 4; i++) {
			cl[i] = new Contacto();
			System.out.print("Nome: ");
			cl[i].setNome(read.nextLine());
			System.out.print("Telefone: ");
			cl[i].setTelefone(read.nextLine());
			System.out.print("Email: ");
			cl[i].setEmail(read.nextLine());
			if (cl[i].getNome().equals("")) {
				System.out.print("Contacto Invalido");
				System.exit(0);
			}
		}
		System.out.println();
		System.out.println("CONTACTO INTRODUZIDOS");
		for (int i = 0; i < 4; i++) {
			System.out.println(cl[i].getNome() + "; " + cl[i].getTelefone() + "; " + cl[i].getEmail());
		}
		System.out.print("Numero de contactos introduzidos: " + Contacto.COUNT);	
	}
}

