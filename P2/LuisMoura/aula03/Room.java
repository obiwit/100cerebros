public class Room {

//--- Variables -----------------------------------	
	private Point bottomLeft;
	private Point upperRight;
	private String roomType;

//--- Contructors ---------------------------------	
	public Room(Point p1, Point p2, String type) {
		this.bottomLeft = p1;
		this.upperRight = p2;
		this.roomType = type;
	}

//--- Getters -------------------------------------	
	public Point bottomLeft() {
		return bottomLeft;
	}
	
	public Point upperRight() {
		return upperRight;
	}
	
	public String roomType() {
		return roomType;
	}

//--- Methods -------------------------------------
	public Point geomCenter() {
		return bottomLeft.halfWayTo(upperRight);
	}
	
	public double area() {
		return (upperRight.x() - bottomLeft.x()) * (upperRight.y() - bottomLeft.y());
	}
		
}

