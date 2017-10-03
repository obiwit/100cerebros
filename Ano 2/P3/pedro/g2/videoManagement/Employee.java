package g2.videoManagement;
import g1.people.Data;

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
	public Employee(String name, int cardNum, Data birthDate, Data enrollDate, int numEmpl, int nif) {
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
}
