package p2utils;

/**
 * A basic singly LinkedList implementation.
 *
 * @author Luis Moura, using P2 class guides
 */

public class LinkedList<E> {

//---------------- NESTED NODE CLASS ---------------- 
  /**
   * Is nested to avoid generics error on compile.
   * Node of a singly linked list, which stores a reference to its
   * element and to the subsequent node in the list (or null if this
   * is the last node).
   */
private static class Node<E> {

//--- Variables --------------------------------------------------------
    /** The element stored at this node */
    final E elem;

    /** A reference to the subsequent node in the list */
    Node<E> next;
    
//--- Constructors -----------------------------------------------------
    /**
     * Creates a node with the given element and next node.
     *
     * @param e  the element to be stored
     * @param n  reference to a node that should follow the new node
     */
     Node(E e, Node<E> n) {
		 elem = e;
		 next = n;
	}
	
    /**
     * Creates a node with the given element and null next node.
     *
     * @param e  the element to be stored
     */
	Node(E e) {
		elem = e;
		next = null;
	}
}
//----------- end of nested Node class ---------------------------------


//--- IMPLEMENTATION OF LINKEDLIST CLASS--------------------------------
//--- Variables --------------------------------------------------------
  /** The head node of the list */
	private Node<E> first = null;

  /** The last node of the list */
	private Node<E> last = null;

  /** Number of nodes in the list */
	private int size = 0;

//--- Constructors -----------------------------------------------------
  /** Constructs an initially empty list. */
	public LinkedList() { }

//--- Access methods ---------------------------------------------------
  /**
   * Returns the number of elements in the linked list.
   * @return number of elements in the linked list
   */
	public int size() {
		return size;
	}

  /**
   * Tests whether the linked list is empty.
   * @return true if the linked list is empty, false otherwise
   */
	public boolean isEmpty() {
		return (size == 0);
	}

  /**
   * Returns (but does not remove) the first element of the list
   * @return element at the front of the list (or null if empty)
   */
	public E first() {
	assert !isEmpty(): "Empty";
		return first.elem;
	}

  /**
   * Returns (but does not remove) the last element of the list.
   * @return element at the end of the list (or null if empty)
   */
	public E last() {
	assert !isEmpty(): "Empty";
		return last.elem;
	}

//--- Class Methods ----------------------------------------------------
  /**
   * Adds an element to the front of the list.
   * @param e  the new element to add
   */
	public void addFirst(E e) {
		first = new Node<E>(e, first);
		if (isEmpty()) {
			last = first;
		}
		size++;
	
	assert !isEmpty(): "ERROR: is empty after adding";
	assert first().equals(e): "Wrong element in first position after adding";
	}

  /**
   * Adds an element to the end of the list.
   * @param e  the new element to add
   */
	public void addLast(E e) {
		Node<E> newest = new Node<E>(e);
		if (isEmpty()) {
			first = newest;
		} else {
			last.next = newest;
		}
		last = newest;
		size++;
	
	assert !isEmpty(): "ERROR: is empty after adding";
	assert last().equals(e): "Wrong element in first position after adding"; 
	}

  /**
   * Removes and returns the first element of the list.
   */
	public void removeFirst() {
	assert !isEmpty(): "Empty";
		first = first.next;
		size--;
		if (isEmpty()) {
			last = null;
		}
	}
	
  /**
   * Clears the list.
   */
	public void clear() {
	assert !isEmpty(): "Empty";
		first = last = null;
		size = 0;
	}
	
  /**
   * Prints the list
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
   * Clones given list into a new list
   */
	public LinkedList<E> clone() {
	assert (!isEmpty()): "Empty";
	
		LinkedList<E> cln = new LinkedList<E>();
		clone(first, cln);
		return cln;
	}
	private void clone(Node<E> n, LinkedList<E> cln) {
		if (n != null) {
			cln.addLast(n.elem);
			clone(n.next, cln);
		}
	}
	
  /**
   * Reverses given list into a new list
   */
	public LinkedList<E> reverse() {
	assert (!isEmpty()): "Empty";
	
		LinkedList<E> rev = new LinkedList<E>();
		reverse(first, rev);
		return rev;
	}
	private void reverse(Node<E> n, LinkedList<E> rev) {
		if (n != null) {
			rev.addFirst(n.elem);
			reverse(n.next, rev);
		}
	}
	
  /**
   * devolve o elemento da lista na posicao indicada
   * @pos inteiro que varia entre 0 e size-1 
   */
	public E get(int pos) {
	assert (!isEmpty()): "Empty";
	assert ((pos >= 0) && (pos < size())): "Position out of bounds";
	
		return get(first, pos);
	}
	private E get(Node<E> n, int pos) {
		if (pos == 0) {
			return n.elem;
		} else {
			return get(n.next, pos-1);
		}
	}

  /**
   * devolve o elemento da lista na posicao indicada
   * @pos inteiro que varia entre 0 e size-1 
   */
	public LinkedList<E> concatenate(LinkedList<E> lst) {
	//assert (!isEmpty()): "Empty";
	
		return concatenate(this.clone(), lst.first);
	}
	private LinkedList<E> concatenate(LinkedList<E> isThis, Node<E> l) {
		if (l == null) {
			return isThis;
		} else {
			isThis.addLast(l.elem);
			return concatenate(isThis, l.next);
		}
	}
	
  /**
   * Returns true the list contains given element
   * @pos inteiro que varia entre 0 e size-1 
   */
	public boolean contains(E e) {
	assert (!isEmpty()): "Empty";
	assert e != null: "Element is null";
	
		return contains(first, e);
	}
	private boolean contains(Node<E> n, E e) {
		if (n == null || e == null) {
			return false;
		}
		else if (n.elem.equals(e)) {
			return true;
		}
		else {
			return contains(n.next, e);
		}
	}
	
  /**
   * Reemoves first ocorrence of given element
   * @
   */
   
//--- primeria abordagem, minha, mais organica no meu entender,
//--- igualmente eficiente ---------------------------------------------
   
	//~ public void remove(E e) {
	//~ assert contains(e);
	//~ assert isEmpty();
		
		//~ if (first.elem.equals(e)) {
			//~ first = first.next;
		//~ } else {
			//~ remove(first.next, first, e);
		//~ }
		//~ size--;
	//~ }
	//~ private void remove(Node<E> current, Node<E> previous, E e) {
		//~ if (current != null) {
			//~ if (current.elem.equals(e)) {
				//~ previous.next = current.next;
			//~ }
			//~ else {
				//~ remove(current.next, previous.next, e);
			//~ }
		//~ }
	//~ }

//--- segunda abordagem, do prof, mais simples a nivel de codigo,
//--- igualmente eficiente ---------------------------------------------

	public void remove(E e) {
		assert contains(e): "List doen not contain element";
		assert isEmpty(): "List is empty";
		
		first = remove(first,e);
		size--;
	}
	private Node<E> remove(Node<E> n,E e){
		if (n.elem.equals(e)) {
			return n.next;
		} else {
			n.next = remove(n.next,e);
			if (n.next == null) { last = n; }
		}
		return n;
	}
	
}
