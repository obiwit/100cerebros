package g09.iterators.dynamicArray;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

import g09.iterators.BFIterator;

/** 
 * Manages an array of objects.
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class DynamicArray<T> implements Iterable<T> {

	// ---------------------
	// Instance Fields
	protected T[] objects;
	protected int currentSize;
	private final int incrementSize;

	// ---------------------
	// Constructors
	/**
	 * Default constructor. Creates an array with an initial size of 20 and an increment size of 15.
	 */
	public DynamicArray() {
		this(20, 15);
	}

	/**
	 * Creates the object array
	 * @param initSize initial size of the array
	 * @param incSize increment size of the array
	 */
	@SuppressWarnings("unchecked")
	public DynamicArray(int initSize, int incSize) {
		objects = (T[]) new Object[initSize];
		incrementSize = incSize;
		currentSize = 0;
	}

	// ---------------------
	// Getters
	/**
	 * Returns an object from the array.
	 * @param index object's index
	 * @return object corresponding to the given index
	 */
	public T get(int index) {
		return objects[index];
	}

	/**
	 * Returns (a copy of) the object's array.
	 * @return (a copy of) the object's array
	 */
	public T[] toArray() {
		return Arrays.copyOf(objects, currentSize);
	}

	/**
	 * Returns (a copy of) the object's array. The argument {@code array} specifies the runtime type of the returned array.
	 * @param array Array of {@code T} type used to specify the runtime type of the returned array and to store the elements of the Dynamic Array
	 * @return (a copy of) the object's array
	 * @throws IllegalArgumentException if the runtime type of the argument is not T or if the argument is an array with a length different of this.size() 
	 */
	public T[] toArray(T[] array) {
		if (array.length != currentSize)
			throw new IllegalArgumentException();

		System.arraycopy(objects, 0, array, 0, currentSize);

		return array;
	}

	/**
	 * Returns the index in the dynamic array where the object is if it exists, else returns -1
	 * @param object object to get the index of
	 * @return a non-negative integer representing the index in the dynamic array where the object is if it exists, else -1
	 */
	public int indexOf(T object) {
		int index = -1;
		for(int i = 0; i < currentSize && index == -1; i++) {
			if (objects[i].equals(object)) index = i;
		}
		return index;
	}

	/**
	 * Returns {@code true} if this dynamic array contains the specified element.
	 * @param  object element whose presence in this dynamic array is going to be tested
	 * @return returns {@code true} if this dynamic array contains the specified element, else {@code false}
	 */
	public boolean contains(T object) {
		return (indexOf(object) != -1);
	}

	/**
	 * 
	 * @return Number of elements in the array
	 */
	public int size() {
		return currentSize;
	}

	/**
	 *  Returns the String version of the object
	 *  
	 *  @param s String version of the {@code Prob2_Pessoa} array
	 */
	@Override
	public String toString() {
		String s = "";
		for(int i = 0; i < currentSize; i++) {
			s += (i+1) + "\n" + objects[i].toString() + "\n\n";
		}
		return s;
	}

	// ---------------------
	// Setters
	/**
	 * Adds a new object to the array
	 * @param object Object to add
	 */
	public void add(T object) {
		if (isFull()) expandArray();

		objects[currentSize++] = object;
	}

	/**
	 * Removes the first occureence of the giving object from the array.
	 * If there is no occurence, returns false.
	 * @param object Object to remove
	 * @return {@code true} if the object can be removed (exists), else {@code false}
	 */
	public boolean remove(T object) {
		// Checks if the object exists
		boolean canRemove = contains(object);

		// remove entry from array
		if (canRemove) { 
			int objectIndex = indexOf(object);
			System.arraycopy(objects, objectIndex+1, objects, objectIndex, currentSize-objectIndex);
			currentSize--;
		}

		return canRemove;
	}

	// ---------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + currentSize;
		result = prime * result + incrementSize;
		result = prime * result + Arrays.hashCode(objects);
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
		@SuppressWarnings("unchecked")
		DynamicArray<T> other = (DynamicArray<T>) obj;
		if (currentSize != other.currentSize) {
			return false;
		}
		if (incrementSize != other.incrementSize) {
			return false;
		}
		if (!Arrays.equals(objects, other.objects)) {
			return false;
		}
		return true;
	}

	@Override
	public Iterator<T> iterator() {
		return (this).new DynamicArrayIterator<>();
	}

	public BFIterator<T> bfIterator() {
		return (this).new DynamicArrayIterator<>();
	}

	// ---------------------
	// Auxiliary (Private) Methods
	/**
	 *  Expands the array (by incrementSize)
	 */
	private void expandArray() {
		@SuppressWarnings("unchecked")
		T[] temp = (T[]) new Object[currentSize + incrementSize];
		System.arraycopy(objects, 0, temp, 0, currentSize);
		objects = temp;
	}

	/**
	 * Check whether the array is full
	 * @return {@code true} if the array is currently full
	 */
	private boolean isFull() {
		return currentSize == objects.length;
	}

	// ---------------------
	@SuppressWarnings("hiding")
	private class DynamicArrayIterator<T> implements Iterator<T>, BFIterator<T> {

		// Instance Fields
		private int index, indexBFIterator;

		// ---------------------
		// Constructor
		/**
		 * Constructor
		 */
		protected DynamicArrayIterator() {
			index = 0;
			indexBFIterator = currentSize - 1;
		}

		// ---------------------
		// Inherited Methods
		@Override
		public boolean hasNext() {
			return (index < currentSize);
		}

		@Override
		public T next() {
			if (!hasNext()) throw new NoSuchElementException("Error on Next. No more objects to iterate.");
			@SuppressWarnings("unchecked")
			T obj = (T) objects[index];
			index++;
			return obj;
		}

		@Override
		public boolean hasPrevious() {
			return (indexBFIterator >= 0);
		}

		@Override
		public T previous() {
			if (!hasPrevious()) throw new NoSuchElementException("Error on Next. No more objects to iterate.");
			@SuppressWarnings("unchecked")
			T obj = (T) objects[indexBFIterator];
			indexBFIterator--;
			return obj;
		}
	}

}
