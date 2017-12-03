package g09;

import java.util.Iterator;

import g09.iterators.BFIterator;
import g09.iterators.dynamicArray.DynamicArray;
import g09.iterators.linkedList.LinkedList;
import g09.iterators.resources.people.Date;
import g09.iterators.resources.people.Person;

/**
 * Prob3
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex3_iterators {
	public static void main(String[] args) {
		System.out.println("Testing for Dynamic Array\n");
		DynamicArray<Person> vp = new DynamicArray<>();

		System.out.println("\nTesting Iterator");
		for (int i=0; i<10; i++)
			vp.add(new Person("Bebé no Vector "+i, 1000+i, Date.today()));
		Iterator<Person> vecIterator = vp.iterator();
		while (vecIterator.hasNext())
			System.out.println(vecIterator.next());

		System.out.println("\nTesting BFIterator");
		BFIterator<Person> vecBFIterator = vp.bfIterator();
		while (vecBFIterator.hasPrevious())
			System.out.println(vecBFIterator.previous());

		// --------------------------
		System.out.println("\n-------------------\nTesting for Linked List\n");
		LinkedList<Person> list = new LinkedList<>();

		System.out.println("\nTesting Iterator");
		for (int i=0; i<10; i++)
			list.addLast(new Person("Bebé no Vector "+i, 1000+i, Date.today()));
		Iterator<Person> listIterator = list.iterator();
		while (listIterator.hasNext())
			System.out.println(listIterator.next());

		System.out.println("\nTesting BFIterator");
		BFIterator<Person> listBFIterator = list.bfIterator();
		while (listBFIterator.hasPrevious())
			System.out.println(listBFIterator.previous());

	}
}