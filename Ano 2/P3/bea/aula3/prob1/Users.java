package aula3.prob1;

import java.util.Arrays;

/* 
 * Manages an array of Client objects. Based on my solution to last week's problem set.
 */

public class Users {

	// Fields
	private Pessoa[] users;
	private int incrementSize;
	private int currentSize;
	
	// Constructors
	public Users() {
		this(20, 15);
	}
	public Users(int initSize, int incSize) {
		users = new Pessoa[initSize];
		incrementSize = incSize;
		currentSize = 0;
	}
	
	// Methods
	/**
	 *  Expands the people array by incrementSize
	 */
	private void expandArray() {
		Pessoa[] temp = new Pessoa[currentSize + incrementSize];
		System.arraycopy(users, 0, temp, 0, currentSize);
		users = temp;
	}
	
	/**
	 *  Check whether the {@code Pessoa} array is full
	 * @return true if the array is currently full
	 */
	public boolean isFull() {
		return currentSize == users.length;
	}
	
	/**
	 *  Adds a new {@code Pessoa} object to the array
	 * @param person
	 */
	public void add(Pessoa person) {
		if (isFull()) expandArray();
		
		users[currentSize++] = person;
	}
	
	/**
	 *  Removes the first person with matching ID number from the array.
	 *  If there is none, fails silently
	 * @param idNum ID number of the person
	 */
	public void remove(int idNum) {
		// find person
		int personIndex = contains(idNum);
		
		// check person exists
		if (personIndex == -1) return;
		
		// remove entry from array
		System.arraycopy(users, personIndex+1, users, personIndex, currentSize-personIndex);
		
		currentSize--;
	}
	
	/**
	 * 
	 * @param videoID the person's ID
	 * @return Pessoa object corresponding to the given ID
	 */
	public Pessoa get(int id) {
		int personIndex = contains(id);
		if (personIndex == -1) 
			throw new IllegalArgumentException();
		return users[personIndex];
		
	}
	
	/**
	 *  Checks whether there is a person with the given ID number
	 * @param idNum ID number of the person
	 * @return the index at which the person first appears; if there isn't such a person, returns flag value -1
	 */
	public int contains(int idNum) {
		int personIndex = -1;
		for(int i = 0; i < currentSize && personIndex == -1; i++) {
			if (users[i].getCc() == idNum) personIndex = i;
		}
		return personIndex;
	}


	// toString(), hashCode(), equals()
	/**
	 *  Returns the String version of the object
	 *  
	 *  @param s String version of the {@code Prob2_Pessoa} array
	 */
	@Override
	public String toString() {
		String s ="People:\n\n";
		for(int i = 0; i < currentSize; i++) {
			s += (i+1) + "\n" + users[i].toString() + "\n\n";
		}
		return s;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + currentSize;
		result = prime * result + incrementSize;
		result = prime * result + Arrays.hashCode(users);
		return result;
	}	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Users other = (Users) obj;
		if (!Arrays.equals(users, other.users))
			return false;
		return true;
	}
	
	
}
