package g3.videoManagement;
import g3.people.Date;

/**
 * Employee
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Employee extends Client {

	// Instance Fields
	private int numEmpl, nif;

	// ---------------------------
	// Constructor
	/**
	 * Constructor
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 * @param enrollDate
	 */
	public Employee(String name, int cardNum, Date birthDate, Date enrollDate, int numEmpl, int nif) {
		super(name, cardNum, birthDate, enrollDate);
		this.numEmpl = numEmpl;
		this.nif     = nif;
	}

	// ---------------------------
	// Getters
	/**
	 * @return the numEmpl
	 */
	public int getNumEmpl() {
		return numEmpl;
	}

	/**
	 * @return the nif
	 */
	public int getNif() {
		return nif;
	}

	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append("\n\tType: Employee");
		s.append("\n\tEmployee Number: ");
		s.append(numEmpl);
		s.append("\n\tNIF: ");
		s.append(nif);
		return super.toString() + s.toString();
	}

	// ---------------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + nif;
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
		Employee other = (Employee) obj;
		if (nif != other.nif) {
			return false;
		}
		return true;
	}



}
