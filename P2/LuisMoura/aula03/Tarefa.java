public class Tarefa {
	
//----- Variaveis ------------------------
	private Data inicio;
	private Data fim;
	private String texto;
	
//----- Construtores -------------------
	public Tarefa (Data inicio, Data fim, String texto) {
		this.inicio = inicio;
		this.fim = fim;
		this.texto = texto;
	}
//--- 'Getters'	
	public String texto() {
		return texto;
	}
	
	public Data inicio() {
		return inicio;
	}
	
	public Data fim() {
		return fim;
	}
//--- imprime uma tarefa
	public void escreve() {
		/*System.out.printf("%02d-%02d-%04d <-> %02d-%02d-%04d: %s",
							this.inicio.dia(), this.inicio.mes(), this.inicio.ano(),
							this.fim.dia(), this.fim.mes(), this.fim.ano(), this.texto);
		System.out.println();*/
		this.inicio.escreve();
		System.out.print(" <-> ");
		this.fim.escreve();
		System.out.print(": ");
		System.out.print(this.texto);
		System.out.println();
	}
}

