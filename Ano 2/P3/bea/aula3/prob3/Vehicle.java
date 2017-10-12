package aula3.prob3;

public abstract class Vehicle {

	// Fields
	private final int engineDisplacement;
	private final int power;
	private final int seatNumber;
	private final License licenseRequired;
	private final double vehicleWeight;
	
	// Constructor
	Vehicle(int engineDisplacement, int power, int seatNumber, License licenseRequired, double vehicleWeight) {
		this.engineDisplacement = engineDisplacement;
		this.power = power;
		this.seatNumber = seatNumber;
		this.licenseRequired = licenseRequired;
		this.vehicleWeight = vehicleWeight;
	}
	
	// Methods
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "\tEngine Displacement: " + engineDisplacement + "\n\tPower: " + power + "\n\tSeat Number: " + seatNumber
				+ "\n\tLicense Required: " + licenseRequired + "\n\tVehicle Weight: " + vehicleWeight + "\n";
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + engineDisplacement;
		result = prime * result + ((licenseRequired == null) ? 0 : licenseRequired.hashCode());
		result = prime * result + power;
		result = prime * result + seatNumber;
		long temp;
		temp = Double.doubleToLongBits(vehicleWeight);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
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
		if (engineDisplacement != other.engineDisplacement) {
			return false;
		}
		if (licenseRequired != other.licenseRequired) {
			return false;
		}
		if (power != other.power) {
			return false;
		}
		if (seatNumber != other.seatNumber) {
			return false;
		}
		if (Double.doubleToLongBits(vehicleWeight) != Double.doubleToLongBits(other.vehicleWeight)) {
			return false;
		}
		return true;
	}

	// Getters
	/**
	 * @return the vehicle's engine displacement
	 */
	public int getEngineDisplacement() {
		return engineDisplacement;
	}
	/**
	 * @return the vehicle's power
	 */
	public int getPower() {
		return power;
	}
	/**
	 * @return the vehicle's seat number
	 */
	public int getSeatNumber() {
		return seatNumber;
	}
	/**
	 * @return the license required to be able to legally drive this vehicle
	 */
	public License getLicenseRequired() {
		return licenseRequired;
	}
	/**
	 * @return the vehicle's weight
	 */
	public double getVehicleWeight() {
		return vehicleWeight;
	}
	
}
