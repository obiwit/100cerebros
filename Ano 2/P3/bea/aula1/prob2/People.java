package aula1.prob2;

/* 
 * Manages an array of Prob2_Pessoa objects
 * 
 * Note: this was the last Java class I coded, and I've, since the beginning of my work, changed my commenting style.
 * Here, I use block comments. 
 */

public class People {

	// Fields
	private Pessoa[] people;
	private int incrementSize;
	private int currentSize;
	
	// Constructors
	public People() {
		this(20, 15);
	}
	public People(int initSize, int incSize) {
		people = new Pessoa[initSize];
		incrementSize = incSize;
		currentSize = 0;
	}
	
	// Methods
	/**
	 *  Expands the people array by incrementSize
	 */
	private void expandArray() {
		Pessoa[] temp = new Pessoa[currentSize + incrementSize];
		System.arraycopy(people, 0, temp, 0, currentSize);
		people = temp;
	}
	/**
	 *  Check whether the {@code Prob2_Pessoa} array is full
	 * @return true if the array is currently full
	 */
	public boolean isFull() {
		return currentSize == people.length;
	}
	// Adds a new Pro2_Pessoa object to the end of the people array
	public void add(Pessoa person) {
		if (isFull()) expandArray();
		
		people[currentSize++] = person;
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
		System.arraycopy(people, personIndex+1, people, personIndex, currentSize-personIndex);
		
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
		return people[personIndex];
		
	}
	/**
	 *  Checks whether there is a person with the given ID number
	 * @param idNum ID number of the person
	 * @return the index at which the person first appears; if there isn't such a person, returns flag value -1
	 */
	public int contains(int idNum) {
		int personIndex = -1;
		for(int i = 0; i < currentSize && personIndex == -1; i++) {
			if (people[i].getCc() == idNum) personIndex = i;
		}
		return personIndex;
	}

	/**
	 *  Orders the array by every person's ID number
	 */
	public void orderByID() {
		order(0, currentSize, false);
	}
	/**
	 *  Orders the array by every person's first name
	 */
	public void orderByName() {
		order(0, currentSize, true);
	}
	/**
	 *  Switches the position of two array items
	 * @param indexOne
	 * @param indexTwo
	 */
	private void switchPos(int indexOne, int indexTwo) {
		Pessoa temp = people[indexOne];
		people[indexOne] = people[indexTwo];
		people[indexTwo] = temp;
	}
	/**
	 *  Returns the String version of the object
	 *  
	 *  @param s String version of the {@code Prob2_Pessoa} array
	 */
	public String toString() {
		String s ="People:\n\n";
		for(int i = 0; i < currentSize; i++) {
			s += (i+1) + "\n" + people[i].toString() + "\n\n";
		}
		return s;
	}
	
	 
   /**
    * Implements a sorting algorithm for the people array, based on the quick sort algorithm implement in P2.
    * Orders the array by every person's ID number, by default, and by every 
    * person's first name, if the boolean parameter compareName is true.
    * 
    * @param start first index of the array to sort
	* @param end length of the {@code Pessoa} array
    * @param compareName overrides default sorting by ID number, sorting the list by each person's name
    */
	private void order(int start, int end, boolean compareName) {
		if (start-end < 20)
			for(int i = 0; i < currentSize-1; i++) {
				for (int j = i; j < currentSize; j++) {
					// if people[j] < people[i]
					if (compareName? people[i].getNome().compareTo(people[j].getNome()) > 0 : people[i].getCc() > people[j].getCc()) { 
						switchPos(i, j);
					}
				}
			}
		else {
			int posPivot = partition(start, end, compareName); 
			order(start, posPivot, compareName);
			if (posPivot+1 < end)
				order(posPivot+1, end, compareName);	
		}
	}
	
	/**
	 * Helper function for Quick Sort. Returns new pivot position.
	 * 
	 * @param a {@code Pessoa} array 
	 * @param start index of start position
	 * @param end index of end position
	 * @param compareName overrides default sorting by ID number, sorting the list by each person's name
	 * @return new pivot position
	 */
	private int partition(int start, int end, boolean compareName) { 
		Pessoa pivot = people[end-1];
		int i1 = start-1;
		int i2 = end-1;
		while (i1 < i2) { 
			do {
				i1++;
			} while(compareName? people[i1].getNome().compareTo(pivot.getNome()) < 0 : people[i1].getCc() < pivot.getCc()); // a[i1] < a[pivot]
			do {
				i2--;
			} while(i2 > start && (compareName? people[i2].getNome().compareTo(pivot.getNome()) > 0 : people[i2].getCc() > pivot.getCc())); // a[i2] > a[pivot]
			if (i1 < i2) switchPos(i1, i2);
		}
			
		switchPos(i1, end-1);
		return i1; 
	}
	
}
