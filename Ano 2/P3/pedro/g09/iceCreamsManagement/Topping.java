package g09.iceCreamsManagement;

/**
 * Topping
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Topping extends GeladoDecorator {

	// Instance Fields
	private String toppingName;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param g
	 * @param name name of the topping
	 */
	public Topping (Gelado g, String name) {
		super(g);
		toppingName = name;
	}

	// Getter
	/**
	 * @return the toppingName
	 */
	public String getToppingName() {
		return toppingName;
	}

	// Other Methods
	@Override
	public String toString() {
		StringBuilder b = new StringBuilder();
		b.append(g.toString());
		b.append(" com ");
		b.append(toppingName);
		return b.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((toppingName == null) ? 0 : toppingName.hashCode());
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
		Topping other = (Topping) obj;
		if (toppingName == null) {
			if (other.toppingName != null) {
				return false;
			}
		} else if (!toppingName.equals(other.toppingName)) {
			return false;
		}
		return true;
	}

}
