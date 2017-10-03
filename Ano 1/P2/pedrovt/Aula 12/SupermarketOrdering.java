/**
 * SupermarketOrdering
 * 
 * Copyright 2017, MIECT - DETI UA
 * @author Pedro Teixeira
 * 
 */

import p2utils.Queue;
import p2utils.HashTable;

public class SupermarketOrdering {

	// Fields
	private Queue<Order> supermarket; // First In First Out : queue 
	private int numOrders;
	
	private HashTable<Integer> countProd;
	
	/**
	 * Constructor
	 */
	SupermarketOrdering() {
		supermarket = new Queue<Order>();
		countProd	= new HashTable<>(10);
		numOrders   = 0;
	}
	
	// Setters
	/**
	 * Enters a new order in the supermarket, registering it
	 * in the list of orders and adding the number of products
	 * in the order to the dictionary product -> product quantity.
	 * 
	 * @param argOrder Order to be added
	 */
	public void enterOrder(Order argOrder){	

		String name = argOrder.prodName;
		
		if (!countProd.contains(name))
			countProd.set(name, argOrder.quantity);
		
		else 
			countProd.set(name, countProd.get(name) + argOrder.quantity);
		
		supermarket.in(argOrder);
		numOrders++;
		
	}

	// Getters
	/**
	 * Removes and returns the oldest order in the supermarket,
	 * removing it from the list of orders and updating the dictionary
	 * product -> product quantity.
	 * @return The oldest order
	 */
	public Order serveOrder() {
		if (supermarket.size() == 0) 
			return new Order ("", "", 0);
		
		Order toServe = supermarket.peek();
		supermarket.out();
		
		String name = toServe.prodName;
		if (countProd.contains(name)) 
			countProd.set(name, countProd.get(name) - toServe.quantity);
		
		return toServe;
	}
	
	/**
	 * 
	 * @return Number of orders that were registered 
	 */
	public int numOrders() {
		return numOrders;
	}
	
	/**
	 * 
	 * @param prodName Name of the product
	 * @return Total of units of the given product
	 */
	public int query(String prodName) {
		return countProd.get(prodName);
	}
	
	/**
	 * Prints the total of units per product
	 */
	public void displayOrderedProducts() {
		int tableSize = countProd.size();
		String[] keys = countProd.keys();

		for(int i = 0; i < tableSize; i++) {
			String product = keys[i];
			System.out.printf("%10s -> %10d \n", product, countProd.get(product));
		}

		//System.out.println(countProd);
	}
}
