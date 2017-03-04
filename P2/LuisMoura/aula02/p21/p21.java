import static java.lang.System.*;
import java.util.*;

public class p21 {
	
	static Scanner read = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		double Re, Im;
		
		out.println("IMAGINARY NUMBER CALCULATOR");
		if (args.length == 0) {
			out.print("Real part: ");
			Re = read.nextDouble();
			out.print("Imaginary part: ");
			Im = read.nextDouble();
		} else {
			Re = Double.parseDouble(args[0]);
			Im = Double.parseDouble(args[1]);
		}
		
		Complexo a = new Complexo(Re, Im);

		// Vamos usar métodos de 'a'
		out.println("(" + a.real() + " + " + a.imag() + "i)");
		out.println("  real part = " + a.real());
		out.println("  imaginary part = " + a.imag());
		out.println("  module = " + a.abs());
		out.printf("  phase   =  %2.2f\n", a.phase());
	}
}
