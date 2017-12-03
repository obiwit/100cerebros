package g07.FlightManagement;

import java.io.Serializable;
import java.time.LocalTime;

/**
 * CompanyDelays
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
public class CompanyDelays implements Serializable, Comparable<CompanyDelays> {

	private static final long serialVersionUID = 4035659303510860061L;

	// Instance Fields
	private final String company;
	private LocalTime totalDelay;
	private int numFlights;
	private LocalTime averageDelay;

	// Constructors
	public CompanyDelays(String company) {
		this.company = company;
		totalDelay = LocalTime.of(0, 0);
		numFlights = 0;
		averageDelay = LocalTime.of(0, 0);
	}

	// Getters
	/**
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}
	/**
	 * @return the averageDelay
	 */
	public LocalTime getAverageDelay() {
		return averageDelay;
	}

	// Setters
	/**
	 * @param totalDelay the totalDelay to set
	 */
	public void addDelay(String delay) {
		totalDelay = LocalTime.parse(delay).plusHours(totalDelay.getHour()).plusMinutes(totalDelay.getMinute()); // new totalDelay
		long averageDelayLong = totalDelay.toSecondOfDay() / 60;        // convert totalDelay to long
		numFlights++;                              // to divide by numFlights + 1
		averageDelay = LocalTime.ofSecondOfDay(averageDelayLong / numFlights);  // reconver to LocalTime object
	}  

	/**
	 * 
	 * @param delay
	 */
	public void addDelay(LocalTime delay) {
		totalDelay = delay.plusHours(totalDelay.getHour()).plusMinutes(totalDelay.getMinute()); // new totalDelay
		long averageDelayLong = totalDelay.toSecondOfDay() / 60;        // convert totalDelay to long
		numFlights++;                              // to divide by numFlights + 1
		averageDelay = LocalTime.ofSecondOfDay(averageDelayLong / numFlights);  // reconver to LocalTime object

	}

	// Methods
	@Override
	public int compareTo(CompanyDelays o) {
		return averageDelay.compareTo(o.averageDelay);
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(company);
		builder.append("\t");
		builder.append(averageDelay);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((company == null) ? 0 : company.hashCode());
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
		CompanyDelays other = (CompanyDelays) obj;
		if (company == null) {
			if (other.company != null) {
				return false;
			}
		} else if (!company.equals(other.company)) {
			return false;
		}
		return true;
	}
}