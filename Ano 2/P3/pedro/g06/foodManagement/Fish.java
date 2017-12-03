package g06.foodManagement;

/**
 * Fish
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Fish extends Food {

	private static final long serialVersionUID = -8544052636110705768L;

	// Object fields
	private FishType type;

	// Constructor
	/**
	 * 
	 * @param proteins
	 * @param calories
	 * @param weight
	 * @param type
	 */
	public Fish (int proteins, double calories, double weight, FishType type) {
		super(proteins, calories, weight);
		this.type = type;
	}

	// Getters
	/**
	 * @return the FishType
	 */
	public FishType getType() {
		return type;
	}

	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return "Fish " + type + ", " + super.toString();
	}

	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

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
		Fish other = (Fish) obj;
		if (type != other.type) {
			return false;
		}
		return true;
	}

}