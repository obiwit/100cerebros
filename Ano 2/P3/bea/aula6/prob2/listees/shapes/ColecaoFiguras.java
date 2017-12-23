package aula6.prob2.listees.shapes;

import java.util.Arrays;

/**
 * ColecaoFigura
 * Manages an array of objects.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class ColecaoFiguras {

	// Fields
	private Figura[] figuras;
	private int currentArraySize;
	private int incrementArraySize;
	private double currentArea;
	private double maxArea;
	
	// Constructors
	/**
	 * Creates the {@code Figura} array.
	 * @param maxArea Maximum area of the {@code Figura} collection
	 * @param initSize initial size of the array
	 * @param incSize increment size of the array
	 */
	public ColecaoFiguras(double maxArea, int initSize, int incSize) {
		figuras = new Figura[20];
		incrementArraySize = 15;
		this.maxArea = maxArea;
	}
	/**
	 * Creates the {@code Figura} array
	 * @param maxArea Maximum area of the {@code Figura} collection
	 */
	 public ColecaoFiguras(double maxArea) {
		this(maxArea, 20, 15);
	 }
	 
	 

	// Methods
	/**
	 * Adds a new {@code Figura} to the {@code ColecaoFiguras}, if the total 
	 * (combined) area  is smaller than the maximum area allowed for this 
	 * {@code Figura} collection and it isn't in the {@code Figura} collection already.
	 * @param f {@code Figura} to add
	 * @return true if the operation was successful, false otherwise
	 */
	 public boolean addFigura(Figura f) {
		// if current area + new figure's area < max area, add figure
		if (!exists(f)  && (currentArea + f.area() < maxArea)) {
			
			// add figure's area to total area
			currentArea += f.area();
			
			// add figure to array
			if (isFull()) expandArray();
			figuras[currentArraySize++] = f;
			
			return true;
		}
		return false;
	 }
	 
	 /**
	  * Removes a {@code Figura} from the {@code Figura} collection.
	  * If there is none, returns false.
	  * @param f {@code Figura} to remove
	  * @return true if the operation was successful, false otherwise
	  */
	 public boolean delFigura(Figura f) {
		// find Figura
		int figuraIndex = getIndexOf(f);
		
		// if Figura was found, remove it from the Figura collection
		if (figuraIndex != -1) {

			// remove entry from the total area
			currentArea -= f.area();
			
			// remove entry from the array
			System.arraycopy(figuras, figuraIndex+1, figuras, figuraIndex, currentArraySize-figuraIndex);	
			currentArraySize--;
			
			return true;
		 }
		 return false;
	 }
	 
	 /**
	  * The total current area  - i.e. the sum of the areas of the {@code Figura}'s
	  * in the {@code Figura} collection.
	  * @return the total current area 
	  */
	 public double areaTotal() {
		 return currentArea;
	 }
	 public boolean exists(Figura f) {
		return (getIndexOf(f) != -1);
	 }
	 /**
	  * Returns an array of all the {@code Figura}s in the collection
	  * @return an array of all the {@code Figura}s in the collection
	  */
	 public Figura[] getFiguras() {
		 return Arrays.copyOf(figuras, currentArraySize);
	 }
	 /**
	  * Returns an array of {@code Ponto}s representing the center of all the 
	  * {@code Figura}s centers.
	  * @return an array of all the {@code Figura}s centers
	  */
	 public Ponto[] getCentros() {
		 Ponto[] centros = new Ponto[currentArraySize];
		 for(int i = 0; i < currentArraySize; i++) {
			 centros[i] = figuras[i].getCenter();
		 }
		 return centros;
	 }
	 
	/**
	 * Checks whether there is a {@code Figura} matching the given {@code Figura}
	 * @param f {@code Figura} to find the index of
	 * @return the index at which the {@code Figura} first appears; if there isn't such a {@code Figura}, returns flag value -1
	 */
	public int getIndexOf(Figura f) {
		int figuraIndex = -1;
		for(int i = 0; i < currentArraySize && figuraIndex == -1; i++) {
			if (figuras[i].equals(f)) figuraIndex = i;
		}
		return figuraIndex;
	}
	 
	
	/**
	 * Expands the array (by incrementSize).
	 */
	private void expandArray() {
		Figura[] temp = new Figura[currentArraySize + incrementArraySize];
		System.arraycopy(figuras, 0, temp, 0, currentArraySize);
		figuras = temp;
	}
	
	/**
	 * Checks whether the array is full.
	 * @return true if the array is currently full
	 */
	public boolean isFull() {
		return currentArraySize == figuras.length;
	}
	

	// toString(), hashCode(), equals()
	/**
	 *  Returns the String version of the object
	 *  
	 *  @param s String version of the {@code Prob2_Pessoa} array
	 */
	@Override
	public String toString() {
		String s = "Figuras:";
		for(int i = 0; i < currentArraySize; i++) {
			s += (i+1) + "\n" + figuras[i].toString() + "\n\n";
		}
		return s;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(currentArea);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + Arrays.hashCode(figuras);
		temp = Double.doubleToLongBits(maxArea);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		ColecaoFiguras other = (ColecaoFiguras) obj;
		if (Double.doubleToLongBits(currentArea) != Double.doubleToLongBits(other.currentArea)) {
			return false;
		}
		if (!Arrays.equals(figuras, other.figuras)) {
			return false;
		}
		if (Double.doubleToLongBits(maxArea) != Double.doubleToLongBits(other.maxArea)) {
			return false;
		}
		return true;
	}
	
	
}
