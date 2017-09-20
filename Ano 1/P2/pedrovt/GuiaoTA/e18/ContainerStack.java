package e18;

//NMEC: 
//NOME: 
import static java.lang.System.*;

public class ContainerStack {
	// Fields

	private Container[] array;
	private int size;  

	// Constructor
	public ContainerStack(int maxSize) {
		assert maxSize >= 0;
		array = new Container[maxSize];
		//size = 0;
		assert isEmpty();
	}

	// Setters
	public void push(Container e) {
		assert !isFull();
		array[size] = e;
		size++;
		e.incrementOps();
		assert !isEmpty() && top() == e;
	}

	public void pop() {
		assert !isEmpty();
		--size;
		array[size] = null;
		assert !isFull();
	}

	public void clear() {
		size = 0;
		array = new Container[array.length];
		assert isEmpty();
	}

	// Getters
	public Container top() {
		assert !isEmpty();
		return array[size-1];
	}

	public boolean isEmpty() { 
		return size==0; 
	}

	public boolean isFull() { 
		return size==array.length; 
	}

	public int size() { 
		return size; 
	}

	public String toString() {
		String toString = "";
		if (size > 0) {
			for (int i = 0; i < size - 1; i++) {
				toString += array[i].toString() + ",";
			}
			return toString += array[size-1];
		}
		return toString;
	}
	
	// Methods

	// Search
	/**
	 * Search for a container with a given type of cargo.
	 * @param type the type of cargo we're looking for
	 * @return 0 if the desired container is on the top,
	 *         1 if it is under 1 container, etc
	 *        -1 if not found
	 */
	public int search(String type) {
		for (int i = 0; i < size; i++) {
			if (array[size-1-i].contains(type)) return i;
		}
		return -1;
	}

	/**
	 * Search for a container with a given type of cargo (recursive solution)
	 * @param type the type of cargo we're looking for
	 * @return 0 if the desired container is on the top,
	 *         1 if it is under 1 container, etc
	 *        -1 if not found
	 */
	public int searchRec(String type) {
		return searchRec(array, type, 0);
	}

	private int searchRec(Container[] array, String type, int index) {
		if (array[size-1-index].contains(type)) return index;
		if (index == size - 1) return -1;
		return searchRec(array, type, index + 1);
	}

	// Order
	
	public static void sort (Container[] a, int start, int end) {
		if (end - start > 1) {
			int middle = (end + start) / 2;
			sort(a, start, middle);
			sort(a, middle, end);
			mergeSubarrays(a, start, middle, end);
		}
	}
	
	/**
	 * Merge two sorted subvectors: a[start..middle[ with a[middle..end[
	 */
	private static void mergeSubarrays(Container[] a,int start,int middle,int end) 
	{
		Container[] b = new Container[end-start];
		int i1 = start;
		int i2 = middle;
		int j = 0;
		while(i1 < middle && i2 < end) {
			if (a[i1].id < a[i2].id)
				b[j++] = a[i1++];
			else
				b[j++] = a[i2++];
		}
		while(i1 < middle)
			b[j++] = a[i1++];
		while(i2 < end)
			b[j++] = a[i2++];
		arraycopy(b, 0, a, start, end-start);
	}

	/**
	 * @return
	 */
	public Container[] containersInStack() {
		Container[] orderedArray = new Container[size];
		System.arraycopy(array, 0, orderedArray, 0, size);	// copy so the original isn't changed
		sort(orderedArray, 0, size);
		return orderedArray;
	}
}

