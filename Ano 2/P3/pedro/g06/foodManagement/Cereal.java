package g06.foodManagement;

/**
 * Cereal
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Cereal extends FoodVegetarian {

	private static final long serialVersionUID = -3972635487758880009L;

	// Constructor
	/**
	 * @param proteins
	 * @param calories
	 * @param weight
	 * @param name
	 */
	public Cereal(int proteins, double calories, double weight, String name) {
		super(proteins, calories, weight, name);
	}

	// Getters
	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return "Cereal " + super.toString();
	}


}
