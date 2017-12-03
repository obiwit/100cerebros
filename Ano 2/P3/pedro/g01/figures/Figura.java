package g01.figures;

/**
 * Figura
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public abstract class Figura {
	
	// Instance Fields
	private Ponto centro;
	
	// ---------------------
	// Constructors
	/**
	 * 
	 * Default Constructor.
	 * Creates a Figura with center in (0,0)
	 */
	public Figura() {
		this(new Ponto());
	}
	
	/**
	 * 
	 * Constructor.
	 * Creates a Figura with the given center
	 * @param centro
	 */
	public Figura(Ponto centro) {
		setCentro(centro);
	}
	
	/**
	 * 
	 * Constructor.
	 * Creates a Figura with the center (x, y)
	 * @param x Coordinate in the x-axis of the center of the figure
	 * @param y Coordinate in the y-axis of the center of the figure
	 */
	public Figura(double x, double y) {
		this(new Ponto(x,y));
	}
	
	// ---------------------
	// Getters
	/**
	 * @return the centro
	 */
	public Ponto getCentro() {
		return centro;
	}
	
	@Override
	public String toString() {
		// No use of StringBuilder since it's the concatenation of just 2 Strings
		return "Figura com centro " + centro; 
	}
	
	/**
	 * 
	 * @return Area of the figure
	 */
	public abstract double getArea();
	
	/**
	 * 
	 * @return Perimeter of the figure
	 */
	public abstract double getPerimetro();
	
	// ---------------------
	// Setters
	/**
	 * Sets the center of the figure
	 * @param ponto New center of the figure
	 */
	public void setCentro(Ponto ponto) {
		centro = ponto;
	}
	
}
