package g3.ex3.vehicles;

import g3.ex3.driver.DrivingLicense;

/**
 * TruckGoods
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public class TruckGoods extends Truck {

	// No Instance Fields

	// ----------------------
	// Constructor
	public TruckGoods() {
		this.setLicense(DrivingLicense.C);
	}

	// ----------------------
	// Getter
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(super.toString());
		builder.append("\n\tVehicle Type: Goods Truck");
		return builder.toString();
	}

	// ----------------------
	// Verifications (overriden to implement restrictions)
	@Override
	protected boolean isValidLicense(DrivingLicense license) {
		return license.equals(DrivingLicense.C);
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
