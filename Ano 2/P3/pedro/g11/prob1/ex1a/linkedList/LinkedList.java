package g11.prob1.ex1a.linkedList;

import java.util.Iterator;
import java.util.NoSuchElementException;

import g11.prob1.ex1a.BFIterator;

/** 
 * (FROM P2) Implementation of a simple linked list. Some of the methods are based on the given LinkedList.
 * @author Pedro Teixeira
 * @see Node
 * @version 2
 *  
 */

public class LinkedList<E> implements Iterable<E>{
	// Fields
	private Node<E> first = null;
	private Node<E> last = null;
	private int size = 0;

	/**
	 * {@code LinkedList} constructor
	 */
	public LinkedList() {}

	//----------------------------------------------------------
	// Setters

	/**
	 * Adds a new element to the start of the list
	 * @param e - element to be added to
	 */
	public void addFirst(E e) {
		first = new Node<>(e, first);
		if (isEmpty())
			last = first;
		size++;

		assert !isEmpty() && first().equals(e);
	}

	/**
	 * Adds a new element to the end of the list
	 * @param e - element to be added to
	 */
	public void addLast(E e) {
		Node<E> newest = new Node<>(e);
		if (isEmpty())
			first = newest;
		else
			last.next = newest;
		last = newest;
		size++;

		assert !isEmpty() && last().equals(e);
	}

	/**
	 * Removes the first element in the list
	 */
	public void removeFirst() {
		assert !isEmpty(): "empty!";
		first = first.next;
		size--;
		if (isEmpty())
			last = null;
	}

	/**
	 * Removes all elements
	 */
	public void clear() {
		first = last = null;
		size = 0;
	}

	//----------------------------------------------------------
	// Getters

	/**
	 * Returns size of the list
	 * @return Number of elements in the list
	 */
	public int size() { return size; }

	/**
	 * Checks if the list is empty
	 * @return  {@code true} if list empty, otherwise {@code false}.
	 */
	public boolean isEmpty() { return size == 0; }

	/** 
	 * Returns first element in the list
	 * @return  First element in the list
	 */
	public E first() {
		assert !isEmpty(): "empty!";

		return first.elem;
	}

	/**
	 * Returns last element in the list
	 * @return  Last element in the list
	 */
	public E last() {
		assert !isEmpty(): "empty!";

		return last.elem;
	}

	/** 
	 * Prints all elements, one per line. 
	 */
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
	 * Converts to a string the list elements
	 * @return String "[ list contents ]" 
	 */
	@Override
	public String toString() {
		if (size()==0) 
			return "[ ]";
		String s = "[ " + first.elem.toString();
		if (size()==1) 
			return s + " ]";
		Node<E> n = first.next;
		while (n!=null) {
			s += ("," + n.elem.toString());
			n = n.next;
		}
		return s + " ]";
	}

	/**
	 * Checks if the given element exists in the list
	 * @param e - an element
	 * @return {@code true} if the element exists and {@code false} otherwise
	 */
	public boolean contains(E e) { 
		return contains(first,e); 
	}

	private boolean contains(Node<E> n,E e) {
		if (n == null) return false;
		if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
		if (n.elem.equals(e)) return true; 
		return contains(n.next,e);
	}

	/**
	 * Gets the element in the given position of the list
	 * @param pos - position in the list (0 is the first position)
	 * @return Element in position pos of the list
	 */
	public void insert (int pos, E elem) {
		Node<E> nodeToChange = getNode(pos, this.first);
		nodeToChange.next = new Node<E>(elem, nodeToChange.next);
	}

	private Node<E> getNode(int pos, Node<E> node) {
		if (pos == 0) {
			return node;
		}

		return getNode(pos-1, node.next);

	}


	public E get(int pos) {
		return get(pos, this.first);
	}

	private E get(int pos, Node<E> node) {
		if (pos == 0) {
			return node.elem;
		}
		//if (node != null && pos >=1) {
		return get(pos-1, node.next);
		//}
	}

