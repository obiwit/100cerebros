package g06.foodManagement;

/**
 * MealVegetarian
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class MealVegetarian extends Meal {

	private static final long serialVersionUID = 2208809737429559507L;

	// Constructor
	/**
	 * @param name
	 */
	public MealVegetarian (String name) {
		super(name);
	}

	// Getters
	@Override
	public String toString() {
		return super.toString() + " [Vegetarian]";
	}

	// Setters
	/**
	 * @param ingredient the ingredient to add
	 * @return {@code true} if the ingredient is added, else {@code false}
	 */
	@Override
	public boolean addIngredient (Food ingredient) {
		if (ingredient instanceof FoodVegetarian) return false; 

		return super.addIngredient(ingredient);
	}
}
