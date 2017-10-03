public class House {
	// fields
	String houseType;
	int roomIncrement, roomNum;
	Room[] rooms;
	
	// constructors
	House(String type) {
		houseType = type;
		roomIncrement = 4;
		
		roomNum = 0;
		rooms = new Room[8];
	}
	
	House(String type, int roomNum, int roomIncrement) {
		houseType = type;
		this.roomIncrement = roomIncrement;
		
		roomNum = 0;
		rooms = new Room[roomNum];
	}
	
	// getters
	public int size()       { return roomNum;    }
	public int maxSize()    { return rooms.length; }
	public Room room(int i) { return rooms[i];   }
	public double area() {
		double area = 0;
		for (int i = 0; i < roomNum; i++) {
			area += rooms[i].area();
		}
		return area;
	}
	public RoomTypeCount[] getRoomTypeCounts() {
		int typeCounter = 0;
		String[] types = new String[roomNum];
		int[] counter = new int[roomNum];
		
		// fill counter and types arrays with all different room types,
		// and how many ocurrences of each there are
		for (Room room : rooms) {
			// if type already exists on array, add to type counter
			String roomType = room.roomType();
			int indexRoomType = isIn(roomType, types);
			
			if (indexRoomType != -1) {
				counter[indexRoomType]++; 	
			} else {// else add type to array
				types[typeCounter] = roomType;
				counter[typeCounter] = 1; 
				typeCounter++;
			}
		}
		
		// fill not-oversized rtc array
		RoomTypeCount[] rtc = new RoomTypeCount[typeCounter];
		
		for (int i = 0; i < typeCounter; i++) {
			rtc[i] = new RoomTypeCount(types[i], counter[i]);
			//rtc[i] = new RoomTypeCount();
			//rtc[i].roomType = types[i];
			//rtc[i].count = counter[i];
		}
		return rtc;
	}
	
	
	// methods
	public void addRoom(Room room) {
		if (roomNum < rooms.length) {
			rooms[roomNum] = room;
			roomNum++;
		} else {
			int tempLen = rooms.length + roomIncrement;
			Room[] temp = new Room[tempLen];
			
			System.arraycopy(rooms, 0, temp, 0, roomNum);
			temp[roomNum] = room;
			rooms = temp;
			roomNum++;
		}
	}
	
	public int averageRoomDistance() {
		int totalDistance = 0;
		int numOfDistances = (int)Math.pow((roomNum - 1), 2);
	
		for (int i = 0; i < roomNum; i++) {
			for (int j = 0; j < i; j++) {
				totalDistance += rooms[i].geomCenter().distTo(rooms[j].geomCenter());
			}
			for (int j = i + 1; j < roomNum; j++) {
				totalDistance += rooms[i].geomCenter().distTo(rooms[j].geomCenter());
			
			}
		}
		return (totalDistance/numOfDistances);
	}
	
	// class methods
	private static int isIn(String s, String[] array) {
		for (int i = 0; i < array.length; i++) {
			if ((array[i] != null) && (array[i].equals(s))) {
				return i;
			}
		}
		return -1;
	}
}
