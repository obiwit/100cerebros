package aula3.prob3;

public class Motorcycle extends Vehicle {
	
	/**
	 * Creates a new Motorcycle object
	 * @param engineDisplacement engine displacement in cm^3
	 * @param power power in KW
	 * @param seatNumber number of seats
	 * @param vehicleWeight the weight, in kg, of the motorcycle
	 */
	public Motorcycle(int engineDisplacement, int power, int seatNumber, double vehicleWeight) {
		super(engineDisplacement, power, seatNumber, License.A, vehicleWeight);
	}
	
	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Motorcycle\n" + super.toString();
	}

}
