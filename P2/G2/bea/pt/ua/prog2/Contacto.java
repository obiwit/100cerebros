/*
 * Contacto.java
 * 
 * Copyright 2017 Beatriz Borges <bea@ubuntu>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
package pt.ua.prog2;

public class Contacto {
	private String nome, telefone, eMail;
	
	// construtores
	public Contacto(String nome, String telefone) {
		if (verificar(nome)) {
			this.nome = nome;
			this.telefone = telefone;
			this.eMail = "";
			novaPessoa();
		} else {
			System.err.println("Contacto invalido!");
			System.exit(-1);
		}
    }
	public Contacto(String nome, String telefone, String eMail) {
		if (verificar(nome)) {
			this.nome = nome;
			this.telefone = telefone;
			this.eMail = eMail;
			novaPessoa();
		} else {
			System.err.println("Contacto invalido!");
			System.exit(-1);
		}
    }
    
    // metodos
    public String nome() {
		return nome;
	}
    public String telefone() {
		return telefone;
	}
    public String eMail() {
		return eMail;
	}
	private boolean verificar(String nome) {
		return !(nome.length() == 0); 
	}
	public void imprimirContacto() {
		System.out.printf("%s: %s; %s\n", nome, telefone, 
						  (eMail.equals(""))? "null": eMail);
	}
	
	
	// metodos e variaveis da classe
	static int numContacts = 0;
	private static void novaPessoa() {
		numContacts++;
	}
	public static int numContactos() {
		return numContacts;
	}
	
}

