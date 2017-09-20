
import static java.lang.System.*;
import java.util.Scanner;

public class P122
{
  final static Scanner in = new Scanner(System.in);

  public static void main(String[] args)
  {
    SupermarketOrdering smarket = new SupermarketOrdering();

    String[] clients = { "Joao","Ana","Nuno","Luis","Carlos",
      "Antonio","Jose","Susana","Rosa","Odete",
      "Amelia","Mario","Afonso","Leonor",
      "Irene" };
    String[] products = 
    { "couves","pão","frango",
      "agrafador","pente","escova" };

    do {
      if (myRandom(2)==0) { // randomly select whether to 
        // enter or serve an order
        // create and enter a random order
        int p = myRandom(products.length);
        int c = myRandom(clients.length);
        int q = 1+myRandom(4);
        smarket.enterOrder(new Order(products[p],clients[c],q));
        out.println("Enter order: " + products[p] + " " + q);
      }
      else if (smarket.numOrders()>0) {
        // if there are orders, serve
        Order order = smarket.serveOrder();
        out.println("Serve order: " + order.prodName + " " + order.quantity);
      }
      smarket.displayOrderedProducts();
      in.nextLine();
    } while (in.hasNextLine());
  }

  /**
   * Retorna um número aleatório entre 0 e n-1.
   */
  static int myRandom(int n) {
    return (int)(Math.random()*n);
  }
}

