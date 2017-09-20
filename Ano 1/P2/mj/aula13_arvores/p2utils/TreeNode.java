
package p2utils;

public class TreeNode<E>{

	final String key;
	E elem;
	TreeNode<E> right = null;
	TreeNode<E> left = null;
	
	public TreeNode(String k, E e){
		key = k;
		elem = e;
		right = null;
		left = null;
	}
	
	public TreeNode(String k, E e, TreeNode<E> n1, TreeNode<E> n2 ){
		key = k;
		elem = e;
		right = n1;
		left = n2;
	}

}