	/**
	 * Counts the number of occurrences of a given element in the list
	 * @param e - an element
	 * @return number of occurrences of element e in the list
	 */
	public int count(E e){
		return count(e, this.first);
	}

	private int count(E e, Node<E> node){
		if (node == null) {
			return 0;						// end case (stops in the end of the list)
		}
		if (node.elem.equals(e)) {
			return 1 + count(e,node.next);	// counts
		}	
		return count(e, node.next);
	}

	/**
	 * Returns the position of the first occurrence of element e on the list
	 * @param e - an element
	 * @return the index of the first occurrence of the element in the list, or -1 if the element does not occur.
	 */
	public int indexOf(E e){
		return indexOf(e, this.first);
	}

	private int indexOf(E e, Node<E> node){
		if (node == null) {
			return -1;						// end case (stops in the end of the list)
		}
		if (node.elem.equals(e)) {
			return 0;
		}
		return 1 + indexOf(e,node.next);	// counts
	}

	//----------------------------------------------------------
	// Methods

	/**
	 * Clones the list
	 * @return A copy of the list
	 */
	@Override
	public LinkedList<E> clone() {
		LinkedList<E> clone = new LinkedList<E>();
		clone(this.first, clone);
		return clone;
	}

	private void clone(Node<E> node, LinkedList<E> list) {
		if (node != null) { 		//Stops when node == null (ie we have the last node)
			list.addLast(node.elem);
			clone(node.next, list);
		}
	}

	/**
	 * Clones the list, replacing all occurrences of element x with element y
	 * @param x - element to be replaced
	 * @param y - new element
	 * @return A copy of the list with all occurrences of element x replaced by element y
	 */
	public LinkedList<E> cloneReplace (E x, E y) {
		LinkedList <E> cloneReplace = new LinkedList<E>();
		cloneReplace(this.first, cloneReplace, x, y);
		return cloneReplace;
	}

	private void cloneReplace(Node<E> node, LinkedList<E> clone, E x, E y){
		if (node != null) { 	// end case for node = null
			if (node.elem.equals(x)) {			// if node.elem is x, add y and not x to the new list
				clone.addLast(y);
			}
			else {								// else add node.elem
				clone.addLast(node.elem);
			}					
			cloneReplace(node.next, clone, x, y);	// go to the next node
		}
	}

	/**
	 * Clones the elements between index start and index end-1
	 * @param start - index of the first element to be cloned
	 * @param end - index of the last element to be cloned
	 * @return A copy of the list with all the elements between index start and index end-1
	 */
	public LinkedList<E> cloneSublist(int start, int end) {
		LinkedList<E> clone = new LinkedList<E>();
		cloneSublist(this.first, clone, 0, start, end);
		return clone;
	}

	private void cloneSublist(Node<E> node, LinkedList<E> list, int count, int start, int end) {
		if (node != null && count >= start ) { 		// Stops when node == null (ie we have the last node)
			list.addLast(node.elem);				// adds elements only after counting count position
		}
		if (count < end - 1 ){							// invokes the method while counts < end
			cloneSublist(node.next, list, count+1, start, end);
		}
	}

	/**
	 * Clones the whole list, except the elements between index start and index end-1
	 * @param start - index of the first element to ignore
	 * @param end - index of the last element to be ignored
	 * @return A copy of the list without the elements between index start and index end-1
	 */
	public LinkedList<E> cloneExceptSublist(int start, int end) {
		LinkedList<E> clone = new LinkedList<E>();
		cloneExceptSublist(this.first, clone, 0, start, end);
		return clone;
	}

	private void cloneExceptSublist(Node<E> node, LinkedList<E> list, int count, int start, int end) {
		if (node != null && (count < start) || (node!= null & count > end - 1)) {
			list.addLast(node.elem);
		}
		if (node != null) {
			cloneExceptSublist(node.next, list, count+1, start, end);
		}
	}

