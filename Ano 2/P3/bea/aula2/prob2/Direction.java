package aula2.prob2;

public enum Direction {
	notFound, left, right, top, down, downright, downleft, topright, topleft;
	
	public static Direction coordsToDirection(int x, int y) {
		if (x == 0 && y > 0) return top;
		else if (x == 0 && y < 0) return down;
		else if (x > 0 && y == 0) return right;
		else if (x < 0 && y == 0) return left;
		else if (x > 0 && y > 0) return topright;
		else if (x > 0 && y < 0) return downright;
		else if (x < 0 && y > 0) return topleft;
		else if (x < 0 && y < 0) return downleft;
		return notFound;
	}
}
