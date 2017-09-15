package g1.people;

/**
 * ListaPessoas
 * A dynamically expanding array is used
 * The use of HashTable would be mean more effiency in the search operations 
 * (to remove people identified by their names)
 * 
 * @author Pedro Teixeira 84175
 */

public class ListaPessoas {

	// Instance Fields
	Pessoa[] list;
	int blockSize;
	int numPeople;
	
	// Constructor
	/**
	 * 
	 * @param blockSize Size of the block
	 */
	public ListaPessoas (int blockSize) {
		list = new Pessoa[blockSize];
		this.blockSize = blockSize;
		numPeople = 0;
	}
	
	// Getters
	@Override
	public String toString () {
		return "List with " + numPeople + " entries. ";
	}
	
	/**
	 * Prints all the people in the list
	 */
	public void print() {
		for (int i = 0; i < numPeople; i++) {
			System.out.println(list[i]);
		}
	}
	
	// Setters
	/**
	 * Adds a person to the list
	 * @param p Person to add
	 */
	public void addPerson (Pessoa p) {
		if (full()) expand();
		list[numPeople] = p;
		numPeople++;
	}
	
	/**
	 * Removes a person, identified by its CC Card Number, from the list
	 * @param num
	 * @return {@code true} if the person is removed, else {@code false} (when the person does not exist)
	 */
	public boolean removePerson (int num) {
		int index = searchPerson(num);
		
		// person not found
		if (index == -1) return false;		
			
		// else
		
		// removes the person by eliminating the reference to the object
		list[index] = null; 
		
		// pushes other people on the list so there's no null value in any index (smaller or equal to numPeople) of the list   
		System.arraycopy(list, index+1, list, index, numPeople - index);	
		
		numPeople--;
		
		return true;
	}
	
	/**
	 * Orders the list by their CC Cards Number
	 */
	public void orderByNum () {
		orderByNum(0, numPeople);
	}
	
	/**
	 * Orders the list by their names
	 */
	public void orderByName () {
		orderByName(0, numPeople);
	}
	
	// Auxiliary Methods
	/**
	 * @return {@code true} if the list is full (number of added people is equal to the length of the list), else {@code false}
	 */
	private boolean full() {
		return numPeople == list.length;
	}
	
	/**
	 * Expands the list by blocks of blockSize dimension
	 */
	private void expand() {
		int listLength = list.length;
		Pessoa[] newList = new Pessoa[listLength + blockSize];
		System.arraycopy(list, 0, newList, 0, listLength);
	}
	
	/**
	 * Searches for the first person identified by the CC Card num and returns its index
	 * @param num CC Card Number of the person to be found
	 * @return {@code -1} if the person is not found, else a non-negative integer with the index of the person in the list 
	 */
	private int searchPerson (int num) {
		for (int i = 0; i < numPeople; i++) {
			if (list[i].getNum() == num) return i;  
		}
		return -1;
	}
	
	/**
	 * Bubble sort (from P2)
	 * Used Bubble sort under the assumption the list won't ever have 
	 * a big number of elements (otherwise Quick Sort would be a 
	 * better option)
	 */
	private void orderByNum (int start, int end) {
		assert list!=null;
		assert 0<=start && start<=end && end<=list.length;

		int f = end;
		boolean existsSwap;
		do {
			existsSwap = false;
			for(int i = start; i < f-1 ; i++) {
				if (list[i].getNum() > list[i+1].getNum()) {
					swap(i, i+1);
					existsSwap = true;
				}
			}
			f--;
		} while (f>start+1 && existsSwap);
	}
	
	/**
	 * Bubble sort (from P2)
	 */
	private void orderByName (int start, int end) {
		assert list != null;
		assert 0 <= start && start <= end && end <= list.length;

		int f = end;
		boolean existsSwap;
		do {
			existsSwap = false;
			for(int i = start; i < f-1 ; i++) {
				if (list[i].getNome().compareTo(list[i+1].getNome()) > 0) {
					swap(i, i+1);
					existsSwap = true;
				}
			}
			f--;
		} while (f>start+1 && existsSwap);
	}
	
	/**
	 * (From P2)
	 * Swaps two elements of an integer array.
	 * @param list the array
	 * @param i index of an element to swap
	 * @param j index of the other element to swap
	 * {@code i},{@code j} must be valid indexes within array {@code a}
	 */
	private void swap(int i, int j) {
		assert list!= null;
		assert 0 <= i && i < list.length;
		assert 0 <= j && j < list.length;

		Pessoa temp = list[i];
		list[i] = list[j];
		list[j] = temp;
	}
}
