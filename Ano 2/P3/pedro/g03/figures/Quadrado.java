package g03.figures;

/**
 * Quadrado
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public class Quadrado extends Figura {

	// Instance fields
	private double lado;

	// -----------
	// Constructor
	/**
	 * Constructor
	 * @param centro
	 * @param lado
	 */
	public Quadrado(Ponto centro, double lado) {
		super(centro);
		setLado(lado);
	}

	/**
	 * Constructor
	 * @param x Coordinate in the x-axis of the center of the square
	 * @param y Coordinate in the y-axis of the center of the square
	 * @param lado
	 */
	public Quadrado(double x, double y, double lado) {
		this(new Ponto(x,y), lado);
	}

	// -----------
	// Getters
	@Override
	public double getArea() {
		return lado*lado;
	}

	@Override
	public double getPerimetro() {
		return 4*lado;
	}

	@Override
	public String toString() {
		return super.toString() + ", do tipo Quadrado, com lado= " + lado;
	}

	// -----------
	// Setters
	/**
	 * @param lado the length of the side (of the square) to set
	 */
	public void setLado(double lado) {
		this.lado = lado;
	}

	// ---------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(lado);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!super.equals(obj)) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Quadrado other = (Quadrado) obj;
		if (Double.doubleToLongBits(lado) != Double.doubleToLongBits(other.lado)) {
			return false;
		}
		return true;
	}

}
