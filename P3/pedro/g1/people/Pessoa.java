package g1.people;

/**
 * Pessoa
 * 
 * @author Pedro Teixeira 84715
 */

public class Pessoa {

	// Instance Fields
	private String nome;
	private int cc;
	private Data dataNasc;
	
	// Constructor
	/**
	 * 
	 * @param nome
	 * @param cc CC Card Number
	 * @param dataNasc Birthdate (DD-MM-YYYY) 
	 */
	public Pessoa (String nome, int cc, Data dataNasc) {
		this.nome  = nome;
		this.cc   = cc;
		this.dataNasc = dataNasc;
	}
	
	// Getters
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}

	/**
	 * @return the cc
	 */
	public int getNum() {
		return cc;
	}

	/**
	 * @return the dataNasc date
	 */
	public Data getDataNasc() {
		return dataNasc;
	}
	
	@Override
	public String toString() {
		// Used StringBuilder to create the String more effiently (ie without using 
		// concatenation, which means creating several "auxiliary" Strings)
		StringBuilder builder = new StringBuilder();
		
		builder.append(nome);
		
		builder.append(", CC Card Number ");
		builder.append(cc);
		
		builder.append(", born in ");
		builder.append(dataNasc);
		
		return builder.toString();
	}
	
}
