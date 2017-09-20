package e21;

/**
 * MealIngredients
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

public class MealIngredients {


	// Fields
	private String item;
	private int quantity;

	/** Constructor 
	 * 
	 * @param argItem Name of the ingredient
	 * @param argQuantity Needed quantity of the ingredient
	 */
	public MealIngredients (String argItem, int argQuantity) {
		this.item = argItem;
		this.quantity = argQuantity; 
	}

	/**
	 * @return Item name
	 */
	public String item () {
		return this.item;
	}

	/**
	 * @return Item quantity
	 */
	public int quantity () {
		return this.quantity;
	}
	
	public String toString () {
		return item + ":" + quantity;
	}
}