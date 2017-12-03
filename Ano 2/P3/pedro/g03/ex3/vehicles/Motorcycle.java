package g03.ex3.vehicles;

import g03.ex3.driver.DrivingLicense;

/**
 * Motorcycle
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Motorcycle extends Vehicle {
	// No Instance Fields

	// ----------------------
	// Constructor
	public Motorcycle() {
		this.setLicense(DrivingLicense.A);
	}

	// ----------------------
	// Getter
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(super.toString());
		builder.append("\n\tVehicle Type: Motorcycle");
		return builder.toString();
	}

	// ----------------------
	// Verifications (overriden to implement restrictions)
	@Override
	protected boolean isValidCylinderCapacity(double cylinderCapacity) {
		return cylinderCapacity >= 50;
	}

	@Override
	protected boolean isValidPower(double power) {
		return power >= 0;
	}

	@Override
	protected boolean isValidGrossWeight(double grossWeight) {
		return grossWeight >= 0;
	}

	@Override
	protected boolean isValidLicense(DrivingLicense license) {
		return license.equals(DrivingLicense.A);
	}

	@Override
	protected boolean isValidMaxPassengers(double maxPassengers) {
		return maxPassengers >= 1 && maxPassengers <= 2;
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