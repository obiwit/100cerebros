package aula3.prob3;

public class PassengerTruck extends Truck {

	/**
	 * Creates a new PassengerTruck object
	 * @param engineDisplacement engine displacement in cm^3
	 * @param power power in KW
	 * @param seatNumber number of seats
	 * @param vehicleWeight the weight, in kg, of the passenger truck
	 */
	public PassengerTruck(int engineDisplacement, int power, int seatNumber, double vehicleWeight) {
		super(engineDisplacement, power, seatNumber, License.D, vehicleWeight);
	}
	
	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Passenger Truck\n" + super.toString();
	}

}
