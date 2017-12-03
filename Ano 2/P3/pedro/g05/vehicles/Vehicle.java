package g05.vehicles;

/**
 * Vehicle
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public abstract class Vehicle implements Comparable<Vehicle> {

	// Instance Fields
	private int year;
	private String color;
	private LicensePlate licensePlate;
	private int numWheels, maxSpeed;

	// ----------------------------
	// Constructors
	/**
	 * 
	 * Constructor. Creates a Vehicle without a license plate ("Not Registered").
	 * @param year
	 * @param color
	 * @param numWheels
	 * @param maxSpeed
	 */
	public Vehicle(int year, String color, int numWheels, int maxSpeed) {
		this.year  = year;
		this.color = color;
		this.numWheels = numWheels;
		this.maxSpeed  = maxSpeed;
		licensePlate = LicensePlate.noLicensePlate();
	}

	// ----------------------------
	// Getters
	/**
	 * @return the year
	 */
	public int getYear() {
		return year;
	}

	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}

	/**
	 * @return the numWheels
	 */
	public int getNumWheels() {
		return numWheels;
	}

	/**
	 * @return the maxSpeed
	 */
	public int getMaxSpeed() {
		return maxSpeed;
	}

	/**
	 * @return the licensePlate
	 */
	public LicensePlate getLicensePlate() {
		return licensePlate;
	}

	// ----------------------------
	// Setters
	/**
	 * @param licensePlate the licensePlate to set
	 * @return {@code true} if the license plate is valid and set as the license of the vehicle, else {@code false}
	 */
	public boolean setLicensePlate(String licensePlate) {
		boolean canChange = LicensePlate.isValid(licensePlate);
		if (canChange) this.licensePlate = new LicensePlate(licensePlate);
		return canChange;
	}

	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}

	// ----------------------------
	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("\n\tYear: ");
		builder.append(year);
		builder.append("\n\tColor: ");
		builder.append(color);
		builder.append("\n\tNumber of Wheels: ");
		builder.append(numWheels);
		builder.append("\n\tMax Speed: ");
		builder.append(maxSpeed);
		builder.append("\n\tLicense Plate: ");
		builder.append(licensePlate);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + ((licensePlate == null) ? 0 : licensePlate.hashCode());
		result = prime * result + maxSpeed;
		result = prime * result + numWheels;
		result = prime * result + year;
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
		if (color == null) {
			if (other.color != null) {
				return false;
			}
		} else if (!color.equals(other.color)) {
			return false;
		}
		if (licensePlate == null) {
			if (other.licensePlate != null) {
				return false;
			}
		} else if (!licensePlate.equals(other.licensePlate)) {
			return false;
		}
		if (maxSpeed != other.maxSpeed) {
			return false;
		}
		if (numWheels != other.numWheels) {
			return false;
		}
		if (year != other.year) {
			return false;
		}
		return true;
	}

	@Override
	public int compareTo(Vehicle o) {
		return this.year - o.year;
	}

}
