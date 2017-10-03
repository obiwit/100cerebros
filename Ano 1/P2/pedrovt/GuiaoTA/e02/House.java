package e02;
import static java.lang.System.*;

public class House {
	// Fields
	private String houseType;
	private int extensionSize;
	private Room [] rooms;
	private int size;
	private Door [] doors;
	private int numDoors;

	// Constructors
	public House(String houseType,int maxSize,int extensionSize) {
		this.houseType = houseType;
		this.extensionSize = extensionSize;
		rooms = new Room[maxSize];
		size = 0;
		doors = new Door[maxSize];
		numDoors = 0;
	}

	public House(String houseType) {
		this(houseType,8,4);
	} 

	// Getters
	public int size() {
		return size;
	}

	public int maxSize() {
		return rooms.length;
	}

	public int numDoors() {
		return numDoors;
	}

	public int maxNumDoors() {
		return doors.length;
	}

	public Room room(int i) {
		return rooms[i];
	}
	
	public String houseType() {
		return this.houseType;
	}
	
	// Public Methods 
	public int addRoom(Room r) {
		if (size == rooms.length) {
			extendHouse();
		}
		rooms[size] = r;
		size++;
		return size-1;
	}

	public void addDoor(Door d) {
		if (numDoors == doors.length) {
			extendHouseDoors();
		}
		doors[numDoors] = d;
		numDoors++;
	}

	// Intern Methods
	private void extendHouse() {
		Room [] newRooms = new Room[rooms.length+extensionSize];
		arraycopy(rooms, 0, newRooms, 0, rooms.length);
		rooms = newRooms;
	}

	private void extendHouseDoors() {
		Door [] newDoors = new Door[doors.length+extensionSize];
		arraycopy(doors, 0, newDoors, 0, doors.length);
		doors = newDoors;
	}

	/* Crie um metodo roomClosestToRoomType(roomType) na classe House que, dado
	 * um tipo de divisao, retorna o identificador da divisao mais proxima de uma qualquer
	 * divisao do tipo dado. Considere distancias em linha recta entre os centros 
	 * geometricos das divisoes. */

	public int roomClosestToRoomType(String roomType) {
		double distMin = 0; 
		int roomNum = -1;

		for (int i = 0; i < this.size; i++) {
			//search for the rooms with name roomType
			if (this.rooms[i].roomType().equals(roomType)){
				// for the others (j != i) rooms, gets the distance
				for (int j = 0; j < this.size; j++) {
					if (j != i) {
						double distance = this.rooms[i].geomCenter().distTo(this.rooms[j].geomCenter());
						if ( (roomNum == -1) || (distance < distMin) ) { //(roomNum == -1 is a condition because we need to initialize distMin e roomNum...
							distMin = distance;
							roomNum = j;
						}
					}
				}
			}
		}

		return roomNum;
		//return distMin; //we could also return the minimum distance....
	}

	/* Crie um metodo maxDoorsInAnyRoom() na classe House que devolve o maximo
	 * numero de portas numa qualquer divisao da habitacao. */
	public int maxDoorsInAnyRoom(){
		int[] doors_roomid = new int [numDoors]; 

		// Gets number of doors per room
		for (int i = 0; i < numDoors ; i++) { 
			doors_roomid[doors[i].id1()]++; 
			doors_roomid[doors[i].id2()]++; 
		} 
		
		// finds the max value of the array doors_roomid
		int max = 0; 
		for (int i = 0; i < numDoors; i++){ 
			if(doors_roomid[i] > max) { 
				max = doors_roomid[i]; 
			} 
		} 
		return max;

	}

}

