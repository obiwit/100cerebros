package g03.videoManagement;
import g03.people.Date;

/**
 * Student
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Student extends Client {

	// Instance Fields
	private int    numMec;
	private String course;

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param name
	 * @param cardNum
	 * @param birthDate
	 * @param enrollDate
	 * @param numMec
	 * @param course
	 */
	public Student (String name, int cardNum, Date birthDate, Date enrollDate, int numMec, String course) {
		super(name, cardNum, birthDate, enrollDate);
		this.numMec = numMec;
		this.course = course;
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
	 * @return the course
	 */
	public String getCourse() {
		return course;
	}

	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append("\n\tType: Student");
		s.append("\n\tMEC Number: ");
		s.append(numMec);
		s.append("\n\tCourse: ");
		s.append(course);
		return super.toString() + s.toString();
	}

	// ---------------------------
	// Setters
	/**
	 * @param course the course to set
	 */
	public void setCourse(String course) {
		this.course = course;
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
