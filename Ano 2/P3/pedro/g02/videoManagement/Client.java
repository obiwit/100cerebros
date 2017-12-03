package g02.videoManagement;
import g01.people.Data;
import g01.people.Pessoa;

/**
 * Client
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Client extends Pessoa {

	// Static Fields
	private static int nextID = 0;

	// Instance Fields
	private int id;
	private Data enrollDate;

	// Constructor
	/**
	 * Constructor
	 */
	public Client(String name, int cardNum, Data birthDate, Data enrollDate) {
		super(name, cardNum, birthDate);
		nextID++;
		id = nextID;
		this.enrollDate = enrollDate;
	}

	// ---------------------------
	// Getters
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @return the enrollDate
	 */
	public Data getEnrollDate() {
		return enrollDate;
	}

	@Override
	public String toString () {
		StringBuilder e = new StringBuilder();
		e.append("Client #" + id + ":\n");
		e.append("\t" + super.toString() + "\n");
		e.append("\t" + "Enroll Date: " + enrollDate);
		return e.toString();
	}
}
