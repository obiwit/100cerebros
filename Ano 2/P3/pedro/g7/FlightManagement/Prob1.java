package g7.FlightManagement;
/**
 * Prob1
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob1 {

	public static void main (String[] args) {
		// Testing Flight class
		//System.out.println(new Flight("00:50", "TP 1944", "Lisboa"));
		//System.out.println(new Flight("07:35","IB 8720","Madrid","00:25"));
		//System.out.println(new Flight("072s:35","IB 8720","Madrid","00:2d25"));   // throws IllegalArgumentException
		//System.out.println(new Flight("07:35","IB 8720","Madrid","00:2d25"));    // throws IllegalArgumentException

		FlightManagement flights = new FlightManagement();

		// import info
		flights.importFromFile("companhias.txt", "companies");
		flights.importFromFile("voos.txt", "flights");

		// export info
		flights.exportToFile("Infopublico.txt");				// alinea b
		flights.exportToFile("cidades.txt", "totalArrivals");	// alinea d

		// test program
		System.out.println(flights);
		System.out.println("Delays: " + flights.getCompaniesDelays()); // alinea c
		System.out.println("Total Arrivals: \n" + flights.getFlightsByOrigin());

		// import/export info from/to binary files
		flights.exportToFile("Infopublico.bin", "b");			// "b" is an optional arg to flag read/write on binary files
		flights.importFromFile("Infopublico.bin", "b");

	}
}

