package g2.videoManagement;
import g1.people.Data;

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
	 * @param birthData
	 * @param enrollData
	 * @param numMec
	 * @param course
	 */
	public Student (String name, int cardNum, Data birthData, Data enrollData, int numMec, String course) {
		super(name, cardNum, birthData, enrollData);
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

}
