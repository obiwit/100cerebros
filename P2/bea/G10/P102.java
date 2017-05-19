import p2utils.*;
import java.lang.*;

public class P102 {
	
	static Stack<Integer> s1 = new Stack<Integer>();
	static Stack<Integer> s2 = new Stack<Integer>();
	static Stack<Integer> s3 = new Stack<Integer>();
	static int count = 1;
	
	public static void main (String[] args) {
		// inserir 5 discos no stack 1
		int n = 5;
		for(int i = n; i > 0; i--) s1.push(i);
		
		// mover discos
		printTowerState(0);
		moverDiscos(n, s1, s2, s3);
		
	}

	public static void moverDiscos(int n, Stack<Integer> origin, 
							Stack<Integer> end, Stack<Integer> aux) {
								
		assert n >= 0;
		if (n > 0) {
			moverDiscos(n-1, origin, aux, end);
			
			// out.println("Move disco "+n+" da torre "+origem+" para a torre "+destino);
			end.push(origin.top());
			origin.pop();
			
			printTowerState(count++);
			
			moverDiscos(n-1, aux, end, origin);
			
		}
	}
	
	public static void printTowerState(int n) {
			System.out.println("After "+n+" moves:");
			System.out.println("TA: " + s1);
			System.out.println("TB: " + s2);
			System.out.println("TC: " + s3);
	}
}

/*
After 0 moves:
TA: [5, 4, 3, 2, 1]
TB: []
TC: []
*/
