package g07.FlightManagement;

import java.io.Serializable;

/**
 * FlightsByOrigin
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class FlightsByOrigin implements Serializable, Comparable<FlightsByOrigin> {

	private static final long serialVersionUID = 101033280510587173L;

	// Instance Fields
	private String origin;
	private int numFlights;

	// Constructors
	/**
	 * 
	 * Constructor
	 * @param origin
	 */
	public FlightsByOrigin(String origin) {
		this.origin = origin;
		numFlights  = 0;
	}

	// Getters
	/**
	 * @return the origin
	 */
	public String getOrigin() {
		return origin;
	}

	/**
	 * @return the numFlights
	 */
	public int getNumFlights() {
		return numFlights;
	}

	// Setters
	/**
	 * @param numFlights the numFlights to set
	 */
	public void addFlight() {
		numFlights++;
	}

	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(origin);
		builder.append("\t");
		builder.append(numFlights);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + numFlights;
		result = prime * result + ((origin == null) ? 0 : origin.hashCode());
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
		FlightsByOrigin other = (FlightsByOrigin) obj;
		if (numFlights != other.numFlights) {
			return false;
		}
		if (origin == null) {
			if (other.origin != null) {
				return false;
			}
		} else if (!origin.equals(other.origin)) {
			return false;
		}
		return true;
	}


	@Override
	public int compareTo(FlightsByOrigin o) {
		return numFlights - o.numFlights;
	}

}