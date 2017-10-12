package aula3.prob1;


public class Student extends Pessoa {
	
	// Fields
	private final int studentID;
	
	private static int idCounter = 100;

	// Constructors
	public Student(String name, int cc, Data bDate, Data signUpDate) {
		super(name, cc, bDate, signUpDate);
		this.studentID = idCounter++;
	}
	public Student(String name, int cc, Data bDate) {
		this(name, cc, bDate, Data.today());
		
	}
	
	// Methods
	public int getStudentID() {
		return studentID;
	}
	
	// toString(), equals() and hashCode()
	@Override
	public String toString() {
		return super.toString() + "\nStudent ID: " + studentID;
	}	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + studentID;
		return result;
	}	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		if (studentID != other.studentID)
			return false;
		return true;
	}

}