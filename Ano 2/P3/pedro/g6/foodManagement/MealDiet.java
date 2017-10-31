package g6.foodManagement;

/**
 * MealDiet
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class MealDiet extends Meal {

	private static final long serialVersionUID = 4319069196906558195L;

	// Object fields
	private double maxCalories;

	// Constructor
	/**
	 * 
	 * @param name
	 * @param maxCalories
	 */
	public MealDiet (String name, double maxCalories) {
		super(name);
		this.setMaxCalories(maxCalories);
	}

	// Getters
	@Override
	public String toString() {
		return super.toString() + " [Diet]";
	}

	/**
	 * @return the maxCalories
	 */
	public double getMaxCalories() {
		return maxCalories;
	}

	// Setters
	/**
	 * @param maxCalories the maxCalories to set
	 */
	public void setMaxCalories(double maxCalories) {
		this.maxCalories = maxCalories;
	}
	/**
	 * @param ingredient the ingredient to add
	 * @return {@code true} if the ingredient is added, else {@code false}
	 */
	@Override
	public boolean addIngredient (Food ingredient) {
		if (this.getTotalCalories() + ingredient.getCalories() > maxCalories) return false; 

		return super.addIngredient(ingredient);
	}

	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(maxCalories);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	/* (non-Javadoc)
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
		MealDiet other = (MealDiet) obj;
		if (Double.doubleToLongBits(maxCalories) != Double.doubleToLongBits(other.maxCalories)) {
			return false;
		}
		return true;
	}



}
