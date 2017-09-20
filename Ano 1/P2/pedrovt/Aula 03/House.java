/*
 * House.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

public class House {

	// Fields
	private Room[] rooms;

	private String name; 
	private int numAdic;
	private int size;			//counts how many rooms are added

	// Constructors : OK
	public House(String nome) {
		//validation
		if (name.equals("house") || name.equals("apartment")) {
			this.name = nome;
		}

		rooms = new Room[8];		
		this.numAdic = 4;				
	}

	public House(String nome, int numRooms, int numAdic) {
		this.name = nome;
		this.numAdic = numAdic;				// initial number of rooms that can be added
		rooms = new Room[numRooms];	// increment of the number of rooms for each expansion of rooms[]
	}

	// Methods
	public void addRoom(Room newRoom){
		if (size == rooms.length) {
			Room[] temp = new Room[rooms.length + numAdic];
			System.arraycopy(rooms, 0, temp, 0, rooms.length);
			rooms = temp;
		}

		rooms[size] = newRoom;
		size++;
	}

	public int size() {   // Returns number of rooms
		return size;
	}

	public int maxSize() {
		return rooms.length;
	}

	public Room room(int n) {
		if (n >= 0 && n < size()) {
			return rooms[n];  
		}
		else return null;
	}

	public double area() {
		double area = 0;
		for (int i = 0; i < size; i++) {
			area += rooms[i].area();
		}
		return area;
	}

	public RoomTypeCount[] getRoomTypeCounts(){
		RoomTypeCount[] count1 = new RoomTypeCount[size];
		
		int i = 0;
		// Search algorithm 
		for (int j = 0; j < size; j++) {
			int k = -1;
			
			for (int m = 0; m < i; m++) {		
				if (rooms[j].roomType().equals(count1[m].roomType)) {
					k = m;
				}
			}
			
			if (k == -1)						// new roomType found 
			{
				count1[i] = new RoomTypeCount();
				count1[i].roomType = rooms[j].roomType();
				count1[i].count = 1;
				i++;
			}
			
			else								// rooms[j] found again
			{
				count1[k].count++;				
			}
		}
		
		// copys to a new smaller array (to avoid null values)
		RoomTypeCount[] count2 = new RoomTypeCount[i];
		System.arraycopy(count1, 0, count2, 0, i);
		return count2;
	}


	public double averageRoomDistance() {
		// Fixar uma posição
		double distance = 0, k = 0;

		for (int i = 0; i < size; i++) {
			for (int j = 0; j < size; j++) {
				if (j != i) {
					distance += rooms[i].geomCenter().distTo(rooms[j].geomCenter());
					k++;		// counter for calculated distances
				}
			}
		}
		// Percorrer as outras e calcular distancia média

		return distance/k;
	}
}
