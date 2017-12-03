package g01.figures;

/**
 * Rectangulo.
 * Derived class of Figure (Rectangulo is a Figure)
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Rectangulo extends Figura {
	
	// Instance Fields
	private double larg, comp;
	
	// ------------
	// Constructors
	/**
	 * 
	 * Constructor.
	 * If larg = comp, an instance of Rectangulo will be created - and not an instance of Quadrado.
	 * @param centro
	 * @param larg
	 * @param comp
	 */
	public Rectangulo(Ponto centro, double larg, double comp) {
		super(centro);
		this.larg = larg;
		this.comp = comp;
	}

	/**
	 * 
	 * Constructor.
	 * If larg = comp, an instance of Rectangulo will be created - and not an instance of Quadrado.
	 * @param x Coordinate in the x-axis of the center of the rectangle
	 * @param y Coordinate in the y-axis of the center of the rectangle
	 * @param larg
	 * @param comp
	 */
	public Rectangulo(double x, double y, double larg, double comp) {
		super(x, y);
		this.larg = larg;
		this.comp = comp;
	}
	
	// ------------
	// Getters
	@Override
	public double getArea() {
		return larg * comp;
	}

	@Override
	public double getPerimetro() {
		return 2*larg + 2*comp;
	}
	
	/**
	 * @return the larg
	 */
	public double getLarg() {
		return larg;
	}

	/**
	 * @return the comp
	 */
	public double getComp() {
		return comp;
	}
	
	@Override
	public String toString() {
		return super.toString() + ", do tipo Rectângulo, com largura= " + larg + " e comprimento= " + comp;
	}
	
	/**
	 * Checks if 2 rectangles are equal (same area)
	 * @param figure
	 * @return {@code true} if the rectangles are equal, else {@code false}
	 */
	public boolean equals (Figura figure) {
		if (!(figure instanceof Rectangulo)) return false;
		return getArea() == figure.getArea();
	}

	// ------------
	// Setters
	/**
	 * @param larg the larg to set
	 */
	public void setLarg(double larg) {
		this.larg = larg;
	}
	
	/**
	 * @param comp the comp to set
	 */
	public void setComp(double comp) {
		this.comp = comp;
	}
}
