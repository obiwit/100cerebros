/*
 * Agenda.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

public class Agenda {
	private int numTasks, increment = 100;
	private Tarefa[] compromissos = new Tarefa[increment];
	
	/* Adds a new task to the task list. The array is expanded only when when needed
	 * The said array could also be expanded each time a new task is created */
	
	public void novaTarefa(Tarefa tarefa) {
		numTasks++;
		
		if (numTasks > compromissos.length) {
			Tarefa[] temp = new Tarefa [compromissos.length+increment];
			System.arraycopy(compromissos, 0, temp, 0, compromissos.length);
			temp[compromissos.length] = tarefa;
			compromissos = temp;
		}
		
		else {
			compromissos[numTasks-1] = tarefa;
		}		
	}
	
	// Returns array values between dates x and z
	public Tarefa[] compromissos(Data1 x, Data1 y){
		sortArray();
		Tarefa[] temp = new Tarefa[compromissos.length];
		
		int j = 0;
		
		// A task is inside the date range [x,y] if its start date is between x and y OR if its end date is between x and y 
		for (int i = 0; i < numTasks; i++) {
			if ((compromissos[i].start.maiorIgualDoQue(x) && compromissos[i].start.menorIgualDoQue(y)) || (compromissos[i].end.maiorIgualDoQue(x) && compromissos[i].end.menorIgualDoQue(y))) {
				temp[j] = compromissos[i];
				j++;		// counts number of valid tasks
			}
		}
		
		Tarefa[] filtered_compromissos = new Tarefa[j];
		System.arraycopy(temp, 0, filtered_compromissos, 0, j);
		
		return filtered_compromissos;
	}
	
	public void escreve() {
		sortArray();
		for (int i = 0; i < numTasks; i++) {
			compromissos[i].escreve();
		}
	}
	
	private void sortArray() {
		for(int i = 0; i < numTasks; i++)
	         for(int j = i+1; j < numTasks; j++)
	           if (compromissos[j].start.menorDoQue(compromissos[i].start))
	           {
	              Tarefa tmp = compromissos[i];
	              compromissos[i] = compromissos[j];
	              compromissos[j] = tmp;
	           }
	}
}
