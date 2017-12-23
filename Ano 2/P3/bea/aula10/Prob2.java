package aula10;

import java.util.Iterator;

import aula10.prob2.BinarySearchTree;

public class Prob2 {

	public static void main(String[] args) {
		
		BinarySearchTree<String> bst = new BinarySearchTree<>();

		// basic functionality test
		String s = "teste";	
		bst.insert(s);
		System.out.println(bst.contains(s)); // true
		bst.remove(s);
		System.out.println(bst.contains(s)); // false
		
		// iterator test
		bst.insert("metade"); bst.insert("acima"); bst.insert("ultimo");
		bst.insert("writable"); bst.insert("meta"); 
		
		Iterator<String> it = bst.iterator();

		System.out.printf("\n\nEntries in the Tree:\n");
		while(it.hasNext())
			System.out.println(it.next());
		

	}

}

