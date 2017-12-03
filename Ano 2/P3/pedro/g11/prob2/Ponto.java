package g11.prob2;

/**
 * Ponto
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Ponto {
	private double x;
	private double y;
	
	// Constructors
	public Ponto() {
		x = 0;
		y = 0;
	}
	public Ponto(double x, double y) {
		this.x = x;
		this.y = y;
	}
	
	// Methods
	public double distanceTo(Ponto p) {
		return Math.sqrt(Math.pow(x - p.x, 2) + Math.pow(y - p.y, 2));
	}
	
	// toString(), equals(), hashCode()
	public String toString() {
		return "x:" + x + ", y:" + y;
	}
	public String toString(String pointType) {
		// Prints an identifier passed as an argument before printing the coordinates
		// ie. Center x:0.0, y:0.0
		return pointType+ " x:" + x + ", y:" + y;
	}
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
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ponto other = (Ponto) obj;
		if (Double.doubleToLongBits(x) != Double.doubleToLongBits(other.x))
			return false;
		if (Double.doubleToLongBits(y) != Double.doubleToLongBits(other.y))
			return false;
		return true;
	}
	
	
	// Getters and Setters
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
}
