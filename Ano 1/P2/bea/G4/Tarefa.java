/*
 * Tarefa.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 */

public class Tarefa {
	Data begin, end;
	String task;
	
	Tarefa(Data begin, Data end, String task) {
		assert begin.prevDate(end);
		assert !(task.equals(""));
	
		this.begin = begin;
		this.end = end;
		this.task = task;
		
	}
	
	public void escreve() {
		begin.writeDate();
		System.out.printf(" <-> "); 
		end.writeDate();
		System.out.printf(": %s\n", task);
	}
}

