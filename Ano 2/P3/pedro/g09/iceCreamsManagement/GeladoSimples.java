package g09.iceCreamsManagement;

/**
 * GeladoSimples
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class GeladoSimples implements Gelado {

	// Instance Fields
	private int numBase;
	private String flavour;

	// Constructor
	public GeladoSimples (String flavour) {
		this.flavour = flavour;
	}

	// Getters
	/**
	 * @return the numBase
	 */
	public int getNumBase() {
		return numBase;
	}

	/**
	 * @return the flavour
	 */
	public String getFlavour() {
		return flavour;
	}

	// Setter
	// name should be setNumBase, to follow convention I use, but I kept this name to ensure compatibility with the given code... 
	@Override
	public void base(int num) {		
		numBase = num;
	}

	// Inherited Methods from Object class
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(numBase);
		builder.append(" bola");
		if (numBase > 1)
			builder.append("s");
		builder.append(" de gelado de ");
		builder.append(flavour);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((flavour == null) ? 0 : flavour.hashCode());
		result = prime * result + numBase;
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
		GeladoSimples other = (GeladoSimples) obj;
		if (flavour == null) {
			if (other.flavour != null) {
				return false;
			}
		} else if (!flavour.equals(other.flavour)) {
			return false;
		}
		if (numBase != other.numBase) {
			return false;
		}
		return true;
	}






}
