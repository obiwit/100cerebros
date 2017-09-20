/*
 * Tarefa.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 */

import whatevs.Data;

public class Tarefa {
	Data begin, end;
	String task;
	
	Tarefa(Data begin, Data end, String task) {
		this.begin = begin;
		this.end = end;
		this.task = task;
	}
	
	public void escreve() {
		begin.escreve();
		System.out.printf(" <-> "); 
		end.escreve();
		System.out.printf(": %s\n", task);
	}
}

