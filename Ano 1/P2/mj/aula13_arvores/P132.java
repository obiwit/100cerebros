import p2utils.*;
import static java.lang.System.*;
import java.util.Scanner;

public class P132{
	static Scanner in = new Scanner(System.in);
	public static void main(String[] args){
		
		out.println("insira uma expressao prefixa: ");
		
		BinarySearchTree<String> b = new BinarySearchTree<>();
		b.root = createPrefix(new TreeNode<String>(null, in.next()));
		
		
		
		
	}
	
	public TreeNode<String> createPrefix(TreeNode<String> n){
		if (in.hasNextDouble()){
			return new TreeNode<String>(null, in.next());
		}
		else{
			return new TreeNode<String>(null, in.next(), createPrefix(n.left), createPrefix(n.right));
		}
	}
	
	public void printInfix(TreeNode<String> root){
		out.print( printInfix("(", root) );
	}
	
	private String printInfix(String s, TreeNode<String> n){
		if(n.left == null){
			return s + n.elem;
		}
		else{
			s = s + " (" + printInfix(s, n.left) + " " + n.elem + " " + printInfix(s, n.right) + ") ";
		}
		return s+ " )";
		
	}
	
	public void eval(double d, TreeNode<String> n){
		if(n.left == null){
			return Double.parseDouble(n.elem);
		}
		else{
			d = operations(eval(d, n.left), n.elem, eval(d, n.right));
		}
		
		out.println("result: " + d);
	}
	
	private Double operations(double n1, String op, double n2){
		switch(op){
			case "+": return n1 + n2;
					  break;
			case "-": return n1 - n2;
					  break;
			case "*": return n1 * n2;
					  break;
			case "/": return n1 / n2;
					  break;
			default: exit(1);
		}
	}
}

