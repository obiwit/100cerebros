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
    first = insert(first, e);
    size++;
  }
  private Node<E> insert(Node<E> n, E e) {
    if (n==null || e.compareTo(n.elem) < 0)
      return new Node<E>(e, n);
    n.next = insert(n.next, e);
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
    return isSorted(first, first.next); 
  }
  private boolean isSorted(Node<E> prev, Node<E> n) {
    if (n == null) return true;
    if (n.elem.compareTo(prev.elem) < 0) return false;
    return isSorted(n,n.next);
  }
  //a.compareTo(b) = 0, iguais, -1, a < b, 1, a > b

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
		//a.compareTo(b) = 0, iguais, -1, a < b, 1, a > b
		if (n == null || n.elem.compareTo(e) > 0) return false;	// <=> e < elem					
		if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
		if (n.elem.equals(e)) return true; 
		return contains(n.next,e);
	}

	public String toString() {
		if (first == null) return "[]";
		Node<E> pointer = first;
		// has to be done once out of the loop, to get the commas'
		// positioning right
		String result = "[" + pointer.elem;
		pointer = pointer.next;
		while (pointer != null) { // or we could have used size
			result += "," + pointer.elem;
			pointer = pointer.next;
		}
		return (result + "]");
	}
	
	/** merge(lst) - Devolve uma nova lista ordenada contendo os elementos 
	 * da lista (em que o metodo e chamado) e os elementos da lista dada
	 * no argumento. 
	 */
	public SortedList<E> merge(SortedList lst) {
		SortedList merged = clone();
		return merge(merged, lst.first);
	}
	private SortedList<E> merge(SortedList lst, Node<E> n) {
		if (n == null) return lst;
		else {
			lst.insert(n.elem);
			return merge(lst, n.next);
		}
	}
	
  /**
   * Clones the list
   * @return clone of the current list
   */
  public SortedList<E> clone() {
	SortedList<E> cln = new SortedList<E>();
    clone(this.first, cln);
    return cln;
  }
  private void clone(Node<E> n, SortedList<E> cln) {
	if (n != null) {
		cln.insert(n.elem);
		clone(n.next, cln);
	} 
  }
  // private attributes
  private Node<E> first = null;
  private int size = 0;

}
