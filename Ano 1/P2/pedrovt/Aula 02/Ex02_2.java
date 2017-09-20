
/*
 * Ex02_2.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import pt.ua.prog2.*;
import java.util.Scanner;

public class Ex02_2 {
	
	static Scanner read = new Scanner (System.in);
	
	public static void main(String[] args) {
		
		//Gets number of contacts to read
		System.out.printf("Gestor de contactos\n-------------------\nIntroduza o número de contactos a ler: ");
		int n = read.nextInt();
		
		printData(getData(n));
		
	}
	
	//Creates array of contacts
	public static Contacto[] getData (int n) {
		Contacto[] cl = new Contacto[n];
		
		for (int i = 0; i < cl.length; i++) {
			System.out.printf("\nNome: ");
			String name = read.next();
			System.out.printf("Telemóvel: ");
			String phone = read.next();
			System.out.printf("Email: ");
			String email = read.next();
			cl[i] = new Contacto(name, phone, email);
		}
		
		return cl;
	}
	
	//Prints array
	public static void printData (Contacto[] array) {	
		
		System.out.println();
		for (int i = 0; i < array.length; i++) {
			array[i].printInfo();
		}
	
		System.out.printf("Contactos: %d", Contacto.count());
	}
}


