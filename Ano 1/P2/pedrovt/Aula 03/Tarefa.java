/*
 * Tarefa.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

public class Tarefa {
	Data1 start, end;
	String text;
	
	//CTORS new Tarefa(inicio, fim, texto);
	public Tarefa (Data1 inicio, Data1 fim, String texto) {
		this.start = inicio;
		this.end = fim;
		this.text = texto;
	}
	
	//escreve()
	public void escreve() {
		this.start.escreve();
		System.out.print(" <-> ");
		this.end.escreve();
		System.out.print(": "+ this.text);
		System.out.println("");
	}
	
}
