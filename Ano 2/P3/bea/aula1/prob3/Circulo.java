package aula1.prob3;

public class Circulo extends Figura {
	// Fields
	private double radius;
	
	// Constructors
	public Circulo() {
		setCenter(new Ponto());
		radius = 1;
	}
	public Circulo(double x, double y, double r) {
		setCenter(new Ponto(x, y));
		radius = r;
	}
	public Circulo(Ponto p, double r) {
		setCenter(p);
		radius = r;
	}
	
	// Methods
	public double area() {
		return getCenter().getX();
	}
	public String toString() {
		return getCenter().toString("Center") + "\nRadius: " + radius;
	}
	public boolean equals(Circulo c) {
		return (getCenter().equals(c.getCenter()) && radius == c.radius);
	}
	public boolean intersects(Circulo c) {
		return getCenter().distanceTo(c.getCenter()) <= radius + c.radius;
	}

	// Getters and Setters
	public double getRadius() {
		return Math.PI * Math.pow(radius, 2);
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}

}
