package aula1.prob2;

public class Pessoa {
	// Fields
	private final String nome;
	private final int cc;
	private final Data dataNasc;

	// Constructors
	public Pessoa(String nome, int cc, Data dataNasc) {
		this.nome = nome;
		this.cc = cc;
		this.dataNasc = dataNasc;
	}

	// Methods
	public String toString() {
		return "Name: " + nome + "\nID number: " + cc + "\nBirthdate: " + dataNasc;
	}
	public boolean equals(Pessoa p) {
		return (nome == p.nome) && (cc == p.cc) && (dataNasc == p.dataNasc);
	}
	
	// Getters and Setters
	public String getNome() {
		return nome;
	}
	public int getCc() {
		return cc;
	}
	public Data getDataNasc() {
		return dataNasc;
	}

}
