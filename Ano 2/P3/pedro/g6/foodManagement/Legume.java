package g6.foodManagement;

/**
 * Legume
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Legume extends FoodVegetarian {

	private static final long serialVersionUID = -4125216714638972460L;

	// Constructor
	/**
	 * @param proteins
	 * @param calories
	 * @param weight
	 * @param name
	 */
	public Legume(int proteins, double calories, double weight, String name) {
		super(proteins, calories, weight, name);
	}

	// Getters
	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return "Legume " + super.toString();
	}

}
