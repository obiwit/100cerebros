package g03.ex3.driver;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import g03.ex3.vehicles.Vehicle;
import g03.people.Date;
import g03.people.Person;

/**
 * Driver
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public class Driver extends Person {

	// Instance Fields
	private Set<DrivingLicense> licenses;	// avoids having repetead Licenses
	private List<Vehicle> vehicles;   		// can have repetead vehicles (ie same model)

	// ---------------------
	// Constructor
	/**
	 * Constructor
	 * @param name
	 * @param cc
	 * @param birthDate
	 */
	public Driver(String name, int cc, Date birthDate) {
		super(name, cc, birthDate);
		licenses = new HashSet<>();  // HashSet will use hashCode method, overriden in this class
		vehicles = new LinkedList<>();
	}

	// ---------------------
	// Getters
	/**
	 * @return the licenses
	 */
	public Set<DrivingLicense> getLicenses() {
		return licenses;
	}

	/**
	 * @return the vehicles
	 */
	public List<Vehicle> getVehicles() {
		return vehicles;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Driver ");
		builder.append(super.toString());
		builder.append("\n\tLicenses: ");
		builder.append(getLicenses());
		builder.append("\n\tVehicles: ");
		builder.append(getVehicles());
		return builder.toString();
	}

	// ---------------------
	// Setters
	/**
	 * @param licenses the license to add
	 * @return {@code true} if the license does not exist yet and is added, else {@code false}
	 */
	public boolean addLicense(DrivingLicense license) {
		return licenses.add(license);
	}

	/**
	 * @param vehicle the vehicle to add
	 * @return {@code true} if the vehicle is added, which happend when the driver can drive it, else {@code false}
	 */
	public boolean addVehicle(Vehicle vehicle) {
		boolean canDrive = canDrive(vehicle);
		if (canDrive) {
			vehicles.add(vehicle);
		}
		return canDrive;
	}

	// ---------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((licenses == null) ? 0 : licenses.hashCode());
		result = prime * result + ((vehicles == null) ? 0 : vehicles.hashCode());
		return result;
	}

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
		// no need to compare fields (the field compared on boolean equals() of Person class is enough)
		return true;
	}

	// ---------------------
	// Auxiliary (Private) Methods
	/**
	 * @param vehicle
	 * @return {@true} if the driver has the driving license associated with the vehicle, ie can drive it, else {@code false}
	 */
	private boolean canDrive(Vehicle vehicle) {
		return licenses.contains(vehicle.getLicense());
	}

}
