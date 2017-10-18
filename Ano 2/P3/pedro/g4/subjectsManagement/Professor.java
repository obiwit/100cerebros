package g4.subjectsManagement;
import aula4.prob1.people.Date;
import aula4.prob1.people.Person;

/**
 * Professor
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Professor extends Person  {

	// Class/Static Fields
	private static int nextNumMec = 0;

	// ----------------
	// Instance Fields
	private int numFunc;
	private Date admissionDate;

	// ----------------
	/**
	 * Constructor
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 */
	public Professor(String name, int cardNum, Date birthDate) {
		super(name, cardNum, birthDate);
		nextNumMec++;
		numFunc = nextNumMec;
		admissionDate = Date.today();
	}

	// ----------------
	// Getters
	/**
	 * @return the numFunc
	 */
	public int getNumFunc() {
		return numFunc;
	}

	/**
	 * @return the admissionDate
	 */
	public Date getAdmissionDate() {
		return admissionDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();

		builder.append(super.toString());

		builder.append("\n\tNum Func: ");
		builder.append(numFunc);

		builder.append("\n\tAdmission Date: ");
		builder.append(admissionDate);

		return builder.toString();
	}

	// ----------------
	// Other Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + numFunc;
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
		Professor other = (Professor) obj;
		if (numFunc != other.numFunc) {
			return false;
		}
		return true;
	}

}
