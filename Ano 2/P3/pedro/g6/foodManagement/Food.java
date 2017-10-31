package g6.foodManagement;

import java.io.Serializable;

/**
 * Food
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public abstract class Food implements Serializable {

	private static final long serialVersionUID = 6355339632579273115L;

	// Object fields
	private int proteins;
	private double calories, weight;

	// Constructor
	/**
	 * 
	 * @param proteins
	 * @param calories
	 * @param weight
	 */
	public Food (int proteins, double calories, double weight) {
		this.proteins = proteins;
		this.calories = calories;
		this.weight   = weight;
	}

	// Getters
	/**
	 * @return the proteins
	 */
	public int getProteins() {
		return proteins;
	}

	/**
	 * @return the calories
	 */
	public double getCalories() {
		return calories;
	}

	/**
	 * @return the weight
	 */
	public double getWeight() {
		return weight;
	}

	/**
	 * @return String representation
	 */
	@Override
	public String toString () {
		return "Proteins: " + proteins + ", calories: " + calories + ", weight: " + weight;
	}


	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(calories);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + proteins;
		temp = Double.doubleToLongBits(weight);
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
		Food other = (Food) obj;
		if (Double.doubleToLongBits(calories) != Double.doubleToLongBits(other.calories)) {
			return false;
		}
		if (proteins != other.proteins) {
			return false;
		}
		if (Double.doubleToLongBits(weight) != Double.doubleToLongBits(other.weight)) {
			return false;
		}
		return true;
	}

}
