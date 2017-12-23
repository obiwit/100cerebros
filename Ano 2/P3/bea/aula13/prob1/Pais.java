package aula13.prob1;

import java.util.Set;
import java.util.List;
import java.util.HashSet;
import java.util.Comparator;
import java.util.Collections;
import java.util.stream.Collectors;

public class Pais {
	
	// fields
	private String nome;
	private int populacao;
	private Localidade capital;
	private Set<Regiao> regioes;
	
	
	// constructors
	public Pais(String nome, Localidade capital) {
		this.nome = nome;
		this.capital = capital;
		this.regioes = new HashSet<>();
		populacao = 0;
	}
	public Pais(String nome) {
		this(nome, Localidade.NullCap);
	}
	
	// methods
	public void addRegiao(Regiao regiao) {
		if (regioes.add(regiao))
			populacao += regiao.getPopulation();
	}
	public void removeRegiao(Regiao regiao) {
		if (regioes.remove(regiao))
			populacao -= regiao.getPopulation();
	}
	public void sort(Comparator<Regiao> c) {
		List<Regiao> regionList = regioes.stream().collect(Collectors.toList());
		Collections.sort(regionList, c);
	}
	
	
	// getters
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}
	
	/**
	 * @return the capital
	 */
	public Localidade getCapital() {
		return capital;
	}
	
	/**
	 * @return the regioes
	 */
	public Regiao[] getRegioes() {
		return regioes.toArray(new Regiao[regioes.size()]);
	}
	
	// toString, equals, hashCode
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Pais: " + nome + ", Populacao: " + populacao + " (Capital: " + capital + ")";
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((capital == null) ? 0 : capital.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((regioes == null) ? 0 : regioes.hashCode());
		return result;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Pais other = (Pais) obj;
		if (capital == null) {
			if (other.capital != null) {
				return false;
			}
		} else if (!capital.equals(other.capital)) {
			return false;
		}
		if (nome == null) {
			if (other.nome != null) {
				return false;
			}
		} else if (!nome.equals(other.nome)) {
			return false;
		}
		if (regioes == null) {
			if (other.regioes != null) {
				return false;
			}
		} else if (!regioes.equals(other.regioes)) {
			return false;
		}
		return true;
	}
	
	
}
