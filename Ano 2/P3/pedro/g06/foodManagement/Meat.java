package g06.foodManagement;

/**
 * Meat
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Meat extends Food {

	private static final long serialVersionUID = -321364500954485399L;

	// Object fields
	private MeatVariety variety;

	// Constructor
	/**
	 * 
	 * @param proteins
	 * @param calories
	 * @param weight
	 * @param variety
	 */
	public Meat (int proteins, double calories, double weight, MeatVariety variety) {
		super(proteins, calories, weight);
		this.variety = variety;
	}

	// Getters
	/**
	 * @return the MeatVariety
	 */
	public MeatVariety getVariety() {
		return variety;
	}

	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return "Meat " + variety + ", " + super.toString();
	}

	// Setters
	/**
	 * @param variety the MeatVariety to set
	 */
	public void setVariety(MeatVariety variety) {
		this.variety = variety;
	}

	// Methods
	/** 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((variety == null) ? 0 : variety.hashCode());
		return result;
	}

	/**
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
		Meat other = (Meat) obj;
		if (variety != other.variety) {
			return false;
		}
		return true;
	}

}
