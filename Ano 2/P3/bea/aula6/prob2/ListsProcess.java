package aula6.prob2;

import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;


public class ListsProcess {
	
	public static <T> List<T> filter(List<T> original, Predicate<T> listFilter) {
		List<T> filtered = new LinkedList<T>();
		for (T elem: original) {
			if (listFilter.test(elem)) {
				filtered.add(elem);
			}
		}
		return filtered;
	}
	
}