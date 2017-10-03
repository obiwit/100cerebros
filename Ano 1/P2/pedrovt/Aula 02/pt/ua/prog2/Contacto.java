/*
 * Contacto.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */
package pt.ua.prog2;
public class Contacto {
	private String nome, telefone, eMail;
	static int count = 0;   
	
	public Contacto (String name, String phone) {
		if (verify(name)) {
			this.nome = name;
			this.telefone = phone;
			this.eMail = null;
			countContactos();
		}
		
		else {
			System.out.printf("\nContacto inválido");
			System.exit(-1);
		}
	}
	
	public Contacto (String name, String phone, String mail) {
		if (verify(name)) {
			this.nome = name;
			this.telefone = phone;
			this.eMail = mail;
			countContactos();
		}
		
		else {
			System.out.printf("\nContacto inválido");
			System.exit(-1);
		}
	}
	
	//Returns info
	public String nome() {
		return nome;
	}
	
	public String telefone() {
		return telefone;
	}
	
	public String eMail() {
		return eMail;
	}
	
	public void printInfo() {
		System.out.println(this.nome + ": " + this.telefone + "; " + this.eMail);
	}
	
	//Returns true if name is valid : validates name
	public boolean verify (String nome) {
		return !(nome.length() == 0);
	}
	
	//Counts number of created contacts
	static int countContactos () {
		return count++;
	}
	
	public static int count () {
		return count;
	}
	
}
