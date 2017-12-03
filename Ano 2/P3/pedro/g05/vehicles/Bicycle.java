package g05.vehicles;

/**
 * Bicycle
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Bicycle extends Vehicle {

	// No fields (since they are inherited)

	// Constructor
	/**
	 * Constructor
	 * @param year
	 * @param color
	 * @param numWheels
	 * @param maxSpeed
	 */
	public Bicycle(int year, String color, int numWheels, int maxSpeed) {
		super(year, color, numWheels, maxSpeed);
	}

	// Methods
	@Override
	public String toString() {
		return "\nBicycle: " + super.toString();
	}
}
