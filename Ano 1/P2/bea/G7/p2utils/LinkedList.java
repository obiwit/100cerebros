package p2utils;

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
  
  
  /** CLone */
  public LinkedList<E> clone() {
  LinkedList<E> cln = new LinkedList<E>();
    clone(this.first, cln);
    return cln;
  }
  private void clone(Node<E> n, LinkedList<E> cln) {
  if (n != null) {
    cln.addLast(n.elem);
    clone(n.next, cln);
  } 
  }

  /** reverse */
  public LinkedList<E> reverse() {
  LinkedList<E> rev = new LinkedList<E>();
    reverse(this.first, rev);
    return rev;
  }
  private void reverse(Node<E> n, LinkedList<E> rev) {
  if (n != null) {
    rev.addFirst(n.elem);
    reverse(n.next, rev);
  } 
  }
  
  /** devolve o elemento na posicao pos da lista, em que pos varia 
   * entre 0 e size()-1
   */
  public E get(int pos) {
    assert (pos >= 0 && pos < size());
    return get(first, pos);
  }
  private E get(Node<E> n, int pos) {
    if(pos == 0) return n.elem;
  return get(n.next, pos-1);
  }
  
  /** devolve uma nova lista com os elementos da lista (em que o metodo 
   * e chamado) seguidos dos elementos da lista dada no argumento. */
  public LinkedList<E> concatenate(LinkedList<E> lst) {
    LinkedList<E> temp = concatenate(new LinkedList<E>(), this.first);
    return concatenate(temp, lst.first);
  }
  private LinkedList<E> concatenate(LinkedList<E> firstList, Node<E> n) {
    if(n == null) return firstList;
    firstList.addLast(n.elem);
  return concatenate(firstList, n.next);
  }
  
  
  /** remove */
/*  public void remove(E removeMe) {
    remove(first, removeMe);
  }
  private void remove(Node<E> n, E removeMe) {
    if(n == null) { return; }
    
    if (first == n && n.elem.equals(removeMe)) {
      first = n.next;
      return;
    }
    else if(n.next.elem.equals(removeMe)) {
      if(n.next == last) { last = n; }
      n.next = n.next.next;
      return;
    }
    remove(n.next, removeMe);
  }*/
  
  // ou 
  
  public void remove(E removeMe) {
    first = remove(first, removeMe);
  }
  private Node<E> remove(Node<E> n, E removeMe) {
    if(n != null) {
      if (n.elem.equals(removeMe)) return n.next;
      else {
        n.next = remove(n.next, removeMe);
        if (n.next == null) last = n;
      }
    }
    return n;
  }
}
