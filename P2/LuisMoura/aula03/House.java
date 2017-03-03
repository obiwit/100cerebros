public class House {

//--- Variables ----------------------------------

	private String houseType;
	private int size;
	private int[] floors; // 4 rooms for floor

//--- Constructors -------------------------------

	public House(String houseType) {
		//~ if (houseType != "house" || houseType != "apartment") {
			//~ System.out.println("Wrong House type");
		//~ }
			this.houseType = houseType;
			this.floors = new int[8];
	} 

	public House(String houseType, int inicialRooms, int extraRooms) {
		if (houseType != "house" || houseType != "apartment") {
			//break;
		}
		this.houseType = houseType;
		this.size = inicialRooms;
		//this.extraRooms = extraRooms;
	}

//--- Getters ------------------------------------

	public String getHouseType() {
		return houseType;
	}
	
	public int size() {
		return size;
	}

//--- Methods ------------------------------------

		


}

