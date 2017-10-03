//NAO ESTA CORRIGIDO
package p2utils;
import static java.lang.System.*;
public class SortedArray<E extends Comparable<E>> {

  public SortedArray() { }
    	
  // private attributes
  private E array[];
  private int size = 0;
  
  /**
   * @return Number of elements in the list
   */
  public int size() { return size; }
  
  
  public boolean isFull(){return size == array.length;}

  /**
   * Checks if the list is empty
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return array.length == 0; }

  /**
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";
      return array[0];
  }

  /**
   * Inserts a new element in the list
   * @param e the element to be inserted
   */
   //review
  public void insert(E e) {
    E a [] = new E[this.length+1];
    clone(this, a); //clonar o this para o a
    
    return insert(e, a, this.length);
    
  }
  private E[] insert( E e, E a[], int i) {
    if(a[i]<=e){
			a[i+1]=a[i];
			a[i]=e;
			return a;
	}
	else{
		a[i+1]=a[i];
		return insert(e, a, --i);
	}
  }
  
	private void clone(E a1 [], E a2 []){
		for (int i = 0; i < a1.length; i++){
			a2[i]=a1[i];
		}
	}
  

  /**
   * Removes the first element in the list
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    for (int i = 0; i < size-1; i++){
		array[i]=array[i+1];
	}
    size--;
  }

  /**
   * Checks if the list is sorted
   * @return {@code true} if sorted, {@code false} otherwise
   */
  public boolean isSorted() {
    if (size < 2)
      return true;
    return isSorted(array, 0); 
  }
  private boolean isSorted(E a[], int i) {
    if (a == null || (i==(a.length-1) && (a[i-1]<a[i]))) return true;
    if ( a[i+1]<a[i]) return false;
    return isSorted(a, ++i);
  }

	public boolean contains(E e) { 
		return contains(array,e, 0); 
	}
	
	private boolean contains(E a[],E e, int i){
		if (a == null || a.length == 0 || a.length == i) return false;
		if((a[i].equals(e))) return true; // ou (n.elem.compareTo(e) == 0) e==n 0; e>n +; e<n - 
		else if(a[i].compareTo(e)>0) return contains(a,e,i++);
		else return false;
	}
	
	//era suposto ser iteretiva
	public String toString(){
		String list = "";
		return toString(array,0);
	}
		
	private String toString(E a[],int i){
		if (a == null || a.length == 0 || a.length == i) return "";
		else{
			return (a[i]+ " " + toString(a[i++]));
		}
	}
	
	public SortedArray<E> merge(SortedArray<E> sortA2) {
		SortedArray<E> sortA1 = this;	
		return merge(sortA1, sortA2.array, 0);
	}
	private SortedArray <E> merge(SortedArray<E> sortA1, E a[], int i) {
		if (a == null || a.length == 0 || a.length == i)
			return sortA1;
		sortA1.insert(a[i]);
		merge(sortA1, a[i+1]);
			
	return sortA1;	
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

	//~ private void clone(Node<E> node, SortedArray<E> list) {
		//~ if (node != null) { 		//Stops when node == null (ie we have the last node)
			//~ list.insert(node.elem);
			//~ clone(node.next, list);
		//~ }
	//~ }

	
	
	//function that I added and it was not supposed
	//Prints all elements, one per line.
	public void print() {
		print(array);
	}
	
	private void print(E a[]) {
		if (a == null || a.length == 0 || a.length == i) {
		  System.out.println(a[i]);
		  print(a[i+1]);
		}
	}
	


}
