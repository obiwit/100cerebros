package g10.ex1;

/**
 * BFIterator
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public interface BFIterator<T> {
	boolean hasPrevious();
	T previous();
	boolean hasNext();
	T next();
}