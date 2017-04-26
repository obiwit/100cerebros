package e09.p2utils;

import e09.p2utils.Node;

public class LinkedList<E> {

	// Fields
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

	//----------------------------------------------------------
	//count(e) - devolve o número de ocorrências de um dado elemento na lista.
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

	//indexOf(e) - devolve a posição da primeira ocorrência de um dado elemento na lista, ou -1 caso a lista n~ao contenha o elemento.
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

	// cloneReplace(x,y) - devolve uma cópia da lista em que todas as ocorrências de x estão substituídas por y.
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

	/* Would work without a final elem in Node objects
	public LinkedList<E> cloneReplace(E x, E y) {
		LinkedList <E> cloneList = clone();
		cloneReplace(cloneList.first, x, y);
		return cloneList;
	}

	private void cloneReplace(Node<E> node, E x, E y){
		if (node != null) { 	// end case for node = null
			if (node.elem.equals(x)) {
				node.elem = y;
			}
			cloneReplace(node.next, x, y);
		}
	}

	 */ 

	//cloneSublist(start,end) - devolve uma nova lista com os elementos nas posições start até end-1.
	public LinkedList<E> cloneSublist(int start, int end) {
		LinkedList<E> clone = new LinkedList<E>();
		Node<E> node = this.first;
		for (int i = 0; i < start; i++) {
			node = node.next; 
		}
		cloneSublist(node, clone, 0, end-start);
		return clone;
	}

	private void cloneSublist(Node<E> node, LinkedList<E> list, int count, int end) {
		if (node != null && count < end) { 		//Stops when node == null (ie we have the last node)
			list.addLast(node.elem);
			cloneSublist(node.next, list, count+1, end);
		}
	}

	// more elegant solution
	public LinkedList<E> cloneSublist1(int start, int end) {
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

	//cloneExceptSublist(start,end) - devolve uma cópia da lista excluindo os elementos nas posições start até end-1.
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

	//removeSublist(start,end) - remove da lista os elementos nas posições start até end-1.
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
	
	/*
	private Node<E> removeSublist(Node<E> node, int count, int start, int end){
		if (start == 0) {
			first = removeSublist(node.next, count+1, start, end);
		}
		if (count == start - 1) {			// nodeToChange
			node.next = removeSublist(node.next, count+1, start, end);
		}
		if (count <= end - 1) {				// nodeToBeChangedTo
			return node;
		}
		return removeSublist(node.next, count+1, start, end);

		/*
		// goes up to end position
		Node<E> nodeToChange;
		
		if (node != null && (count >= start && count < end - 1)) {
			return nodeToChange = node.next;
		}
		if (node != null && count < start) {
			removeSublist(node.next, count+1, start, end);
		}
		 */

	//}
}


