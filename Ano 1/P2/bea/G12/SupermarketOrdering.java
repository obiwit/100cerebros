import p2utils.*;

public class SupermarketOrdering {
	
	HashTable<Integer> table = new HashTable<>(6);
	Queue<Order> queue = new Queue<>();
	
	public void enterOrder(Order order) {
		queue.in(order);
		
		int prevAmount = (table.contains(order.prodName)) ? table.get(order.prodName) : 0;
		table.set(order.prodName, prevAmount + order.quantity);
	}
	
	public Order serveOrder() {
		// assert contains order
		if (queue.size() != 0) {
			Order servedOrder = queue.peek();
			int newQuantity = table.get(servedOrder.prodName) - servedOrder.quantity;
			table.set(servedOrder.prodName, newQuantity);
			
			queue.out();
			return servedOrder;
		} 
		return new Order("","",0);
	}
	
	public int queryProduct(String product) {
		return table.get(product);
	}
	
	public int numOrders() {
		return table.size();
	}
	
	public void displayOrderedProducts() {
		int tableSize = table.size();
		String[] keys = table.keys();
		
		for(int i = 0; i < tableSize; i++) {
			String product = keys[i];
			System.out.printf("%10s -> %10d \n", product, table.get(product));
		}
	}
}
