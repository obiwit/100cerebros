/*
 * Agenda.java
 * 
 * Copyright 2017 Beatriz Borges
 * 
 * 
 */

import whatevs.Data;

public class Agenda {
	// fields
	Tarefa[] tarefas;
	int numTarefas;
	
	Agenda() {
		tarefas = new Tarefa[10];
		numTarefas = 0;
	}
	
	public void novaTarefa(Tarefa tarefa) {
		// increase tasks' array size, if it's full
		if (numTarefas == tarefas.length) {
			Tarefa[] temp = new Tarefa[numTarefas + 10];
			System.arraycopy(tarefas, 0, temp, 0, numTarefas);
			tarefas = temp;
		}
		// add task to array
		tarefas[numTarefas++] = tarefa;
	}
	
	public Tarefa[] compromissos(Data begin, Data end) {
		Tarefa[] temp = new Tarefa[numTarefas];
		int tasks = 0;
		
		for(int i = 0; i < numTarefas; i++) {
			if(taskInRange(tarefas[i].begin, begin, end) 
			   || taskInRange(tarefas[i].end, begin, end)) {
				temp[tasks++] = tarefas[i];
			}
		}
		
		Tarefa[] tasksFinal = new Tarefa[tasks];
		System.arraycopy(temp, 0, tasksFinal, 0, tasks);
		
		return tasksFinal;
	}
	
	public void escreve() {
		for(int i = 0; i < numTarefas; i++) {
			tarefas[i].escreve();
		}
	}
	
	
	// should probably instead be in Tarefa.java
	public static boolean taskInRange(Data date, Data begin, Data end) {
		return ((date.maiorDoQue(begin) 
			    && date.menorDoQue(end)) 
			    || date.igualA(begin)
			    || date.igualA(end));
	}
}

