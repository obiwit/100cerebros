package aula2.prob2;

public class WordPosition {
	
	// Fields
	private final int x, y;
	private final Direction direction;
	
	// Constructor
	public WordPosition(int x, int y, Direction direction) {
		this.x = x;
		this.y = y;
		this.direction = direction;
	}
	
	// Methods
	public String toString() {
		return "(" + x + ", " + y + ")   " + direction;
	}
	public boolean equals(WordPosition p) {
		return (x == p.x) && (y == p.y) && (direction.equals(p.direction));
	}

	// Getters and Setters
	public int getX() {
		return x;
	}
	public int getY() {
		return y;
	}
	public Direction getDirection() {
		return direction;
	}
}
