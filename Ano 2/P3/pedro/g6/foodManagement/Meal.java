package g6.foodManagement;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Meal
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Meal implements Comparable<Meal>, Serializable {

	private static final long serialVersionUID = -4166048081422703054L;

	// Instance fields
	private String name;
	private Set<Food> composition;		//Set<Food> allows to add FoodVegetarian (in MealVegetarian class, which is derived from Meal class)
	private double totalCalories;

	// Constructor
	public Meal (String name) {
		this.name 	  = name;
		composition   = new HashSet<>();
		totalCalories = 0;
	}

	// Getters
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the composition
	 */
	public void getIngredients () {
		System.out.println("\tIngredients: ");
		for (Food f : composition) System.out.println("\t  " + f);
	}

	/**
	 * @return the totalCalories
	 */
	public double getTotalCalories() {
		return totalCalories;
	}

	// Implementation of Comparable interface
	// a negative integer, zero, or a positive integer as this object is less than, equal to, or greater than the specified object.
	@Override
	public int compareTo(Meal o) {
		if (!(o instanceof Meal)) return -1;
		return (int) (this.totalCalories - o.totalCalories);
	}

	@Override
	public String toString() {
		return "Meal " + name + ", total calories: " + totalCalories + ", with "+ composition.size() + " ingredients )";
	}

	// Setters
	/**
	 * @param ingredient the ingredient to add
	 * @return {@code true} if the ingredient is added, else {@code false}
	 */
	public boolean addIngredient (Food ingredient) {
		composition.add(ingredient);

		// update meal stats
		totalCalories += ingredient.getCalories();
		return true;
	}
	/**
	 * @param ingredient the ingredient to remove
	 * @return {@code true} if the ingredient is removed, else {@code false}
	 */
	public boolean removeIngredient (Food ingredient) {
		// check meal has given ingredient
		if (!composition.contains(ingredient)) return false;

		// remove the ingredient
		composition.remove(ingredient);

		// update meal stats
		totalCalories -= ingredient.getCalories();
		return true;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((composition == null) ? 0 : composition.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(totalCalories);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		Meal other = (Meal) obj;
		if (composition == null) {
			if (other.composition != null) {
				return false;
			}
		} else if (!composition.equals(other.composition)) {
			return false;
		}
		if (name == null) {
			if (other.name != null) {
				return false;
			}
		} else if (!name.equals(other.name)) {
			return false;
		}
		if (Double.doubleToLongBits(totalCalories) != Double.doubleToLongBits(other.totalCalories)) {
			return false;
		}
		return true;
	}

}
