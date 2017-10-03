package p2utils;

public class Stack<E> {
	
  private LinkedList<E> list = new LinkedList<E>();
  /**
   * Adds a new element to the top of the stack
   */
  public void push(E element) { list.addFirst(element); }

  /**
   * @return  Top element in the stack
   */
  public E top() { return list.first(); }

  /**
   * Removes the top element in the stack
   */
  public void pop() { list.removeFirst(); }

  /**
   * @return Number of elements in the list
   */
  public int size() { return list.size(); }

  /**
   * Checks if the stack is empty
   * @return  {@code true} if stack empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return list.isEmpty(); }


	public String print(){
		
		return toString(this.list);
	}

	private String toString(LinkedList<E> l){
		String s = "[ ";
		for (int i = 0; i < l.size(); i++){
			s = s + l.get(i) + " ";
		}
		s = s + "]";
		return s;
	
	}
}
