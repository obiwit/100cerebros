package aula1.prob3;

public class Retangulo extends Figura { 
	// Fields
	private int width;
	private int height;
	
	// Constructors
	public Retangulo() {
		setCenter(new Ponto());
		width = height = 1;
		
	}
	public Retangulo(Ponto center, int width, int height) {
		setCenter(center);
		setWidth(width);
		setHeight(height);
	}
	
	// Methods
	public double area() {
		return width * height;
	}
	public String toString() {
		return getCenter().toString("Center") + "\nWidth: "+ width + "\nHeight: " + height;
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
