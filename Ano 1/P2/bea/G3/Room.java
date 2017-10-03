public class Room {
	String roomType;
	Point bottomLeft, topRight;
	
	Room(Point bL, Point tR, String type) {
		roomType = type ;
		bottomLeft = bL;
		topRight = tR;
	}
	
	public String roomType()  { return roomType;   }
	public Point bottomLeft() { return bottomLeft; }
	public Point topRight()   { return topRight;   }
	
	public Point geomCenter() { 
		return bottomLeft.halfWayTo(topRight);
	}
	public double area() { 
		return (topRight.y() - bottomLeft.y()) * (topRight.x() - bottomLeft.x());
	}
	
	
}
