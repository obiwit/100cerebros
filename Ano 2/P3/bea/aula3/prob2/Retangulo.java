package aula3.prob2;

public class Retangulo extends Figura { 
	// Fields
	private int width;
	private int height;
	
	// Constructors
	public Retangulo(Ponto center, int width, int height) {
		setCenter(center);
		setWidth(width);
		setHeight(height);
	}
	public Retangulo() {
		this(new Ponto(), 1, 1);
	}
	public Retangulo(int width, int height) {
		this(new Ponto(), width, height);
	}
	public Retangulo(int x, int y, int width, int height) {
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
		return "RECTANGLE\n" + getCenter().toString("Center") + "\nWidth: "+ width + "\nHeight: " + height;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + height;
		result = prime * result + width;
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
		Retangulo other = (Retangulo) obj;
		if (height != other.height)
			return false;
		if (width != other.width)
			return false;
		return true;
	}
	
	
	
	// Getters and Setters
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}

}
