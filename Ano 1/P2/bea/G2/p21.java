/*************************************************************************
 * Compilation: javac j21.java 
 * Execution: java j21
 *************************************************************************/
import static java.lang.System.*;
import java.util.*;

public class p21
{
  // Exemplo simples de utilização da class Complex
  public static void main(String[] args)
  {
	Scanner input = new Scanner(System.in);
	double re, im;
	Complexo a;
	
	if (args.length < 2) {
		System.out.print("Re: ");
		re = input.nextDouble();
		System.out.print("Im: ");
		im = input.nextDouble();
		a = new Complexo(re, im);
	} else {
		a = new Complexo(Double.parseDouble(args[0]), Double.parseDouble(args[1]));
	}
    
    

    // Vamos usar métodos de 'a'
    out.println("(" + a.real() + " + " + a.imag() + "i)");
    out.println("  parte real = " + a.real());
    out.println("  parte imaginaria = " + a.imag());
    out.println("  modulo = " + a.abs());
    out.printf("  fase   =  %2.2f\n", a.phase());
  }

}
