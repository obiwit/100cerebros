package g03.ex3.vehicles;

/**
 * Truck
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public abstract class Truck extends Vehicle {

	// No Instance Fields

	// ----------------------
	// Constructor
	public Truck() {
		super();
	}

	// ----------------------
	// Verifications (overriden to implement restrictions)
	@Override
	protected boolean isValidCylinderCapacity(double cylinderCapacity) {
		return cylinderCapacity >= 1000;
	}

	@Override
	protected boolean isValidPower(double power) {
		return power >= 100;
	}

	@Override
	protected boolean isValidGrossWeight(double grossWeight) {
		return grossWeight >= 3500;
	}

	@Override
	protected boolean isValidMaxPassengers(double maxPassengers) {
		return maxPassengers > 9;
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
