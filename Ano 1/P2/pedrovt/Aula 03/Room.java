/*
 * Room.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

public class Room {
	
	private Point bottomLeft, topRight;
	private String roomType;
	
	public Room(Point c1, Point c2, String type) {
		this.bottomLeft = c1;
		this.topRight = c2;
		this.roomType = type;
	}
	
	public String roomType() {
		return roomType; 
	}
	
	public Point bottomLeft() {
		return bottomLeft;
	}
	
	public Point topRight() {
		return topRight;
	}
	
	public Point geomCenter() {
		return bottomLeft.halfWayTo(topRight);
	}
	
	public double area() {
		double dx = topRight.x()-bottomLeft.x();
	    double dy = topRight.y()-bottomLeft.y();
	    return dx*dy;
	}
}
