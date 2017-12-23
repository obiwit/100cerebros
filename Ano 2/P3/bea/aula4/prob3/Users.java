package aula4.prob3;

/**
 * Users
 * Manages an array of Client objects. 
 * From the previous week problem set.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */


public class Users {

	// Fields
	private Client[] users;
	private int incrementSize;
	private int currentSize;
	
	// Constructors
	public Users() {
		this(20, 15);
	}
	public Users(int initSize, int incSize) {
		users = new Client[initSize];
		incrementSize = incSize;
		currentSize = 0;
	}
	
	// Methods
	/**
	 *  Expands the people array by incrementSize
	 */
	private void expandArray() {
		Client[] temp = new Client[currentSize + incrementSize];
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
	 *  Adds a new {@code Client} object to the array
	 * @param person
	 */
	public void add(Client person) {
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
	 * @return Client object corresponding to the given ID
	 */
	public Client get(int id) {
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
			if (users[i].getID() == idNum) personIndex = i;
		}
		return personIndex;
	}

	/**
	 *  Returns the String version of the object
	 *  
	 *  @param s String version of the {@code Pessoa} array
	 */
	public String toString() {
		String s ="People:\n\n";
		for(int i = 0; i < currentSize; i++) {
			s += (i+1) + "\n" + users[i].toString() + "\n\n";
		}
		return s;
	}
	
	public boolean equals(Users u) {
		return users.equals(u.users); // purposefully ignore incrementSize and currentSize fields
	}
}
