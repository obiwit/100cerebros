package g7.FlightManagement;

import java.io.Serializable;
import java.time.LocalTime;
import java.time.format.DateTimeParseException;

/**
 * Flight
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Flight implements Serializable {

	// Version ID
	private static final long serialVersionUID = 4767844089430397010L;

	// Instance Fields
	private final LocalTime time;
	private final String companyName;
	private final String flightNum;
	private final String fromCity; 
	private LocalTime delay;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param time
	 * @param name
	 * @param fromCity
	 * @param delay
	 */
	public Flight (String time, String name, String fromCity, String delay) {
		this(time, name, fromCity);
		try {
			this.delay = LocalTime.parse(delay);
		} catch (DateTimeParseException e) {
			throw new IllegalArgumentException("Illegal Delay Time");
		}
	}

	/**
	 * Creates a flight without delay time
	 * @param time
	 * @param name
	 * @param fromCity
	 */
	public Flight (String time, String name, String fromCity) {
		try {
			this.time = LocalTime.parse(time);
		} catch (DateTimeParseException e) {
			throw new IllegalArgumentException("Illegal Time");
		}

		//System.out.print(name);
		//String[] nameContents = name.replaceAll("\\s+","").split("(?<=\\D)(?=\\d)");		// Lookbehind and Lookahead assertions
		//System.out.println(" -> " + nameContents[0] + ", " + nameContents[1]);

		//System.out.println(name + " -> " + name.substring(0, 2) + " , " + name.substring(2, name.length()));

		name = name.replaceAll("\\s+", "");
		this.companyName = name.substring(0, 2);
		this.flightNum   = name.substring(2, name.length());
		this.fromCity 	 = fromCity;
	}


	// Getters
	/**
	 * @return the time
	 */
	public LocalTime getTime() {
		return time;
	}


	/**
	 * @return the companyName
	 */
	public String getCompanyName() {
		return companyName;
	}

	/**
	 * @return the flightNum
	 */
	public String getFlightNum() {
		return flightNum;
	}


	/**
	 * @return the fromCity
	 */
	public String getFromCity() {
		return fromCity;
	}


	/**
	 * @return the delay
	 */
	public LocalTime getDelay() {
		return delay;
	}


	// Setters
	/**
	 * @param delay the delay to set
	 */
	public void setDelay(int[] delay) {
		this.delay = LocalTime.of(delay[0], delay[1]);
	}


	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(time);
		builder.append("\t");
		builder.append(companyName);
		builder.append(flightNum);
		builder.append("\t");
		builder.append(fromCity);
		if (delay != null) {
			builder.append("\t");
			builder.append(delay);
		}
		return builder.toString();
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + ((delay == null) ? 0 : delay.hashCode());
		result = prime * result + ((flightNum == null) ? 0 : flightNum.hashCode());
		result = prime * result + ((fromCity == null) ? 0 : fromCity.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
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
		Flight other = (Flight) obj;
		if (companyName == null) {
			if (other.companyName != null) {
				return false;
			}
		} else if (!companyName.equals(other.companyName)) {
			return false;
		}
		if (delay == null) {
			if (other.delay != null) {
				return false;
			}
		} else if (!delay.equals(other.delay)) {
			return false;
		}
		if (flightNum == null) {
			if (other.flightNum != null) {
				return false;
			}
		} else if (!flightNum.equals(other.flightNum)) {
			return false;
		}
		if (fromCity == null) {
			if (other.fromCity != null) {
				return false;
			}
		} else if (!fromCity.equals(other.fromCity)) {
			return false;
		}
		if (time == null) {
			if (other.time != null) {
				return false;
			}
		} else if (!time.equals(other.time)) {
			return false;
		}
		return true;
	}

}
