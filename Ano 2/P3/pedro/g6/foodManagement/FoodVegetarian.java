package g6.foodManagement;

/**
 * FoodVegetarian
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public abstract class FoodVegetarian extends Food {

	private static final long serialVersionUID = -7034924993136011525L;

	// Object fields
	private String name;

	// Constructor
	/**
	 * @param proteins
	 * @param calories
	 * @param weight
	 * @param name
	 */
	public FoodVegetarian(int proteins, double calories, double weight, String name) {
		super(proteins, calories, weight);
		this.name = name;
	}

	// Getters
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	// Setters
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	// Methods
	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return name + "(Vegetarian)" + super.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		FoodVegetarian other = (FoodVegetarian) obj;
		if (name == null) {
			if (other.name != null) {
				return false;
			}
		} else if (!name.equals(other.name)) {
			return false;
		}
		return true;
	}

}
