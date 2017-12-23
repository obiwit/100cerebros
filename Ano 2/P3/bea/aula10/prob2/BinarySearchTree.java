package aula10.prob2;

import java.util.Iterator;
import java.lang.Comparable;

public class BinarySearchTree<T extends Comparable<? super T>> implements Iterable<T> {
	// o elemento do tipo T deve ser comparável para efectuar pesquisas
	// mas como pode herdar a implementação de compareTo() é mais correcto 
	// usar <? super T>

	
	
	// --------------------------------------------
	// -- internal classes
	// --------------------------------------------
	private static class BSTNode<T extends Comparable<? super T>> { 
		T element;
		BSTNode<T> left; 
		BSTNode<T> right;
		
		BSTNode(T theElement) { 
			element = theElement;
			left = right = null;
		}
		/**
		 * Appends a node or subtree to a subtree
		 * @param subtree subtree to append
		 */
		public void append(BSTNode<T> subtree) {
			
			if (subtree.element.compareTo(element) > 0) { // insert right
				if(right == null)
					right = subtree;
				else
					right.append(subtree);
				
			} else { // insert left
				if(left == null)
					left = subtree;
				else
					left.append(subtree);
			}
			
		}
	}
	private class BSTIterator<T> implements Iterator<T> {
		
		private int visitedNodes;
		private T[] treeItems;
		
		public BSTIterator() {
			visitedNodes = 0;
			
			Object[] aux = toArray();
			int auxIndex = 0;
			
			treeItems = (T[]) new Object[numNodes];
			
			for(Object o : aux) {
				treeItems[auxIndex] = (T) aux[auxIndex++];
			}
		}

		@Override
		public boolean hasNext() {
			return visitedNodes < numNodes;
		}

		@Override
		public T next() {
			if (!hasNext()) throw new IndexOutOfBoundsException();
			
			return treeItems[visitedNodes++];
		}
		
	}

	// --------------------------------------------
	// -- fields
	// --------------------------------------------
	private BSTNode<T> root; 
	private int numNodes;

	// --------------------------------------------
	// -- constructor
	// --------------------------------------------
	public BinarySearchTree() { 
		root = null; 
		numNodes = 0;
	}
	

	// --------------------------------------------
	// -- methods
	// --------------------------------------------
	
	
	// --------------------------------------------
	// size-related methods
	public boolean isEmpty() {
		return numNodes == 0;
	}
	public int size() {
		return numNodes;
	}

	// --------------------------------------------
	// insertion-related methods
	public void insert(T value) { 
		if(contains(value)) return;
		
		root = insert(value, root);
	}
	private BSTNode<T> insert(T value, BSTNode<T> root) {
		
		if(root != null) {
			if (value.compareTo(root.element) > 0)
				root.left = insert(value, root.left);
			else
				root.right = insert(value, root.right);
		} else {
			numNodes++;
			root = new BSTNode<>(value);
		}
		
		return root;
	}

	// --------------------------------------------
	// removal-related methods
	public void remove(T value) { 
		if(!contains(value)) return;
		
		root = remove(value, root);
	}
	private BSTNode<T> remove(T value, BSTNode<T> root) {
		
		BSTNode<T> node = find(value, root);
		boolean isRootNode = node.equals(root);
		
		if (node.left == null && node.right == null) {
			node = null;
		} else if (node.left == null) {
			node = node.right;
		} else if (node.right == null) {
			node = node.left;
		} else {
			node.left.append(node.right);
			node = node.left;
		}
		
		numNodes--;
		return (isRootNode) ? node : root;
	}

	// --------------------------------------------
	// search-related methods
	public boolean contains(T value) {
		return valueOf(find(value, root)) != null;
	}
	private T valueOf(BSTNode<T> node) {
		if (node == null) 
			return null;
		
		return node.element;
	}
	private BSTNode<T> find(T value, BSTNode<T> root) {
		
		if(root != null) {
			if (value.compareTo(root.element) == 0)
				return root;
			else if (value.compareTo(root.element) > 0)
				return find(value, root.left);
			else
				return find(value, root.right);
		}
		return null;
	}

	// --------------------------------------------
	// other methods
	public Iterator<T> iterator() {
		return new BSTIterator();
	}
	public Object[] toArray() {
		Object[] a = new Object[numNodes];
		fillArray(a, root, 0);
		return a;
	}
	private int fillArray(Object[] array, BSTNode<T> root, int index) {
		if (root == null) return index;
		int curIndex = fillArray(array, root.right, index);
		array[curIndex++] = root.element;
		return fillArray(array, root.left, curIndex);
	}
}