package aula11.prob1.ex1a;

/**
 * BFIterator
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public interface BFIterator<T> {
	boolean hasPrevious();
	T previous();
	boolean hasNext();
	T next();
}