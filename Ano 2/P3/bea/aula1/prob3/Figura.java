package aula1.prob3;

public abstract class Figura {
	private Ponto center;

	// Methods
	public abstract double area();
	public abstract String toString();
	
	// Getters and Setters
	public Ponto getCenter() {
		return center;
	}

	public void setCenter(Ponto center) {
		this.center = center;
	}
}
