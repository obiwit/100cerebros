package g09.iceCreamsManagement;

/**
 * GeladoDecorator
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public abstract class GeladoDecorator implements Gelado {

	// Non-Static Fields
	protected Gelado g;

	// Constructor
	public GeladoDecorator(Gelado g) {
		this.g = g;
	}

	// Setters
	@Override
	public void base(int num) {
		g.base(num);
	}

	// Other Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((g == null) ? 0 : g.hashCode());
		return result;
	}

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
		GeladoDecorator other = (GeladoDecorator) obj;
		if (g == null) {
			if (other.g != null) {
				return false;
			}
		} else if (!g.equals(other.g)) {
			return false;
		}
		return true;
	}



}
