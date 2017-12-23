package aula6.prob2.listees.shapes;

/**
 * Quadrado
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Quadrado extends Figura { 
	// Fields
	private double sideLength;
	
	// Constructors
	public Quadrado(Ponto center, double sideLength) {
		setCenter(center);
		setSideLength(sideLength);
	}
	public Quadrado() {
		this(new Ponto(), 1);
	}
	public Quadrado(double sideLength) {
		this(new Ponto(), sideLength);
	}
	public Quadrado(int x, int y, double sideLength) {
		this(new Ponto(x, y), sideLength);
	}
	
	// Methods
	public double area() {
		return sideLength * sideLength;
	}
	public double perimeter() {
		return 4 * sideLength;
	}
	
	// toString(), equals(), hashCode()
	@Override
	public String toString() {
		return "Quadrado de " + getCenter().toString("Centro") + " e de lado " + sideLength;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(sideLength);
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
		Quadrado other = (Quadrado) obj;
		if (Double.doubleToLongBits(sideLength) != Double.doubleToLongBits(other.sideLength))
			return false;
		return true;
	}
	
	// Getters and Setters
	public double getSideLength() {
		return sideLength;
	}
	public void setSideLength(double sideLength) {
		this.sideLength = sideLength;
	}
	
}


