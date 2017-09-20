	package p2utils;

import static java.lang.System.*;
	
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

	  assert !isEmpty() && first().equals(e);
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
	
	//count(e) - devolve o numero de ocorrencias de um dado elemento na lista.
	public int count(E e){
		return count(first, e);
	}
	
	private int count(Node<E> n, E e){
		if(n != null){
			if(n.elem == e) 
				return 1 + count(n.next, e);
			else return count(n.next, e);
		}
		else return 0;
	}
	
	// indexOf(e) - devolve a posicao da primeira ocorrencia de um dado elemento na lista, ou -1 caso a lista nao contenha o elemento
	public int indexOf(E e){
		return indexOf(this.first, e, 0);
	}
	private int indexOf(Node<E> n, E e, int i){
		if(n != null){
			if(n.elem.equals(e)) 
				return i;
			else return indexOf(n.next, e, ++i);
		}
		else return -1;
	}
	
	//cloneReplace(x,y) - devolve uma copia da lista em que todas as ocorrencias de x estao substituidas por y.
	public LinkedList<E> cloneReplace(E x, E y){
		LinkedList<E> l = new LinkedList<E>();
		cloneReplace(l, this.first, x, y);
		return l;
		
	}
	private void cloneReplace(LinkedList<E> l, Node<E> n, E x, E y){
		if(n!=null){
			if( n.elem.equals(x)){
				l.addLast(y);
				cloneReplace(l, n.next, x, y);
			}
			else{
				l.addLast(n.elem);
				cloneReplace(l, n.next, x, y);
			}
		
		}
		
		//nao funciona :'(
		//~ if(n!=null){
			//~ if( n.elem.equals(x)){
				//~ n = new Node(y);
				//~ cloneReplace(n.next, x, y);
			//~ }
			//~ else{
				//~ cloneReplace(n.next, x, y);
			//~ }
		//~ }
	}
	
	//cloneSublist(start,end) - devolve uma nova lista com os elementos nas posicoes start ate end-1.
	public LinkedList<E> cloneSublist(int start, int end){
		assert start>=0:"impossible start";
		assert end<=size:"impossible end";
		LinkedList<E> l = new LinkedList<E>();
		cloneSublist(l, first, start, end-1, 0);
		return l;
	}
	private void cloneSublist(LinkedList<E> l, Node<E> n, int start, int end, int i){
		 
		if(n!=null && i>=start && i<=end){
			l.addLast(n.elem);
			cloneSublist(l, n.next, start, end, ++i);
		}
		else if(i<end)
			cloneSublist(l, n.next, start, end, ++i);
		
	}
	
	//cloneExceptSublist(start,end) - devolve uma copia da lista exlcuindo os elementos nas posicoes start ate end-1
	public LinkedList<E> cloneExceptSublist(int start, int end){
		assert start>=0:"impossible start";
		assert end<=size:"impossible end";
		LinkedList<E> l = new LinkedList<E>();
		cloneSublist(l, first, start-1, end-2, 0);//esta mal e suposto fazer o mesmo q a remove so q a clonar
		return l;
	}
	
	//removeSublist(start,end) - remove da lista os elementos nas posicoes start ate end-1
	public void removeSublist(int start, int end){
		assert start>=0:"impossible start";
		assert end<=size:"impossible end";
		removeSublist(this.first, start, end-1, 0);
	}
	private void removeSublist(Node<E>  n, int start, int end, int i){
		if(i == start-1) n.next = nodeOf(i, end, n);
		else removeSublist(n.next, start, end, i+1);
	}
	
	private Node<E> nodeOf(int i, int pos, Node<E> n){
		if(i==pos) return n.next;
		else return nodeOf(i+1, pos, n.next);
	}
}


