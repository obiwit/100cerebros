package p2utils;

public class SortedList<E extends Comparable<E>> {

  public SortedList() { }

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
   * Inserts a new element in the list
   * @param e the element to be inserted
   */
  public void insert(E e) {
    first = insert(first,e);
    size++;
  }
  private Node<E> insert(Node<E> n, E e) {
    if (n==null || e.compareTo(n.elem) < 0)
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
    if (n.elem.compareTo(prev.elem) < 0) return false;
    return isSorted(n,n.next);
  }
  
  
	//~ /**
	//~ * ITERATIVE - Returns true the list contains given element
	//~ * @pos inteiro que varia entre 0 e size-1 
	//~ */
	//~ public boolean contains(E e) {
	//~ assert (!isEmpty()): "Empty";
	//~ assert e != null: "Element is null";
	
		//~ return contains(first, e);
	//~ }
	//~ private boolean contains(Node<E> n, E e) {
		//~ for (int i = 0; i < size; i++) {
			//~ if (n.elem.compareTo(e) == 0) {
				//~ return true;
			//~ }
			//~ n = n.next;
		//~ }
	//~ }

  
	/**
	* RECURSIVE - Returns true the list contains given element
	* @pos inteiro que varia entre 0 e size-1 
	*/
	public boolean contains(E e) {
	assert (!isEmpty()): "Empty";
	assert e != null: "Element is null";

		return contains(first, e);
	}
	private boolean contains(Node<E> n, E e) {
		if (n == null || e == null /*|| (e.compareTo(n.first().elem) < 0 && e.compareTo(n.last().elem) > 0)*/) {
			return false;
		}
		else if (n.elem.compareTo(e) == 0) {
			return true;
		}
		else {
			return contains(n.next, e);
		}
	}
	
	/**
	* ITERATIVE - converts list into string format like [e,e,e]
	*/
	public String toString() {
	assert (!isEmpty()): "Empty";
		
		return toString(this.first);
	}
	private String toString(Node<E> n) {
		String result = "[";
		while (n.next != null) {
			result = result + n.elem + ",";
			n = n.next;
		}
		result = result + n.elem;
		return result + "]";
	}
	
	//~ /**
	//~ * ITERATIVE BASED ON INSERTION
	//~ * merges two SortedLists into one SorteList
	//~ */
	//~ public SortedList<E> merge(SortedList<E> lst) {
	
		//~ return merge(lst.first);
	//~ }
	//~ private SortedList<E> merge(Node<E> n) {
		//~ while (n != null) {
			//~ this.insert(n.elem);
			//~ n = n.next;
		//~ }
	//~ return this;	
	//~ }
	
	/**
	* RECURSIVE - USING INSERT
	* merges two SortedLists into one SorteList
	*/
	public SortedList<E> merge(SortedList<E> lst) {
	
		return merge(lst.first);
	}
	private SortedList<E> merge(Node<E> n) {
			if (n == null)
				return this;
			this.insert(n.elem);
			merge(n.next);
			
	return this;	
	}
		
		
  // private attributes
  private Node<E> first = null;
  private int size = 0;

}
