package aula11.prob2;

/**
 * Figura
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public abstract class Figura implements Comparable<Figura> {
	private Ponto center;

	// Methods
	public abstract double area();
	public abstract double perimeter();
	@Override
	public abstract String toString();
	@Override
	public int compareTo(Figura f) {
		return (int) (this.area() - f.area());
	}
	
	// Getters and Setters
	public Ponto getCenter() {
		return center;
	}
	public void setCenter(Ponto center) {
		this.center = center;
	}
	
	// hashCode() e equals()
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((center == null) ? 0 : center.hashCode());
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
		Figura other = (Figura) obj;
		if (center == null) {
			if (other.center != null)
				return false;
		} else if (!center.equals(other.center))
			return false;
		return true;
	}
	
	
}
