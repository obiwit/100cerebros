package p2utils;

public class LinkedList<E> {

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

  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;

  /** toString */ 
  public String toString() {
	if (size()==0) 
		return "[ ]";
	String s = "[ " + first.elem.toString();
	if (size()==1) 
		return s + " ]";
	Node<E> n = first.next;
	while (n!=null) {
		s += (", " + n.elem.toString());
		n = n.next;
	}
	return s + " ]";
  }
  /** reverse toString() */
  public String reverseToString() {
	if (size()==0) 
		return "[ ]";
	if (size()==1) 
		return "[ " + first.elem.toString() + " ]";
	String s = "";
	Node<E> n = first.next;
	while (n!=null) {
		s = n.elem.toString() + ", " + s;
		n = n.next;
	}
	return "[ " + s + first.elem.toString() + " ]";
  }

  // Acrescente as funções adicionais pedidas no guião:
  
  public E get(int index) {
	assert index < size;
	
	Node<E> n = first;
	while (index > 0) {
		n = n.next;
		index--;
	} 
	return n.elem;
  }

}
