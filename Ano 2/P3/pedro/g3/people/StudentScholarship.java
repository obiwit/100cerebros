package g3.people;

/**
 * StudentScholarship
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class StudentScholarship extends Student {

	// Instance Fields
	private double scholarshipAmount;

	// -----------------------
	// Constructors
	/**
	 * 
	 * Constructor. The scholarship amount is set as 0.
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 * @param enrollDate
	 */
	public StudentScholarship(String name, int cardNum, Date birthDate, Date enrollDate) {
		super(name, cardNum, birthDate, enrollDate);
		setScholarshipAmount(0);
	}

	/**
	 * 
	 * Constructor without enrollment date (today date will be used). The scholarship amount is set as 0.
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 */
	public StudentScholarship(String name, int cardNum, Date birthDate) {
		this(name, cardNum, birthDate, Date.today());
	}

	// -----------------------
	// Getter
	/**
	 * @return the scholarshipAmount
	 */
	public double getScholarshipAmount() {
		return scholarshipAmount;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();

		builder.append(super.toString());

		builder.append("\n\tScholarship Amount: ");
		builder.append(scholarshipAmount);

		return builder.toString();
	}

	// -----------------------
	// Setter
	/**
	 * @param scholarshipAmount the scholarshipAmount to set
	 */
	public void setScholarshipAmount(double scholarshipAmount) {
		this.scholarshipAmount = scholarshipAmount;
	}

	// -----------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(scholarshipAmount);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		StudentScholarship other = (StudentScholarship) obj;
		if (Double.doubleToLongBits(scholarshipAmount) != Double.doubleToLongBits(other.scholarshipAmount)) {
			return false;
		}
		return true;
	}
}
