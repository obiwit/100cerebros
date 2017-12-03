package g03.ex3.vehicles;

import g03.ex3.driver.DrivingLicense;

/**
 * Car
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Car extends Vehicle {

	// No Instance Fields

	// ----------------------
	// Constructor
	public Car() {
		this.setLicense(DrivingLicense.B);
	}

	// ----------------------
	// Getter
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(super.toString());
		builder.append("\n\tVehicle Type: Car");
		return builder.toString();
	}

	// ----------------------
	// Verifications (overriden to implement restrictions)
	@Override
	protected boolean isValidCylinderCapacity(double cylinderCapacity) {
		return cylinderCapacity >= 500;
	}

	@Override
	protected boolean isValidPower(double power) {
		return power >= 50;
	}

	@Override
	protected boolean isValidGrossWeight(double grossWeight) {
		return grossWeight > 0 && grossWeight <= 3500;
	}

	@Override
	protected boolean isValidLicense(DrivingLicense license) {
		return license.equals(DrivingLicense.B);
	}

	@Override
	protected boolean isValidMaxPassengers(double maxPassengers) {
		return maxPassengers >= 1 && maxPassengers <= 9;
	}

	// ----------------------
	// Methods 

	// No fields to create a hashCode() method. The hashCode() method inherited from Vehicle class will be used

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!super.equals(obj)) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		// no fields to compare
		return true;
	}

}