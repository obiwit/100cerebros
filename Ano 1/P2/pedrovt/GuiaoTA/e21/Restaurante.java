package e21;

import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class Restaurante {

	public static void main(String[] args) {

		HashTable<Integer> foodStock = new HashTable<>(10000);
		Queue<MealIngredients[]> mealOrders = new Queue<>();

		if (args.length < 1) {
			err.println("Usage: java -ea Restaurante <FICH1> <FICH2> ...");
			exit(1);
		}

		// Read args (files)
		for (String path : args) {
			try {
				File f     = new File (path);
				Scanner sc = new Scanner (f);
				saveInfo(sc, foodStock, mealOrders); // Read info in files
			} catch (IOException e) {
				err.println("ERROR in file " + path + ": read failure!");
				exit(2);
			}
		}

		processMealOrders(mealOrders, foodStock);
		printStock(foodStock);
		printPendingMealOrders(mealOrders);
	}


	/**
	 * Processes and saves file info in the data structures
	 * @param sc File scanner
	 * @param foodStock Data structure to store food stock ({@code HashTable<Integer>})
	 * @param mealOrders Data strucuture to store meal orders ({@code Queue<MealIngredients[]>})
	 */
	public static void saveInfo (Scanner sc, HashTable<Integer> foodStock, Queue<MealIngredients[]> mealOrders) {
		while (sc.hasNextLine()) {
			String   line = sc.nextLine();
			String[] lineContents = line.split(" ");
			if (lineContents[0].equals("entrada:")) {     // Stock food
				//System.out.println("Stock food");
				String item = lineContents[1];
				if (!foodStock.contains(item)) foodStock.set(item, 1);
				else foodStock.set(item, foodStock.get(item) + 1);
			}
			else if (lineContents[0].equals("saida:")) {  // Meal system
				//System.out.println("Meal system");
				MealIngredients[] meal = new MealIngredients[lineContents.length - 1];
				int j = 0;
				for (int i = 1; i < lineContents.length; i++) {
					String[] mealContents = lineContents[i].split(":");
					meal[j] = new MealIngredients(mealContents[0], Integer.parseInt(mealContents[1]));
					j++;
				}
				mealOrders.in(meal);
			}
		}
	}

	/**
	 * 
	 * @param mealOrders
	 * @param foodStock
	 */
	public static void processMealOrders (Queue<MealIngredients[]> mealOrders, HashTable<Integer> foodStock) {
		if (!mealOrders.isEmpty()) {
			MealIngredients[] mealToServe = mealOrders.peek();

			while (!mealOrders.isEmpty()) {
				mealToServe = mealOrders.peek();

				if (!canServe(mealToServe, foodStock)) break;

				mealOrders.out();
				String mealContents = "";

				for (MealIngredients ingredient : mealToServe) {
					mealContents += ingredient.toString() + " ";

					// update stock
					if (foodStock.contains(ingredient.item())) 
						foodStock.set(ingredient.item(), foodStock.get(ingredient.item()) - ingredient.quantity());
				}

				System.out.println("Refeicao servida: " + mealContents);
			}
		}
	}   

	/**
	 * @param mealToServe
	 * @return
	 */
	private static boolean canServe(MealIngredients[] mealToServe, HashTable<Integer> foodStock) {
		boolean canServe = true;

		for (MealIngredients ingredient : mealToServe) {
			if (foodStock.contains(ingredient.item())) {
				canServe = (foodStock.get(ingredient.item()) >= ingredient.quantity());
				if (!canServe) return false; 
			} else {
				return false;
			}
		}
		return canServe;
	}
	

	/**
	 * Prints pending orders
	 * @param mealOrders
	 */
	public static void printPendingMealOrders(Queue<MealIngredients[]> mealOrders) {
		while (!mealOrders.isEmpty()) {
			MealIngredients[] unservedMeal = mealOrders.peek();
			mealOrders.out();

			String mealContents = "";

			for (MealIngredients ingredient : unservedMeal) {
				mealContents += ingredient.toString() + " ";
			}

			System.out.println("Refeicao pendente: " + mealContents);
		}
	}
	

	/**
	 * Prints food in stock
	 * @param foodStock Hashtable (Item, Quantity)
	 */
	public static void printStock (HashTable<Integer> foodStock) {
		String items[] = foodStock.keys();
		System.out.println("Comida em stock:");
		for (String item: items) {
			int quantity = foodStock.get(item);
			if (quantity != 0) System.out.println("  " + item + ": " + quantity);
		}
	}
}