package aula5.prob1;

/**
 * Retangulo
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Retangulo extends Figura { 
	// Fields
	private double width;
	private double height;
	
	// Constructors
	public Retangulo(Ponto center, double width, double height) {
		setCenter(center);
		setWidth(width);
		setHeight(height);
	}
	public Retangulo() {
		this(new Ponto(), 1, 1);
	}
	public Retangulo(double width, double height) {
		this(new Ponto(), width, height);
	}
	public Retangulo(int x, int y, double width, double height) {
		this(new Ponto(x, y), width, height);
	}

	// Methods
	public double area() {
		return width * height;
	}
	public double perimeter() {
		return 2*width + 2*height;
	}
	
	
	// toString(), equals(), hashCode()
	@Override
	public String toString() {
		return "Rectangulo de " + getCenter().toString("Centro") + ", altura " + height + ", comprimento " + width;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(height);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(width);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
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
		Retangulo other = (Retangulo) obj;
		if (Double.doubleToLongBits(height) != Double.doubleToLongBits(other.height)) {
			return false;
		}
		if (Double.doubleToLongBits(width) != Double.doubleToLongBits(other.width)) {
			return false;
		}
		return true;
	}
	
	
	
	// Getters and Setters
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}

}
