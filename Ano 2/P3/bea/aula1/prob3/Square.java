package aula1.prob3;

public class Square extends Figura { 
	// Fields
	private int sideLength;
	
	// Constructors
	public Square() {
		setCenter(new Ponto());
		sideLength = 1;
	}
	public Square(Ponto center, int sideLength) {
		setCenter(center);
		setSideLength(sideLength);
	}
	
	// Methods
	public double area() {
		return sideLength * sideLength;
	}
	public String toString() {
		return getCenter().toString("Center") + "\nSide length: " + sideLength;
	}
	
	// Getters and Setters
	public int getSideLength() {
		return sideLength;
	}
	public void setSideLength(int sideLength) {
		this.sideLength = sideLength;
	}
	

}
