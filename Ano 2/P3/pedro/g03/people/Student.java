package g03.people;

/**
 * Student
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Student extends Person {

	// Static Fields 
	private static int nextNumMec = 100;

	// Instance Fields
	private int  numMec;
	private Date enrollDate;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 * @param enrollDate
	 */
	public Student (String name, int cardNum, Date birthDate, Date enrollDate) {
		super(name, cardNum, birthDate);
		numMec = nextNumMec++;
		this.enrollDate = enrollDate;
	}

	/**
	 * 
	 * Constructor without enrollment date. Today date will be used.
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 */
	public Student (String name, int cardNum, Date birthDate) {
		this(name, cardNum, birthDate, Date.today());
	}

	// ---------------------------
	// Getters
	/**
	 * @return the numMec
	 */
	public int getNumMec() {
		return numMec;
	}

	/**
	 * 
	 * @return the enrollDate
	 */
	public Date getEnrollDate() {
		return enrollDate;
	}

	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append("\n\tType: Student");
		s.append("\n\tMEC Number: ");
		s.append(numMec);
		s.append("\n\tEnrollment Date: ");
		s.append(enrollDate);
		return super.toString() + s.toString();
	}

	// ---------------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + numMec;
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
		Student other = (Student) obj;
		if (numMec != other.numMec) {
			return false;
		}
		return true;
	}

}
