package aula1.prob3;

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
	public String toString() {
		return x + ", " + y;
	}
	public String toString(String pointType) {
		// Prints an identifier passed as an argument before printing the coordinates
		// ie. Center: 0.0, 0.0
		return pointType+ ": " + x + ", " + y;
	}
	public boolean equals(Ponto p) {
		return (x == p.x && y == p.y);
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
