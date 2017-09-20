package p2utils;

import p2utils.Node;

public class LinkedList<E> {

	private Node<E> first = null;
	private Node<E> last = null;
	private int size = 0;

	/**
	 * {@code LinkedList} constructor, empty so far.
	 */
	public LinkedList() { }

	/**
	 * @return Number of elements in the list
	 */
	public int size() { return size; }

	/**
	 * Checks if the list is empty
	 * @return  {@code true} if list empty, otherwise {@code false}.
	 */
	public boolean isEmpty() { return size == 0; }

	/**
	 * @return  First element in the list
	 */
	public E first() {
		assert !isEmpty(): "empty!";

		return first.elem;
	}

	/**
	 * @return  Last element in the list
	 */
	public E last() {
		assert !isEmpty(): "empty!";

		return last.elem;
	}

	/**
	 * Adds a new element to the start of the list
	 */
	public void addFirst(E e) {
		first = new Node<>(e, first);
		if (isEmpty())
			last = first;
		size++;

		assert !isEmpty(): "empty!";
		assert first().equals(e) : "wrong element";
	}

	/**
	 * Adds a new element to the end of the list
	 */
	public void addLast(E e) {
		Node<E> newest = new Node<>(e);
		if (isEmpty())
			first = newest;
		else
			last.next = newest;
		last = newest;
		size++;

		assert !isEmpty(): "empty!";
		assert last().equals(e) : "wrong element";
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
		if (n == null) return false;
		if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
		if (n.elem.equals(e)) return true; 
		return contains(n.next,e);
	}

	// funções adicionais pedidas no guião...
	/**
	 * Clones the list
	 * @return A new list with the same elements of this list
	 */
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
	 * Gets the element in the given position of the list
	 * @param Position in the list (0 is the first position)
	 * @return Element in position pos of the list
	 */
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

	// ver resolução da bia (é uma alternativa possivel)
	/**
	 * Concatenates the original list with lst list
	 * @param lst
	 * @return
	 */
	public LinkedList<E> concatenate(LinkedList<E> lst) {
		LinkedList<E> conc = this.clone(); 			// clone of the original list
		concatenate(lst.first, conc);				// we give the first node of the other list to start
		return conc;								// ...adding the nodes of the lst list to the conc list
	}
	
	// Copy of the clone method - clone() could be called on public method concatenate(LinkedList<E> lst)
	private void concatenate(Node<E> node, LinkedList<E> list) {
		if (node != null) { 		//Stops when node == null (ie we have the last node)
			list.addLast(node.elem);
			concatenate(node.next, list);
		}
	}

	// Not working
	/*public LinkedList<E> concatenate(LinkedList<E> lst) {
		LinkedList<E> original1 = clone();
		LinkedList<E> original2 = lst.clone();
		original1.last.next = original2.first;
		return original1;  	  
	}
	*/
	
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

}
