package p2utils_aula8;
//import p2utils.Node;

public class SortedList<E extends Comparable<E>> {
	
	// Constructor
	public SortedList() { }

	// Fields private attributes
	private Node<E> first = null;
	private int size = 0;
	
	// Getters
	/**
	 * @return Number of elements in the list
	 */
	public int size() { 
		return size; 
	}

	/**
	 * Checks if the list is empty
	 * @return  {@code true} if list empty, otherwise {@code false}.
	 */
	public boolean isEmpty() {
		return size == 0; 
	}

	/**
	 * @return  First element in the list
	 */
	public E first() {
		assert !isEmpty(): "empty!";
		return first.elem;
	}
	
	// Methods
	/**
	 * Inserts a new element in the list
	 * @param e the element to be inserted
	 */
	public void insert(E e) {
		first = insert(first,e);
		size++;
	}
	private Node<E> insert(Node<E> n, E e) {
		if (n==null || e.compareTo(n.elem) < 0)			//e < n.elem using compareTo method (Comparable interface)
			return new Node<E>(e,n);
		n.next = insert(n.next,e);
		return n;
	}

	/**
	 * Removes the first element in the list
	 */
	public void removeFirst() {
		assert !isEmpty(): "empty!";
		first = first.next;
		size--;
	}

	/**
	 * Checks if the list is sorted
	 * @return {@code true} if sorted, {@code false} otherwise
	 */
	public boolean isSorted() { 
		if (size < 2)
			return true;
		return isSorted(first,first.next); 
	}
	private boolean isSorted(Node<E> prev,Node<E> n) {
		if (n == null) return true;
		if (n.elem.compareTo(prev.elem) < 0) return false;			//n.elem < prev.elem
		return isSorted(n,n.next);
	}
	
	/** Prints all elements, one per line. */
	public void print() {
		print(first);
	}
	private void print(Node<E> n) {
		if (n != null) {
			System.out.println(n.elem);
			print(n.next);
		}
	}
	
	/**
	 * Checks if the given element exists in the list
	 * @param e an element
	 * @return {@code true} if the element exists and {@code false} otherwise
	 */
	public boolean contains(E e) { 
		return contains(first,e); 
	}
	private boolean contains(Node<E> n,E e) {
		// if value of node is greater than e value, since the list is sorted, it means we won't find value e 
		if (n == null || n.elem.compareTo(e) > 0) return false;						
		//if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
		if (n.elem.equals(e)) return true; 
		return contains(n.next,e);
	}
	
	/* 
	 * toString() - Devolve uma cadeia de caracteres que representa o conte´udo da lista, por
	 * exemplo [1,12,7,9]. Desenvolva uma solu¸c˜ao iterativa para este m´etodo.
	 */
	public String toString() {
		if (this.size == 0) {
			return "[]";
		}

		String listToString = "[";
		Node<E> node = this.first;
		int i = size;
		while (node != null && i > 1) {				//stop before the last element (so a comma is not added)
			listToString += node.elem + ",";
			node = node.next;
			i--;
		}

		listToString += node.elem + "]";			// adds the last element and closes the string with ]
		return listToString;

		
	}
	
	/* merge(lst) - Devolve uma nova lista ordenada contendo os elementos da lista (em que
	 * o m´etodo ´e chamado) e os elementos da lista dada no argumento. Desenvolva uma
	 * solu¸c˜ao recursiva para este m´etodo.
	 */
	public SortedList<E> merge(SortedList<E> lst) {
		SortedList<E> conc = this.clone(); 			// clone of the original list
		clone(lst.first, conc);				// we give the first node of the other list to start
		return conc;								// ...adding the nodes of the lst list to the conc list
	}
	
	// Since the merge method is basically a clone of 2 lists put together  
	/**
	 * Clones the list
	 * @return clone of the current list
	 */
	public SortedList<E> clone() {
		SortedList<E> clone = new SortedList<E>();
		clone(this.first, clone);
		return clone;
	}

	private void clone(Node<E> node, SortedList<E> list) {
		if (node != null) { 		//Stops when node == null (ie we have the last node)
			list.insert(node.elem);
			clone(node.next, list);
		}
	}
}