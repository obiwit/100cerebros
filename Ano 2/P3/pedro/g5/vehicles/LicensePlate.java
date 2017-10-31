package g5.vehicles;

/**
 * LicensePlate
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class LicensePlate {

	// Instance Fields
	private final String licensePlate;

	// ----------------------------
	// Constructor
	/**
	 * 
	 * Creates a License Plate. The given license plate must be valid. 
	 * @see LicensePlate#isValid(String) 
	 * @param licensePlate
	 * @throws IllegalArgumentException if the license plate is not valid
	 */
	public LicensePlate(String licensePlate) {
		if (!isValid(licensePlate)) throw new IllegalArgumentException();
		this.licensePlate = licensePlate;
	}

	// ----------------------------
	// Getters
	/**
	 * @return the licensePlate
	 */
	public String getLicensePlate() {
		return licensePlate;
	}

	// ----------------------------
	// Static Methods
	/**
	 * Verifies if a license plate is valid, ie equal to "Not Registered" or following the patterns
	 * AA-BB-00,
	 * AA-00-BB,
	 * 00-AA-BB,
	 * 
	 * where A, B are letters and 0 numbers.
	 * 
	 * @param licensePlate license plate to be validated
	 * @return {@code true} if the license plate is valid, else {@code false}
	 */
	public static boolean isValid(String licensePlate) {
		return  licensePlate.equalsIgnoreCase("Not Registered") || licensePlate.matches("\\d\\d-[A-Z][A-Z]-[A-Z][A-Z]") || licensePlate.matches("[A-Z][A-Z]-\\d\\d-[A-Z][A-Z]") || licensePlate.matches("[A-Z][A-Z]-[A-Z][A-Z]-\\d\\d");
	}

	/**
	 * @return a License Plate for non-licensed vehicles ("Not Registered")
	 */
	public static LicensePlate noLicensePlate() {
		return new LicensePlate("Not Registered");
	}
	// ----------------------------
	// Methods
	@Override
	public String toString() {
		return licensePlate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((licensePlate == null) ? 0 : licensePlate.hashCode());
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
		LicensePlate other = (LicensePlate) obj;
		if (licensePlate == null) {
			if (other.licensePlate != null) {
				return false;
			}
		} else if (!licensePlate.equals(other.licensePlate)) {
			return false;
		}
		return true;
	}

}
