package g03.ex3.vehicles;

import g03.ex3.driver.DrivingLicense;

/**
 * TruckPassenger
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class TruckPassenger extends Truck {
	// No Instance Fields

	// ----------------------
	// Constructor
	public TruckPassenger() {
		this.setLicense(DrivingLicense.D);
	}

	// ----------------------
	// Getter
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(super.toString());
		builder.append("\n\tVehicle Type: Passenger Truck");
		return builder.toString();
	}

	// ----------------------
	// Verifications (overriden to implement restrictions)
	@Override
	protected boolean isValidLicense(DrivingLicense license) {
		return license.equals(DrivingLicense.D);
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
