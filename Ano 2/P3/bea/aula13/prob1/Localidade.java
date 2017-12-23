package aula13.prob1;

public class Localidade extends Regiao {
	
	final static Localidade NullCap = new Localidade("Nao definida", 0, TipoLocalidade.Undefined);
	
	private TipoLocalidade tipo;
	
	public Localidade(String nome, int population, TipoLocalidade tipo) {
		super(nome, population);
		this.tipo = tipo;
	}
	
	public TipoLocalidade getTipo() { 
		return tipo;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		if (this == NullCap) return "*Indefinida*";
		return tipo + " " + super.toString();
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
		if (!super.equals(obj)) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Localidade other = (Localidade) obj;
		if (tipo != other.tipo) {
			return false;
		}
		return true;
	}
	
}
