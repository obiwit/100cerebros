package g3.videoManagement;
import g3.people.Date;
import g3.people.Person;

/**
 * Client
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Client extends Person {

	// Static Fields
	private static int nextID = 0;

	// Instance Fields
	private int id;
	private Date enrollDate;

	// Constructor
	/**
	 * Constructor
	 */
	public Client(String name, int cardNum, Date birthDate, Date enrollDate) {
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
	public Date getEnrollDate() {
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

	// ---------------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + id;
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
		Client other = (Client) obj;
		if (id != other.id) {
			return false;
		}
		return true;
	}




}
