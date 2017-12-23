package aula10.prob1;

import java.util.Iterator;

/**
 * BFIterator
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public interface BFIterator<T> extends Iterator<T> {
	boolean hasPrevious();
	T previous();
	@Override
	boolean hasNext();
	@Override
	T next();
}