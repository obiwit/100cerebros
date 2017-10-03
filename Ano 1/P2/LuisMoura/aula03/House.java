public class House {

//--- Variables ----------------------------------

	private String houseType;
	private int initialSize;
	private int extraRooms;
	private Room[] rooms;

//--- Constructors -------------------------------

	public House(String houseType) {
		this.houseType = houseType;
		this.initialSize = 8;
		this.extraRooms = 4;
		this.rooms = new Room[initialSize];
	} 

	public House(String houseType, int inicialRooms, int extraRooms) {
		this.houseType = houseType;
		this.initialSize = inicialRooms;
		this.extraRooms = extraRooms;
		this.rooms = new Room[initialSize];
	}

//--- Getters ------------------------------------

	public String getHouseType() {
		return houseType;
	}
	
	public int initialSize() {
		return initialSize;
	}

//--- Methods ------------------------------------
	public void addRoom(Room newRoom) {
		for (int i = 0; i < this.rooms.length; i++) {
			if (this.rooms[i] == null) {
				this.rooms[i] = newRoom;
				break;
			}
		}
		if (rooms[rooms.length - 1] != null) {
			Room[] temp = new Room[this.rooms.length + this.extraRooms];
			for (int i = 0; i < rooms.length; i++) {
				temp[i] = rooms[i];
			}
			this.rooms = temp;
		}
	}

	public int size() {
		int size = 0;
		for (int i = 0; i < rooms.length; i++) {
			if (rooms[i] != null) {
				size += 1;
			}
		}
		return size;
	} 

	public int maxSize() {
		return this.rooms.length;
	}
	
	public Room room(int index){
		return rooms[index];
	}

	public double area() {
		double totalArea = 0;
		for (int i = 0; i < rooms.length; i++) {
			if (rooms[i] != null) {
				totalArea += rooms[i].area();
			}
		}
		return totalArea;
	}
	
	public RoomTypeCount[] getRoomTypeCounts()  {
		int arrayCount = 1;
		for (int i = 1 ; i < rooms.length; i++) {
			if (rooms[i] != null) {
				if (!rooms[i].roomType().equals(rooms[i-1].roomType())) {
					arrayCount++;
				}
			}
		}
		RoomTypeCount[] roomCount = new RoomTypeCount[arrayCount];
		for (int i = 0; i < roomCount.length; i++) {
			roomCount[i] = new RoomTypeCount();
		}
		roomCount[0].roomType = rooms[0].roomType();
		roomCount[0].count = 1;
		for (int i = 1, j = 0; i < rooms.length; i++) {
			if (rooms[i] != null) {
				if (rooms[i].roomType().equals(rooms[i-1].roomType())) {
					roomCount[j].count += 1;
				} else {
					j++;
					roomCount[j].roomType = rooms[i].roomType();
					roomCount[j].count += 1;
				}
			}
		}
		return roomCount;
	}
	
	public double averageRoomDistance() {
		double totalDistance = 0;
		int count = 0;
		for (int i = 0; i < rooms.length - 1; i++) {
			for (int j = 1; j < rooms.length; j++) {
				if (rooms[j] != null && j > i) {
					totalDistance += rooms[i].geomCenter().distTo(rooms[j].geomCenter());
					count++;
				}
			}
		}
		return totalDistance / count;
	}
}
//---- Sub-classes --------------------------------------------
	class RoomTypeCount {
		
		String roomType;
		int count;
}


