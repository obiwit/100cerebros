package aula3.prob3;

public class GoodsTruck extends Truck {

	/**
	 * Creates a new GoodsTruck object
	 * @param engineDisplacement engine displacement in cm^3
	 * @param power power in KW
	 * @param seatNumber number of seats
	 * @param vehicleWeight the weight, in kg, of the goods truck
	 */
	public GoodsTruck(int engineDisplacement, int power, int seatNumber, double vehicleWeight) {
		super(engineDisplacement, power, seatNumber, License.C, vehicleWeight);
	}
	
	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Goods Truck\n" + super.toString();
	}

}
