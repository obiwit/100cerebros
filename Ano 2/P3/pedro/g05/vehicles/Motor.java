package g05.vehicles;

/**
 * Motor
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
public class Motor {

	// Instance Fields
	private double cylinderCapacity, power, consumption;
	private FuelType fuelType;

	// ----------------------------
	// Constructors
	/**
	 * 
	 * Constructor
	 * @param cylinderCapacity (must be > 0)
	 * @param power	(must be > 0)
	 * @param consumption (must be > 0)
	 * @param fuelType (FuelType enum)
	 * @see FuelType
	 * @throws IllegalArgumentException if the arguments are not valid
	 */
	public Motor (double cylinderCapacity, double power, double consumption, FuelType fuelType) {
		if (cylinderCapacity < 0 || power < 0 || consumption < 0) throw new IllegalArgumentException();
		this.cylinderCapacity = cylinderCapacity;
		this.power = power;
		this.consumption = consumption;
		setFuelType(fuelType);
	}

	// ----------------------------
	// Getters
	/**
	 * @return cylinderCapacity
	 */
	public double getCylinderCapacity() {
		return cylinderCapacity;
	}

	/**
	 * 
	 * @return power
	 */
	public double getPower() {
		return power;
	}

	/**
	 * 
	 * @return consumption
	 */
	public double getConsumption() {
		return consumption;
	}

	/**
	 * 
	 * @return Fuel Type
	 */
	public FuelType getFuelType() {
		return fuelType;
	}

	// ----------------------------
	// Setters
	/**
	 * Sets a new fuel type
	 * @param fuelType
	 * @see FuelType
	 */
	public void setFuelType(FuelType fuelType) {
		this.fuelType = fuelType;
	}

	// ----------------------------
	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("\n\tMotor:\n\t\tCylinder Capacity: ");
		builder.append(cylinderCapacity);
		builder.append("\n\t\tPower: ");
		builder.append(power);
		builder.append("\n\t\tConsumption: ");
		builder.append(consumption);
		builder.append("\n\t\tFuel Type: ");
		builder.append(fuelType);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(consumption);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(cylinderCapacity);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((fuelType == null) ? 0 : fuelType.hashCode());
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
		Motor other = (Motor) obj;
		if (Double.doubleToLongBits(consumption) != Double.doubleToLongBits(other.consumption)) {
			return false;
		}
		if (Double.doubleToLongBits(cylinderCapacity) != Double.doubleToLongBits(other.cylinderCapacity)) {
			return false;
		}
		if (fuelType != other.fuelType) {
			return false;
		}
		if (Double.doubleToLongBits(power) != Double.doubleToLongBits(other.power)) {
			return false;
		}
		return true;
	}


}
