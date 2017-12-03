package g10.ex1.dynamicArray;

/**
 * 
 * UtilCompare
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class UtilCompare {

	// Public methods

	/**
	 * Returns the maximum Comparable object in a Comparable array, according to the compareTo() order.
	 * @param array Comparable array
	 * @return maximum Comparable object
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static Comparable findMax(Comparable[] array) {
		int maxIndex = 0;
		for (int i = 1; i < array.length; i++) {
			if (array[maxIndex].compareTo(array[i]) < 0) maxIndex = i;
		}
		return array[maxIndex];
	}


	/**
	 * Orders a Comparable array, according to the compareTo() order. Uses quick sort.
	 * @param array Comparable array to order
	 */
	@SuppressWarnings("rawtypes")
	public static void sortArray(Comparable[] array) {
		order(0, array.length, array);
	}



	// Private methods

	/**
	 * Implements a sorting algorithm for the Comparable array, based on the quick sort algorithm implement in P2.
	 * 
	 * @param start first index of the array to sort
	 * @param end length of the {@code Comparable} array
	 * @param array Comparable array
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private static void order(int start, int end, Comparable[] array) {
		if (start-end < 20)
			for(int i = 0; i < end-1; i++) {
				for (int j = i; j < end; j++) {
					if (array[i].compareTo(array[j]) > 0) { 
						switchPos(i, j, array);
					}
				}
			}
		else {
			int posPivot = partition(start, end, array); 
			order(start, posPivot, array);
			if (posPivot+1 < end)
				order(posPivot+1, end, array);	
		}
	}

	/**
	 * Helper function for Quick Sort. Returns new pivot position.
	 * @param <T>
	 * 
	 * @param a {@T} array 
	 * @param start index of start position
	 * @param end index of end position
	 * @return new pivot position
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private static int partition(int start, int end, Comparable[] array) { 
		Comparable pivot = array[end-1];
		int i1 = start-1;
		int i2 = end-1;
		while (i1 < i2) { 
			do {
				i1++;
			} while(array[i1].compareTo(pivot) < 0); // a[i1] < a[pivot]
			do {
				i2--;
			} while(i2 > start && (array[i2].compareTo(pivot) > 0)); // a[i2] > a[pivot]
			if (i1 < i2) switchPos(i1, i2, array);
		}

		switchPos(i1, end-1, array);
		return i1; 
	}

	/**
	 *  Switches the position of two Comparable array items
	 * @param indexOne
	 * @param indexTwo
	 */
	@SuppressWarnings("rawtypes")
	private static void switchPos(int indexOne, int indexTwo, Comparable[] array) {
		Comparable temp = array[indexOne];
		array[indexOne] = array[indexTwo];
		array[indexTwo] = temp;
	}

}
