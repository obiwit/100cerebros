/*
 * Tarefa.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

package aula4;
public class Tarefa {
	Data start, end;
	String text;
	
	//CTORS new Tarefa(inicio, fim, texto);
	public Tarefa (Data inicio, Data fim, String texto) {
		
		this.start = inicio;
		this.end = fim;
		this.text = texto;
		
		assert this.end.menorDoQue(this.start) : "End date can't be before start date";
		assert !this.text.equals(""): "Tasks must have non-empty text";
	}
	
	//escreve()
	public void escreve() {
		this.start.printData();
		System.out.print(" <-> ");
		this.end.printData();
		System.out.print(": "+ this.text);
		System.out.println("");
	}
	
}
