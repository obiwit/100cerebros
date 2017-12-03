package g06.foodManagement;

import java.io.Serializable;
import java.time.DayOfWeek;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Menu
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Menu implements Serializable {

	private static final long serialVersionUID = 1894616366491782159L;

	// Object fields
	private String name, local;
	private Map<DayOfWeek, Set<Meal>> meals;

	// ----------------------------------------------------------
	// Constructor
	/**
	 * 
	 * @param name
	 * @param local
	 */
	public Menu (String name, String local) {
		this.name  = name;
		this.local = local;
		meals = new HashMap<>();
	}

	// ----------------------------------------------------------
	// Getters
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the local
	 */
	public String getLocal() {
		return local;
	}


	// print meals 
	/**
	 * @return 
	 * @return the meals
	 */
	public Map<DayOfWeek, Set<Meal>> getMeals() {
		return meals;
	}

	// Auxiliary methods to print info (pretty-priting)

	// Print all meals for ALL week days
	/**
	 * @return 
	 * @return the meals
	 */
	private String printMeals() {
		String s = "";

		// FORMAT: 
		/*
		 * 		WEEK DAY: 
		 * 			Meals of the day
		 */
		for (DayOfWeek d : DayOfWeek.values()) s += "\t" + d + ": \n" + printMealsDay(d) + "\n";
		return s;
	}

	// Print all meals for ONE week day
	/**
	 * 
	 * @param d
	 * @return
	 */
	private String printMealsDay (DayOfWeek d) {
		Set<Meal> mealsOfTheDay = meals.get(d);
		if (mealsOfTheDay == null) return "\t\tNo meals for " + d;
		String s = "";
		for (Meal m : mealsOfTheDay) s += "\t\t" + m + "\n";
		return s;
	}

	@Override
	public String toString() {
		return "Menu " + name + "\n\nLocal: " + local + "\nMeals:\n" + printMeals();
	}

	// ----------------------------------------------------------
	// Setters
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param local the local to set
	 */
	public void setLocal(String local) {
		this.local = local;
	}

	// add Meals
	/**
	 * @param meals the meal to add
	 * @param day the meal's day
	 */
	public void addMeal(Meal meal, DayOfWeek day) {
		if (meals.containsKey(day)) 
			meals.get(day).add(meal);	//adds meal to the set corresponding the day

		// if it's the first meal of the given day to be added
		else {
			// creates a set for the meals of the day
			HashSet<Meal> mealsOfTheDay = new HashSet<>();
			mealsOfTheDay.add(meal);
			meals.put(day, mealsOfTheDay);
		}
	}

	// remove Meals
	/**
	 * @param meals the meal to remove
	 * @param day the meal's day
	 */
	public void removeMeal(Meal meal, DayOfWeek day) {
		if (meals.containsKey(day)) 
			meals.get(day).remove(meal);	//adds meal to the set corresponding the day
	}
	/**
	 * @param meals the meal to remove
	 * @param day the meal's day
	 */
	public void removeMeal(Meal meal) {
		meals.forEach( (d, m) -> { if (m.contains(meal)) m.remove(meal); } );

	}

	// get Meals
	/**
	 * @param day the meal's day
	 * @param index the meal's index (on the given day)
	 */
	public Meal getMeal(DayOfWeek d, int index) {
		return meals.get(d).toArray(new Meal[meals.get(d).size()])[index];
	}


	// ----------------------------------------------------------
	// Methods
	/**
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((local == null) ? 0 : local.hashCode());
		result = prime * result + ((meals == null) ? 0 : meals.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Menu other = (Menu) obj;
		if (local == null) {
			if (other.local != null) {
				return false;
			}
		} else if (!local.equals(other.local)) {
			return false;
		}
		if (meals == null) {
			if (other.meals != null) {
				return false;
			}
		} else if (!meals.equals(other.meals)) {
			return false;
		}
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
