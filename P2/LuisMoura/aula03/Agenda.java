public class Agenda {
	
//--- Variaveis --------------------
	private int countTarefas = 0;
	private Tarefa[] tarefas = new Tarefa[0]; 

//--- novaTarefa (cria uma nova tarefa e acrescenta-a ao array tarefas)
	public void novaTarefa(Tarefa novaTarefa) {
		Tarefa[] temp = new Tarefa[++countTarefas];
		for (int i = 0; i < tarefas.length; i++) {
			if (tarefas.length == 0) {
				break;
			} else {
				temp[i] = tarefas[i];
			}
		}
		temp[countTarefas - 1] = novaTarefa;
		tarefas = temp;
	}
	
//--- imprime o array de tarefas, usando o modulo tarefas
	public void escreve() {
		for (int i = 0; i < tarefas.length; i++) {
			tarefas[i].escreve();
		}
	}
	
//--- cria uma array com as tarfeas compreendidas entre as datas dadas pelo programa	
	public Tarefa[] compromissos(Data d1, Data d2) {
		int count = 0;
		for (int i = 0, j = 0; i < tarefas.length; i++) {
			if (tarefas[i].inicio().maiorDoQue(d1) && tarefas[i].inicio().menorDoQue(d2)) {
				count++;
			}
		}
		Tarefa[] compromissos = new Tarefa[count];
		for (int i = 0, j = 0; i < tarefas.length; i++) {
			if (tarefas[i].inicio().maiorDoQue(d1) && tarefas[i].inicio().menorDoQue(d2)) {
				compromissos[j++] = tarefas[i];
			}
		}
		return compromissos ;
	}
}


