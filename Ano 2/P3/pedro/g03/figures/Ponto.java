package g03.figures;

import java.awt.Point;

/**
 * Ponto
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ponto {

	// Instance Fields
	private double x, y;

	// -------------------
	// Constructor
	/**
	 * Creates a Point (x,y).
	 * 
	 * @param x coordinate on the x-axis
	 * @param y coordinate on the y-axis
	 */
	public Ponto(double x, double y) {
		this.x = x;
		this.y = y;
	}

	// -------------------
	// Getters
	/**
	 * @return the x
	 */
	public double getX() {
		return x;
	}

	/**
	 * @return the y
	 */
	public double getY() {
		return y;
	}

	@Override
	public String toString() {
		return "(" + x + "," + y + ")";
	}

	/**
	 * @param p Point
	 * @return A double representing the distance between this point and the given point
	 */
	public double distanceTo(Point p) {
		return Math.sqrt(Math.pow(this.getX() - p.getX(), 2) + Math.pow(this.getY() - p.getY(), 2));
	}

	// ---------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(x);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(y);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

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
		Ponto other = (Ponto) obj;
		if (Double.doubleToLongBits(x) != Double.doubleToLongBits(other.x)) {
			return false;
		}
		if (Double.doubleToLongBits(y) != Double.doubleToLongBits(other.y)) {
			return false;
		}
		return true;
	}

}
