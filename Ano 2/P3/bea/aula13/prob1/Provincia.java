package aula13.prob1;

public class Provincia extends Regiao {
	private String governador;
	
	public Provincia(String nome, int population, String governador) {
		super(nome, population);
		this.governador = governador;
	}
	
	

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + ", Governador: " + governador;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((governador == null) ? 0 : governador.hashCode());
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
		Provincia other = (Provincia) obj;
		if (governador == null) {
			if (other.governador != null) {
				return false;
			}
		} else if (!governador.equals(other.governador)) {
			return false;
		}
		return true;
	}
	
}
