import static java.lang.System.*;
import p2utils.*;
//nao esta terminado, erro de sintese
public class P102 {
	
	public static void main (String[] args) {
		Stack <Integer> A = new Stack<Integer>();
		Stack <Integer> B = new Stack<Integer>();
		Stack <Integer> C = new Stack<Integer>();

		if(args.length == 1){
			int numDisc = Integer.parseInt(args[0]);
			for (int i = 0; i < numDisc; i++){
				A.push(i+1);
			}
			moverDiscos(numDisc, A, B, C, 0);
		}
		else{
			err.println("usage: java -ea P102 <number of discs>");
			exit(1);
		}
	}

	static void moverDiscos(int n,Stack <Integer> A, Stack <Integer> B, Stack <Integer> C, int i){
		assert n >= 0;
		if (n > 0){
			moverDiscos(n-1, A, C, B, i);
			out.printf("after %d moves: ", i);
			A.print();
			B.print();
			C.print();
			//out.println("Move disco "+n+" da torre "+origem+" para a torre "+destino);
			moverDiscos(n-1, C, B, A, i+1);
		}
	}
}
