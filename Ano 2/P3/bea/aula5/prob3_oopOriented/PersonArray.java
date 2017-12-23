package aula5.prob3_oopOriented;
import aula5.utils.DynamicArray;

/**
 * StudentArray
 * Manages an array of students.
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class PersonArray extends DynamicArray<Person> {

	// No fields

	// ---------------------
	// Implicit Constructors

	// ---------------------
	// Getters
	/**
	 * Returns the index in the dynamic array where the {@code Person} with the given id is if it exists, else returns -1
	 * @param id id of the {@code Person} to get the index of
	 * @return a non-negative integer representing the index in the dynamic array where the object is if it exists, else -1
	 */
	public int indexOf(int id) {
		int personIndex = -1;
		for(int i = 0; i < currentSize && personIndex == -1; i++) {
			if (get()[i].getID() == id) personIndex = i;
		}
		return personIndex;
	}

	/**
	 * Checks whether there is a {@code Person} with the given id
	 * @param id id of the {@code Person} whose presence in this dynamic array is going to be tested
	 * @return returns {@code true} if this dynamic array contains a {@code Person} the specified id, else {@code false}
	 */
	public boolean contains(int id) {
		return (indexOf(id) != -1);
	}

	/**
	 * Get all {@code Person}s in the array
	 * @return array of {@code Person}s
	 */
	public Person[] get() {
		Person[] array = new Person[currentSize];
		return toArray(array);
	}

	// ---------------------
	// Setters
	/**
	 * Removes the first {@code Person} with matching id from the array.
	 * If there is none, fails silently
	 * @param id id of the {@code Person} to remove
	 * @return {@code true} if the object can be removed (exists), else {@code false}
	 */
	public boolean remove(int id) {
		// Checks if the object exists
		int objectIndex = indexOf(id);
		boolean canRemove = contains(id);

		// remove entry from array
		if (canRemove) { 
			System.arraycopy(objects, objectIndex+1, objects, objectIndex, currentSize-objectIndex);
			currentSize--;
		}

		return canRemove;
	}
}
