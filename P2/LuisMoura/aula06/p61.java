import static java.lang.System.*;

public class p61 {

  public static void main(String[] args) {
    if (args.length != 1) {
      out.println("USO: java -ea p61 N");
      exit(1);
    }

    // Alguns testes:
    assert fibonacci(0) == 0;
    assert fibonacci(1) == 1;
    assert fibonacci(2) == 1;
    assert fibonacci(5) == 5;

    // Mostra N primeiros números
    int N = Integer.valueOf(args[0]);
    for(int n = 0; n <= N; n++) {
      out.printf("fibonacci(%d) = %d\n", n, fibonacci(n));
    }
  }

  public static int fibonacci(int n) {
    assert n >= 0;
    int result;
    if (n == 0) {
		result = 0;
	} else if (n == 1) {
		result = 1;
	}
    else {
		result = fibonacci(n-2) + fibonacci(n-1);
	}
    return result;
  }
}