	/** 
	 * Reverses the list
	 * @return A new list with the same elements of this list, in reverse order
	 */
	public LinkedList<E> reverse() {
		LinkedList<E> reverse = new LinkedList<E>();
		reverse(this.first, reverse);
		return reverse;
	}

	private void reverse(Node<E> node, LinkedList<E> list) {
		if (node != null) { 		//Stops when node == null (ie we have the last node)
			list.addFirst(node.elem);
			reverse(node.next, list);
		}
	}

	/**
	 * Concatenates the original list with lst list
	 * @param lst - list to concatenate with
	 * @return new list with the elements of this list followed by the elements of lst list
	 */
	public LinkedList<E> concatenate(LinkedList<E> lst) {
		LinkedList<E> conc = this.clone(); 			// clone of the original list
		clone(lst.first, conc);				// we give the first node of the other list to start
		return conc;								// ...adding the nodes of the lst list to the conc list
	}

	/**
	 * Removes the first occurrence in the list of the element e 
	 * @param e - element to remove
	 */
	public void remove(E e) {
		if (e != null) {
			remove(this.first, e);
		}
	}

	private void remove(Node<E> node, E e) {
		//if the node to remove is the first
		if (node.elem.equals(e) && node == this.first) {
			this.first = first.next;
		}
		else if (node.next.elem.equals(e)) {
			node.next = node.next.next;
			if (node.next == last) {	//if the node to remove is the last one
				last = node;
			}
		}
		else if (node.next != null) {
			remove(node.next, e);
		}
	}

	/**
	 * Removes the elements between the position start until the end-1 of the list 
	 * @param start - index of the first element to be removed
	 * @param end - index of the last element to be removed
	 */
	public void removeSublist(int start, int end) {
		assert end > start : "Start must be greater than end";
		this.first = removeSublist(this.first, 0, start, end);
		this.size -= end - start;
	}

	private Node<E> removeSublist(Node<E> n, int index, int start, int end) {
		System.out.println(index + " -> " + n.elem);
		if (start == 0) {
			first.next = removeSublist(n.next, index+1, start, end);
		}
		else if (index == start -1) {
			n.next = removeSublist(n.next, index+1, start, end);
		}
		else if (index != end) {
			return removeSublist(n.next, index+1, start, end);
		}
		return n; // index == end
	}

	@Override
	public Iterator<E> iterator() {
		return (this).new LinkedListIterator<>();
	}

	public BFIterator<E> bfIterator() {
		return (this).new LinkedListIterator<>();
	}

	//----------------------------------------------------------
	@SuppressWarnings("hiding")
	private class LinkedListIterator<E> implements Iterator<E>, BFIterator<E> {

		// Instance Fields
		private int index, indexBFIterator;

		// ---------------------
		// Constructor
		/**
		 * Constructor
		 */
		protected LinkedListIterator() {
			index = 0;
			indexBFIterator = size - 1;
		}

		// ---------------------
		// Inherited Methods
		@Override
		public boolean hasNext() {
			return (index < size);
		}

		@Override
		public E next() {
			if (!hasNext()) throw new NoSuchElementException("Error on Next. No more objects to iterate.");
			@SuppressWarnings("unchecked")
			E obj = (E) get(index);
			index++;
			return obj;
		}

		@Override
		public boolean hasPrevious() {
			return (indexBFIterator >= 0);
		}

		@Override
		public E previous() {
			if (!hasPrevious()) throw new NoSuchElementException("Error on Next. No more objects to iterate.");
			@SuppressWarnings("unchecked")
			E obj = (E) get(indexBFIterator);
			indexBFIterator--;
			return obj;
		}
	}
}

class Node<E> {
	final E elem;
	Node<E> next;

	Node(E e, Node<E> n) {
		elem = e;
		next = n;
	}

	Node(E e) {
		elem = e;
		next = null;
	}

}