package g3.figures;

/**
 * Circulo
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Circulo extends Figura {

	// Instance Fields
	private double raio;

	// ------------
	// Constructors
	/**
	 * Constructor
	 * @param centro
	 * @param raio
	 */
	public Circulo (Ponto centro, double raio) {
		super(centro);
		setRaio(raio);
	}

	/**
	 * 
	 * Constructor
	 * @param x Coordinate in the x-axis of the center of the circle
	 * @param y Coordinate in the y-axis of the center of the circle
	 * @param raio
	 */
	public Circulo (double x, double y, double raio) {
		this(new Ponto(x, y), raio);
	}

	// ------------
	// Getters
	/**
	 * @return the raio of the circle
	 */
	public double getRaio() {
		return raio;
	}

	/**
	 * @return Area of the circle
	 */
	@Override
	public double getArea() {
		return Math.PI * Math.pow(raio, 2);
	}

	/**
	 * @return Perimeter of the circle
	 */
	@Override
	public double getPerimetro() {
		return 2 * Math.PI * raio;
	}

	@Override
	public String toString() {
		return super.toString() + ", do tipo Círculo, com raio= " + raio; 
	}

	/**
	 * Checks if the cicle intercepts another given circle.
	 * Two circles intersect if the distance between their centers is between the sum and the difference of their radii
	 * @param circle circle to compare with
	 * @return {@code true} if the circle intercepts the given circle, else {@code false}
	 */
	public boolean interceptWith (Circulo circle) {
		return Math.hypot(this.getCentro().getX()-circle.getCentro().getX(), this.getCentro().getY()-circle.getCentro().getY()) <= (this.getRaio() + circle.getRaio());
	}

	// ------------
	// Setters
	/**
	 * @param raio the raio to set
	 */
	public void setRaio(double raio) {
		this.raio = raio;
	}

	// ---------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(raio);
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
		Circulo other = (Circulo) obj;
		if (Double.doubleToLongBits(raio) != Double.doubleToLongBits(other.raio)) {
			return false;
		}
		return true;
	}

}
