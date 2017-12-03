package g01.figures;

/**
 * Quadrado
 * Derived class of Rectangulo (Square is a Rectangle -- based on the assumption a Square is a Rectangle)
 * @author Pedro Teixeira, 84715, MIECT
 */
public class Quadrado extends Rectangulo {
	
	// No fields
	
	// -----------
	// Constructor
	/**
	 * Constructor
	 * @param centro
	 * @param lado
	 */
	public Quadrado(Ponto centro, double lado) {
		super(centro, lado, lado);
	}

	/**
	 * Constructor
	 * @param x Coordinate in the x-axis of the center of the square
	 * @param y Coordinate in the y-axis of the center of the square
	 * @param lado
	 */
	public Quadrado(double x, double y, double lado) {
		super(x, y, lado, lado);
	}
	
	// -----------
	// Getters
	@Override
	public String toString() {
		return super.toString() + " (Quadrado)";
	}
	
	/**
	 * Checks if 2 squares are equal (same area)
	 * @param figure
	 * @return {@code true} if the squares are equal, else {@code false}
	 */
	public boolean equals (Figura figure) {
		if (!(figure instanceof Quadrado)) return false;		//otherwise a rectangle with larg=comp=x would be equal to a square with side length=x
		return getArea() == figure.getArea();
	}
	
	// -----------
	// Setters
	/**
	 * @param lado the length of the side (of the square) to set
	 */
	public void setLado(double lado) {
		this.setLarg(lado);
		this.setComp(lado);
	}
	
}
