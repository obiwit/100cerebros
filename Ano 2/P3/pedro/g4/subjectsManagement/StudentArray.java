package g4.subjectsManagement;
import aula4.prob1.people.Student;
import aula4.prob1.subjectsManagement.DynamicArray;

/**
 * StudentArray
 * Manages an array of students.
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class StudentArray extends DynamicArray<Student> {

	// No fields

	// ---------------------
	// Implicit Constructors

	// ---------------------
	// Getters
	/**
	 * Returns the index in the dynamic array where the Student with the given num mec is if it exists, else returns -1
	 * @param numMec num mec of the Student to get the index of
	 * @return a non-negative integer representing the index in the dynamic array where the object is if it exists, else -1
	 */
	public int indexOf(int numMec) {
		int personIndex = -1;
		for(int i = 0; i < currentSize && personIndex == -1; i++) {
			if (getStudents()[i].getNumMec() == numMec) personIndex = i;
		}
		return personIndex;
	}

	/**
	 * Checks whether there is a Student with the given num mec
	 * @param numMec num mec of the Student whose presence in this dynamic array is going to be tested
	 * @return returns {@code true} if this dynamic array contains a Student the specified num mec, else {@code false}
	 */
	public boolean contains(int numMec) {
		return (indexOf(numMec) != -1);
	}

	/**
	 * @return Array of Students
	 */
	public Student[] getStudents() {
		Student[] array = new Student[currentSize];
		return toArray(array);
	}

	/**
	 * 
	 * @param type String represeting the type of Students ("Student" or "StudentScholarship")
	 * @return Array of Students of the given type
	 */
	public Student[] getStudents(String type) {
		Student[] studentsArray = getStudents();
		Student[] tempArray     = new Student[currentSize];

		int i = 0;
		for (Student s : studentsArray) {
			if (s.getClass().getSimpleName().equals(type)) {
				tempArray[i] = s; 
				i++;
			}
		}

		Student[] array = new Student[i];
		System.arraycopy(tempArray, 0, array, 0, i);

		return array;
	}

	// ---------------------
	// Setters
	/**
	 * Removes the first Student with matching num mec from the array.
	 * If there is none, fails silently
	 * @param numMec num mec of the student to remove
	 * @return {@code true} if the object can be removed (exists), else {@code false}
	 */
	public boolean remove(int numMec) {
		// Checks if the object exists
		int objectIndex = indexOf(numMec);
		boolean canRemove = contains(numMec);

		// remove entry from array
		if (canRemove) { 
			System.arraycopy(objects, objectIndex+1, objects, objectIndex, currentSize-objectIndex);
			currentSize--;
		}

		return canRemove;
	}

}
