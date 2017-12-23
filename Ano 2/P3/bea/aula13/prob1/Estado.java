package aula13.prob1;

public class Estado extends Regiao {
	private Localidade capital;
	
	public Estado(String nome, int population, Cidade capital) { //Localidade capital) {
		super(nome, population);
		
//		if (!capital.getTipo().equals(TipoLocalidade.Cidade))
//			throw new IllegalArgumentException("Capital Invalida");
		
		this.capital = capital;
		
	}

	public Localidade getCapital() {
		return capital;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + ", Capital: " + capital;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((capital == null) ? 0 : capital.hashCode());
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
		Estado other = (Estado) obj;
		if (capital == null) {
			if (other.capital != null) {
				return false;
			}
		} else if (!capital.equals(other.capital)) {
			return false;
		}
		return true;
	}
	
}
