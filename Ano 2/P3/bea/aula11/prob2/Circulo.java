package aula11.prob2;

/**
 * Circulo
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Circulo extends Figura {
	// Fields
	private double radius;
	
	// Constructors
	public Circulo(Ponto p, double r) {
		setCenter(p);
		radius = Math.abs(r);
	}
	public Circulo() {
		this(new Ponto(), 1);
	}
	public Circulo(double r) {
		this(new Ponto(), r);
	}
	public Circulo(double x, double y, double r) {
		this(new Ponto(x, y), r);
	}
	
	// Methods
	public double area() {
		return Math.PI*Math.pow(radius, 2);
	}
	public double perimeter() {
		return 2*Math.PI*radius;
	}
	public boolean intersects(Circulo c) {
		return getCenter().distanceTo(c.getCenter()) <= radius + c.radius;
	}
	
	// toString(), hashCode(), equals()
	@Override
	public String toString() {
		return "Circulo de " + getCenter().toString("Centro") + " e de raio " + radius;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(radius);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Circulo other = (Circulo) obj;
		if (Double.doubleToLongBits(radius) != Double.doubleToLongBits(other.radius))
			return false;
		return true;
	}


	// Getters and Setters
	public double getRadius() {
		return Math.PI * Math.pow(radius, 2);
	}
	public void setRadius(double radius) {
		this.radius = radius;
	}

}
