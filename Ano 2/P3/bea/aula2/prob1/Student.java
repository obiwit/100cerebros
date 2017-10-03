package aula2.prob1;

import aula1.prob2.Data;

public class Student extends Client {
	
	// Fields
	private final int studentID;
	private final int course;

	// Constructors
	public Student(String name, int cc, Data bDate, int clientID, Data signUpDate, int studentID, int course) {
		super(name, cc, bDate, clientID, signUpDate);
		this.studentID = studentID;
		this.course = course;
	}
	
	// Methods
	public boolean equals(Student s) {
		return super.equals(s) && (studentID == s.studentID) && (course == s.course);
	}
	
	@Override
	public String toString() {
		return super.toString() + "\nStudent ID: " + studentID + "\nStudent Course: " + course;
	}

}
