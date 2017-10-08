package g3.ex3.vehicles;

import g3.ex3.driver.DrivingLicense;

/**
 * Vehicle
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public abstract class Vehicle {

	// Non-Static Fields
	private double cylinderCapacity, power, grossWeight;
	private int maxPassengers;
	private	DrivingLicense license;

	// ----------------------
	// Constructor
	public Vehicle() {
		setCylinderCapacity(0);
		setPower(0);
		setGrossWeight(0);
		setMaxPassengers(0);
		setLicense(DrivingLicense.None);
	}

	// ----------------------
	// Getters
	/**
	 * @return the cylinderCapacity
	 */
	public double getCylinderCapacity() {
		return cylinderCapacity;
	}

	/**
	 * @return the power
	 */
	public double getPower() {
		return power;
	}

	/**
	 * @return the grossWeight
	 */
	public double getGrossWeight() {
		return grossWeight;
	}

	/**
	 * @return the license
	 */
	public DrivingLicense getLicense() {
		return license;
	}

	/**
	 * @return the maxPassengers
	 */
	public double getMaxPassengers() {
		return maxPassengers;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("\nVehicle: \n\tCylinder Capacity: ");
		builder.append(cylinderCapacity);
		builder.append("\n\tPower: ");
		builder.append(power);
		builder.append("\n\tGross Weight: ");
		builder.append(grossWeight);
		builder.append("\n\tMax Passengers: ");
		builder.append(maxPassengers);
		builder.append("\n\tDriving License required: ");
		builder.append(license);
		return builder.toString();
	}

	// ----------------------
	// Setters
	/**
	 * @param cylinderCapacity the cylinderCapacity to set
	 * @return {@code true} if it's set to the new value, {@code false} if it's not (for not meeting the vehicle specifications) 
	 */
	public boolean setCylinderCapacity(double cylinderCapacity) {
		boolean valid = isValidCylinderCapacity(cylinderCapacity);
		if (valid) { // used the condition "valid" and not "not valid" to avoid using a return true 
			this.cylinderCapacity = cylinderCapacity;
		}
		return valid; 	
	}


	/**
	 * @param power the power to set
	 * @return {@code true} if it's set to the new value, {@code false} if it's not (for not meeting the vehicle specifications)
	 */
	public boolean setPower(double power) {
		boolean valid = isValidPower(power);
		if (valid) { 
			this.power = power; 
		}
		return valid; 
	}


	/**
	 * @param grossWeight the grossWeight to set
	 * @return {@code true} if it's set to the new value, {@code false} if it's not (for not meeting the vehicle specifications)
	 */
	public boolean setGrossWeight(double grossWeight) {
		boolean valid = isValidGrossWeight(grossWeight);
		if (valid) { 
			this.grossWeight = grossWeight; 
		}
		return valid;
	}


	/**
	 * @param license the license to set
	 * @return {@code true} if it's set to the new value, {@code false} if it's not (for not meeting the vehicle specifications)
	 */
	public boolean setLicense(DrivingLicense license) {
		boolean valid = isValidLicense(license);
		if (valid) { 
			this.license = license; 
		}
		return valid;
	}


	/**
	 * @param maxPassengers the maxPassengers to set
	 * @return {@code true} if it's set to the new value, {@code false} if it's not (for not meeting the vehicle specifications)
	 */
	public boolean setMaxPassengers(int maxPassengers) {
		boolean valid = isValidMaxPassengers(maxPassengers);
		if (valid) { 
			this.maxPassengers = maxPassengers;
		}
		return valid;
	}

	// ----------------------
	// Methods 
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(cylinderCapacity);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(grossWeight);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((license == null) ? 0 : license.hashCode());
		temp = Double.doubleToLongBits(maxPassengers);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(power);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Vehicle other = (Vehicle) obj;
		if (Double.doubleToLongBits(cylinderCapacity) != Double.doubleToLongBits(other.cylinderCapacity)) {
			return false;
		}
		if (Double.doubleToLongBits(grossWeight) != Double.doubleToLongBits(other.grossWeight)) {
			return false;
		}
		if (license != other.license) {
			return false;
		}
		if (Double.doubleToLongBits(maxPassengers) != Double.doubleToLongBits(other.maxPassengers)) {
			return false;
		}
		if (Double.doubleToLongBits(power) != Double.doubleToLongBits(other.power)) {
			return false;
		}
		return true;
	}

	// ----------------------
	// Auxiliary Methods for verifications on setters
	/**
	 * 
	 * @param cylinderCapacity
	 * @return {@code true} if the argument is valid for the vehicle, else {@code false}
	 */
	protected abstract boolean isValidCylinderCapacity(double cylinderCapacity);

	/**
	 * 
	 * @param power
	 * @return {@code true} if the argument is valid for the vehicle, else {@code false}
	 */
	protected abstract boolean isValidPower(double power);

	/**
	 * 
	 * @param grossWeight
	 * @return {@code true} if the argument is valid for the vehicle, else {@code false}
	 */
	protected abstract boolean isValidGrossWeight(double grossWeight);

	/**
	 * 
	 * @param license
	 * @return {@code true} if the argument is valid for the vehicle, else {@code false}
	 */
	protected abstract boolean isValidLicense(DrivingLicense license);

	/**
	 * 
	 * @param maxPassengers
	 * @return {@code true} if the argument is valid for the vehicle, else {@code false}
	 */
	protected abstract boolean isValidMaxPassengers(double maxPassengers);
}
