package g07.FlightManagement;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * FlightManagement
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class FlightManagement implements Serializable{

	private static final long serialVersionUID = 7926331012175935213L;

	// ---------------------------
	// Instance Fields
	private Set<Flight> flights;
	private Map<String, String> companies;     
	private Map<String, CompanyDelays> delays;
	private Map<String, FlightsByOrigin> totalArrivals; 

	// ---------------------------
	// Constructors
	/**
	 * 
	 * Constructor
	 */
	public FlightManagement() {
		flights     = new HashSet<>();
		companies     = new HashMap<>();
		delays       = new HashMap<>();
		totalArrivals = new HashMap<>();
	}

	// ---------------------------
	// Getters
	/**
	 * @return the flights
	 */
	public Flight[] getFlights() {
		return flights.toArray(new Flight[flights.size()]);
	}

	/**
	 * @return the companies acronyms
	 */
	public String[] getCompaniesAcronyms() {
		return companies.keySet().toArray(new String[companies.size()]);
	}

	/**
	 * @return the companies names
	 */
	public String[] getCompaniesName() {
		return companies.values().toArray(new String[companies.size()]);
	}

	/**
	 * @return average delays for each company
	 */
	public String getCompaniesDelays() {
		List<CompanyDelays> values = new ArrayList<>(delays.values()) ;
		Collections.sort(values);
		return values.toString();
	}

	/**
	 * @return number of flights for each one of the origin places
	 */
	public String getFlightsByOrigin() {
		List<FlightsByOrigin> totalArrivalsList = new ArrayList<>(totalArrivals.values()) ;
		Collections.sort(totalArrivalsList);
		Collections.reverse(totalArrivalsList);			//descending order
		StringBuilder b = new StringBuilder();
		b.append("Origem\tVoos\n");
		for (FlightsByOrigin f: totalArrivalsList) {
			b.append(f);
			b.append("\n");
		}
		return b.toString(); 
	}

	// ---------------------------
	// Setters
	/**
	 * @param flight the flight to add
	 * @return {@code true} if the flight is added, else {@code false}
	 */
	public boolean addFlight(Flight flight) {
		// update totalArrivals
		String origin = flight.getFromCity();
		if (totalArrivals.containsKey(origin)) totalArrivals.get(origin).addFlight();
		else {
			FlightsByOrigin flightsOfTheOrigin = new FlightsByOrigin(origin);
			flightsOfTheOrigin.addFlight();
			totalArrivals.put(origin, flightsOfTheOrigin);
		}

		// update delays
		LocalTime delay = flight.getDelay();
		if (delay != null) {
			String companyName = flight.getCompanyName();
			if (delays.containsKey(companyName)) delays.get(companyName).addDelay(flight.getDelay());
			else {
				CompanyDelays delaysOfTheCompany = new CompanyDelays(companyName);
				delaysOfTheCompany.addDelay(flight.getDelay());    
				delays.put(companyName, delaysOfTheCompany);
			}
		}
		// IDEA: TreeMap put() overrides  --> so adding new delays won't affect data sorting
		// the questions are: are values() a sorted collection

		// IDEA: MAP COMPANY -> OBJECT
		// GET VALUES
		// ORDER VALUES
		// PRINT IT
		// I'm AWESOME #JAVA_RULES_OVER_INNOCENT_SOULS
		return flights.add(flight);
	}

	/**
	 * 
	 * @param acronym
	 * @param companyName
	 * @return {@code true} if the acronym doesn't exist and the pair acronym, companyName is added, else {@code false}
	 */
	public boolean addCompany(String acronym, String companyName) {
		boolean canAdd = !companies.containsKey(acronym);
		if (canAdd) companies.put(acronym, companyName);
		return canAdd;
	}

	// ----------------------------
	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Hora\tVoo\tCompanhia\tOrigem\tAtraso\tObs\n");
		for (Flight f: flights) {
			builder.append(f.getTime());    // Hora
			builder.append("\t");
			builder.append(f.getCompanyName()); // Voo
			builder.append(f.getFlightNum());
			builder.append("\t");
			builder.append(companies.get(f.getCompanyName()));  // Companhia
			builder.append("\t");
			builder.append(f.getFromCity());   // Origem

			LocalTime delay = f.getDelay();
			if (delay != null) {
				builder.append("\t");
				builder.append(delay);    // Atraso
				builder.append("\tPrevisto: ");
				builder.append(f.getTime().plusHours(delay.getHour()).plusMinutes(delay.getMinute()));  // Sum of the two hours)
			}

			builder.append("\n");
		}
		//builder.append("\nCompanies (debug): ");    // debug
		//builder.append(companies);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((companies == null) ? 0 : companies.hashCode());
		result = prime * result + ((flights == null) ? 0 : flights.hashCode());
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
		FlightManagement other = (FlightManagement) obj;
		if (companies == null) {
			if (other.companies != null) {
				return false;
			}
		} else if (!companies.equals(other.companies)) {
			return false;
		}
		if (flights == null) {
			if (other.flights != null) {
				return false;
			}
		} else if (!flights.equals(other.flights)) {
			return false;
		}
		return true;
	} 

	// ----------------------------
	// Methods to import/export info from/to files
	// Import Methods

	/**
	 * Imports info from a file and adds to the structure.
	 * @param filepath path to the file to read
	 * @param options (optional). "b" : read from binary file and print the contents. No data will be added to this FlightManagement.
	 */
	public void importFromFile (String filepath, String...  options) {
		// Binary file
		if (options.length != 0 && options[0].equalsIgnoreCase("b")) importFromBinaryFile (filepath);
		else {
			// Default option
			Path file = Paths.get(filepath);

			try (BufferedReader reader = Files.newBufferedReader(file)) {
				reader.readLine();       // ignores first line
				String line = null;
				while ((line = reader.readLine()) != null) {
					if (options.length != 0 && options[0].equalsIgnoreCase("companies")) importCompaniesFromFile(line);
					else importFlightsFromFile(line);
				}  
			} catch (IOException e) {
				System.err.println("IO Error");
			}
		}
	}

	/**
	 * Imports info from a binary file and prints the contents.
	 * @param filepath
	 */
	private static void importFromBinaryFile (String filepath) {
		try (RandomAccessFile file = new RandomAccessFile(filepath, "rw");) {
			byte []bytes = new byte[(int) file.length()];
			file.read(bytes);  
			for(byte b : bytes) {
				System.out.print((char)b);
			}
		} catch (IOException e) {
			System.err.println("IO Error");
		}
	}

	/**
	 * Parses the info of a line of the file according to the info needed to create a Flight object.
	 * @param line
	 */
	private void importFlightsFromFile (String line) {  
		String[] lineContents = line.split("\t");
		Flight f;
		if (lineContents.length >= 4) f = new Flight(lineContents[0], lineContents[1], lineContents[2], lineContents[3]);
		else f = new Flight(lineContents[0], lineContents[1], lineContents[2]);
		addFlight(f);

	}

	/**
	 * Parses the info of a line of the file according to the info needed to create a Company object.
	 * @param line
	 */
	private void importCompaniesFromFile(String line) {  
		String[] lineContents = line.split("\t");
		addCompany(lineContents[0], lineContents[1]);
	}

	// -------------------
	// Export methods
	/**
	 * Exports the info info from a file and adds to the structure. By default, the info on the String returned 
	 * by the method {@code toString()} is exported. Optional arg {@code "totalArrivals"} allows to change the default behavior 
	 * and export the number of arrivals for each one of the origin places. That optional arg <b>can't</b> be used 
	 * with the optional arg {@code "b"}.
	 * 
	 * @param filepath path to the file to written
	 * @param options (optional) {@code "b"} to export the default info to a binary file
	 * @param options (optional) {@code "totalArrivals"} to export the number of arrivals for each one of the origin place.
	 */
	public void exportToFile(String filepath, String... options) {      // String... : varargs
		if (options.length != 0) {
			// export to binary file 
			if (options[0].equalsIgnoreCase("b")) exportToBinaryFile(filepath, toString());

			// export totalArrivals
			else if (options[0].equalsIgnoreCase("totalArrivals")) exportToFile(filepath, getFlightsByOrigin());
		}
		else {
			// default: export flightManagement info
			exportToFile(filepath, toString());
		}
	} 

	/**
	 * Writes the String {@code strToPrint} in a non-binary file.
	 * @param filepath
	 * @param strToPrint
	 */
	private static void exportToFile(String filepath, String strToPrint) {
		Path file = Paths.get(filepath);

		try (BufferedWriter writer = Files.newBufferedWriter(file, StandardCharsets.UTF_8)) {
			writer.write(strToPrint, 0, strToPrint.length());
		} catch (IOException e) {
			System.err.println("IO Error");
		}

	}

	/**
	 * Writes the String {@code strToPrint} in a non-binary file.
	 * @param filepath
	 * @param strToPrint
	 */
	private static void exportToBinaryFile(String filepath, String strToPrint) {
		try (RandomAccessFile file = new RandomAccessFile(filepath, "rw")) {
			file.seek(0);
			file.writeBytes(strToPrint);
			file.close();
		} catch (IOException e) {
			System.err.println("IO Error");
		}

	} 

}