package aula3.prob3;

public class Driver {
	
	// Fields
	private final int citizenID;
	private License[] licenses;
	private int licensesNumber;
	
	// Constructor
	public Driver(int citizenID, License license) {
		this.citizenID = citizenID;
		this.licenses = new License[License.numberOfLicenses];
		this.licenses[licensesNumber++] = license;
	}
	
	
	// Methods
	/**
	 * Checks whether a driver can drive a given vehicle by comparing the licenses required
	 * with the driver's license, using boolean logic based on the "Road Code."
	 * @param v vehicle driver intends to drive
	 * @return whether or not the driver can drive the selected vehicle
	 */
	public boolean canDrive(Vehicle v) {
		License licenseReq = v.getLicenseRequired();

		if (containsLicense(licenseReq)) return true;
		if (containsLicense(License.D) && !licenseReq.equals(License.A)) return true;
		if (containsLicense(License.C) &&  (!licenseReq.equals(License.A) && !licenseReq.equals(License.D))) return true;
		if ((licenseReq.equals(License.A) && v.getEngineDisplacement() < 125) && 
				(containsLicense(License.B) || containsLicense(License.C) || containsLicense(License.D))) return true;
		
		return false;
	}

	// Getters and Setters
	/**
	 * @return the driver's citizen ID (cc card number)
	 */
	public int getCitizenID() {
		return citizenID;
	}
	/**
	 * @return the driver's licenses
	 */
	public License[] getLicense() {
		return licenses;
	}
	/**
	 * Updates the drivers licenses, adding the license provided. 
	 * If the driver already has the license provided, does nothing.
	 * @param license
	 */
	public void addLicense(License license) {
		if (containsLicense(license)) {
			this.licenses[licensesNumber++] = license;
		}
	}
	/**
	 * Updates the drivers licenses, removing the license provided. 
	 * If the driver already lacks the license provided, does nothing.
	 * @param license
	 */
	public void removeLicense(License license) {
		int licenseIndex = getLicenseIndex(license);
		if (licenseIndex != -1) {
			System.arraycopy(licenses, licenseIndex+1, licenses, licenseIndex, licensesNumber-licenseIndex);
			licensesNumber--;
		}
	}
	
	
	/**
	 *  Checks whether the driver has the given license
	 * @param license license to check
	 * @return the index at which the license first appears; if there isn't such a license, returns flag value -1
	 */
	private int getLicenseIndex(License license) {
		int index = -1;
		for(int i = 0; i < licenses.length && index == -1; i++) {
			if (licenses[i] == null) continue;
			if (licenses[i].equals(license)) index = i;
		}
		return index;
	}
	/**
	 * @param license license to check
	 * @return true if the driver has the given license
	 */
	private boolean containsLicense(License license) {
		return getLicenseIndex(license) != -1;
	}
}
