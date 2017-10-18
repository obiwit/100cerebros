package aula3.prob3;

public class Car extends Vehicle {

	/**
	 * Creates a new Car object
	 * @param engineDisplacement engine displacement in cm^3
	 * @param power power in KW
	 * @param seatNumber number of seats
	 * @param vehicleWeight the weight, in kg, of the car
	 */
	public Car(int engineDisplacement, int power, int seatNumber, double vehicleWeight) {
		super(engineDisplacement, power, seatNumber, License.B, vehicleWeight);
	}
	
	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Car\n" + super.toString();
	}

}
