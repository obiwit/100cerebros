package g5.vehicles;

/**
 * Motorcyle
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Motorcycle extends VehicleMotor {

	// No Fields (they are inherited)

	// Constructors
	/**
	 * Constructor
	 * @param year
	 * @param color
	 * @param numWheels
	 * @param maxSpeed
	 * @param motor
	 */
	public Motorcycle(int year, String color, int numWheels, int maxSpeed, Motor motor) {
		super(year, color, numWheels, maxSpeed, motor);
	}

	// Methods
	@Override
	public String toString() {
		return "\nMotorcyle: " + super.toString();
	}

}
