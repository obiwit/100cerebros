package g01.figures;

import java.awt.Point;

/**
 * Ponto
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ponto {

	// Instance Fields
	private double x, y;

	// Constructor
	/**
	 * Default Constructor. Creates a Point (0,0).
	 */
	public Ponto() {
		this(0, 0);
	}

	/**
	 * Creates a Point (x,y).
	 * 
	 * @param x
	 *            coordinate on the x-axis
	 * @param y
	 *            coordinate on the y-axis
	 */
	public Ponto(double x, double y) {
		this.x = x;
		this.y = y;
	}

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
	 * 
	 * @param p
	 *            Point to compare to
	 * @return {@code true} if the two points are equal (have the same
	 *         coordinates), else {@code false}
	 */
	@SuppressWarnings("static-method")
	public boolean equals(Point p) {
		return p != null && (p.x == p.x && p.y == p.y);
	}

	/**
	 * 
	 * @param p
	 *            Point
	 * @return A double representing the distance between this point and the
	 *         given point
	 */
	public double distanceTo(Point p) {
		return Math.sqrt(Math.pow(this.getX() - p.getX(), 2) + Math.pow(this.getY() - p.getY(), 2));
	}

}
