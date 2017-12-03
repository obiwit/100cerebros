package g03.figures;

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
	 * Constructor
	 * @param centro
	 * @param larg
	 * @param comp
	 */
	public Rectangulo(Ponto centro, double larg, double comp) {
		super(centro);
		setLarg(larg);
		setComp(comp);
	}

	/**
	 * 
	 * Constructor
	 * @param x Coordinate in the x-axis of the center of the rectangle
	 * @param y Coordinate in the y-axis of the center of the rectangle
	 * @param larg
	 * @param comp
	 */
	public Rectangulo(double x, double y, double larg, double comp) {
		this(new Ponto (x,y), larg, comp);
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

	// ------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(comp);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(larg);
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
		Rectangulo other = (Rectangulo) obj;
		if (Double.doubleToLongBits(comp) != Double.doubleToLongBits(other.comp)) {
			return false;
		}
		if (Double.doubleToLongBits(larg) != Double.doubleToLongBits(other.larg)) {
			return false;
		}
		return true;
	}

}
