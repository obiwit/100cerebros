package p2utils;

import static java.lang.System.*;

public class BinarySearchTree<E>
{
  private TreeNode<E> root = null;
  private int size = 0;	
  
  public BinarySearchTree() { }
  
  public TreeNode<E> root(){return root;}
  
  public int size() { return size;  }
  
   public boolean isEmpty() { return size == 0;  }


  public void set(String key,E elem) {
    assert key != null;

    root = set(key, elem, root);

    assert contains(key);
    assert get(key) == elem;
  }
  
  private TreeNode<E> set(String k, E e, TreeNode<E> n){
	if(n == null){
		size++;
		return new TreeNode<E>(k, e);
	}
	if( k.equals(n.key)){
		n.elem = e;
		return n;
	}
	if(k.compareTo(n.key) < 0) n.left = set(k, e, n.left);
	else n.right = set(k, e, n.right);
	return n;
  }

  public E get(String key) {
    assert key != null;
    assert contains(key);

    return(get(key, root));

  }
  
   private E get(String k, TreeNode<E> n){
	  if(n == null) return null;
	  if(k.equals(n.key))  return n.elem;
	  if(k.compareTo(n.key) < 0) return(get(k, n.left));
	  return get(k, n.right);
  
  }
  

  public void remove(String key) {
    assert key != null;
    assert contains(key);

	root = remove(key, root);
    
    assert !contains(key);
  }
  
  private TreeNode<E> remove(String k, TreeNode<E> n){
	if(k.equals(n.key)){
		if(n.left == null) return n.right; //B)
		else if(n.right == null) return n.left;
		else return insertNode(n.left, n.right); //c2)
	}
	if(k.compareTo(n.key) < 0)
		n.left = remove(k, n.left);
	else n.right = remove(k, n.right);
	
	return n;
  }

  private TreeNode<E> insertNode(TreeNode<E> n1, TreeNode<E> n2){
	if(n2 == null) return n1;
	if(n1.key.compareTo(n2.key) < 0) n2.left = insertNode(n1, n2.left);
	else n2.right = insertNode(n1, n2.right);
	return n2;	  
  }

  public boolean contains(String key) {
    assert key != null;
    return contains(key, root);
    //return root != null && root.contains(key);
  }
  
  private boolean contains(String k, TreeNode<E> n){
	  if(n == null) return false;
	  if(k.equals(n.key))  return true;
	  if(k.compareTo(n.key) < 0) return(contains(k, n.left));
	  return contains(k, n.right);
  
  }
 
  public void clear() {
    root = null;
    size = 0;
  }

   public String[] keys() {
    return keys(new String [size], root, 0);
   
  }
  
  private String[] keys(String [] k, TreeNode<E> n, int i){
	if(n == null) return k;
	else{
		k[i]=n.key;
		if(n.left == null) return keys(k, n.right, i+1);
		else return keys(k, n.left, i+1);
	}	
  }

/*  public String toString() {
    String [] k = keys();
    String s = "[ ";
    for (int i = 0; i < k.length; i++){
		s = s + "(" + k[i] + "," + get(k[i]) + ")" + " "; //simples mas nao efeciente
	}
	return s + "]";
	
  }
*/
  
  public String toString() {
   	return toString("[ ", root) + "]" ;
	
  }
  
  private String toString(String s, TreeNode n){
	if(n == null) return s;
	else{
		s = s + "(" + n.key + "," + n.elem + ") ";
		if(n.left == null) return toString(s, n.right);
		else return toString(s, n.left);
	}
  }
  
  

}

