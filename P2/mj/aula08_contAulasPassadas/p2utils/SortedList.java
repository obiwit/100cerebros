package p2utils;
import static java.lang.System.*;
public class SortedList<E extends Comparable<E>> {

  public SortedList() { }
    	
  // private attributes
  private Node<E> first = null;
  private int size = 0;
  
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
    this.first = insert(this.first,e);
    size++;
  }
  private Node<E> insert(Node<E> n, E e) {
    if ((n==null) || (e.compareTo(n.elem)<0))//n.elem>e positivo
      return(new Node(e,n));
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
	int result = n.elem.compareTo(prev.elem); //prev.elem>n.elem  positivo
    if (n == null) return true;
    if (result > 0) return false;
    return isSorted(n,n.next);
  }

	public boolean contains(E e) { 
		return contains(this.first,e); 
	}
	
	private boolean contains(Node<E> n,E e){
		if (n == null) return false;
		//e==n 0; e>n +; e<n - 
		if((n.elem.equals(e))) return true; //  (n.elem.compareTo(e) == 0)
		else if(n.elem.compareTo(e)>0) return contains(n.next,e);
		else return false;
	}
	
	//era suposto ser iteretiva
	public String toString(){
		String list = "";
		return toString(this.first);
	}
		
	private String toString(Node<E> n){
		if (n == null) return "";
		else{
			return (n.elem + " " + toString(n.next));
		}
	}
	
	public SortedList<E> merge(SortedList<E> lst) {
		SortedList<E> list = this;	
		return merge(list, lst.first);
	}
	private SortedList<E> merge(SortedList<E> list, Node<E> n) {
		if (n == null)
			return list;
		list.insert(n.elem);
		merge(list, n.next);
			
	return list;	
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
	
	//~ /* merge(lst) - Devolve uma nova lista ordenada contendo os elementos da lista (em que
	 //~ * o m´etodo ´e chamado) e os elementos da lista dada no argumento. Desenvolva uma
	 //~ * solu¸c˜ao recursiva para este m´etodo.
	 //~ */
	//~ public SortedList<E> merge(SortedList<E> lst) {
		//~ SortedList<E> conc = this.clone(); 			// clone of the original list
		//~ clone(lst.first, conc);				// we give the first node of the other list to start
		//~ return conc;								// ...adding the nodes of the lst list to the conc list
	//~ }
	
	//~ // Since the merge method is basically a clone of 2 lists put together  
	//~ /**
	 //~ * Clones the list
	 //~ * @return clone of the current list
	 //~ */
	//~ public SortedList<E> clone() {
		//~ SortedList<E> clone = new SortedList<E>();
		//~ clone(this.first, clone);
		//~ return clone;
	//~ }

	//~ private void clone(Node<E> node, SortedList<E> list) {
		//~ if (node != null) { 		//Stops when node == null (ie we have the last node)
			//~ list.insert(node.elem);
			//~ clone(node.next, list);
		//~ }
	//~ }

	
	
	//function that I added and it was not supposed
	//Prints all elements, one per line.
	public void print() {
		print(first);
	}
	
	private void print(Node<E> n) {
		if (n != null) {
		  System.out.println(n.elem);
		  print(n.next);
		}
	}
	


}

