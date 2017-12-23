package aula4.prob3;

import aula1.prob2.Data;

/**
 * Student
 * From the previous week problem set.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */


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
