package g4.subjectsManagement;

import java.util.Arrays;

import aula4.prob1.people.Student;
import aula4.prob1.subjectsManagement.Professor;
import aula4.prob1.subjectsManagement.StudentArray;

/**
 * Subject
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Subject {

	// Instance Fields
	private String name, area;
	private int ects;
	private Professor headTeacher;
	private StudentArray students;

	// -----------------
	/**
	 * 
	 * Constructor
	 * @param name
	 * @param area
	 * @param ects
	 * @param headTeacher
	 */
	public Subject(String name, String area, int ects, Professor headTeacher) {
		this.name = name;
		this.area = area;
		setEcts(ects);
		setHeadTeacher(headTeacher);
		students = new StudentArray();
	}

	// -----------------
	// Getters
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the area
	 */
	public String getArea() {
		return area;
	}

	/**
	 * @return the ects
	 */
	public int getEcts() {
		return ects;
	}

	/**
	 * @return the headTeacher
	 */
	public Professor getHeadTeacher() {
		return headTeacher;
	}

	/**
	 * @return the students
	 */
	public Student[] getStudents() {
		return students.getStudents();
	}

	/**
	 * 
	 * @param type String represeting the type of Students ("Student" or "StudentScholarship")
	 * @return 
	 */
	public Student[] getStudents(String type) {
		return students.getStudents(type);
	}

	/**
	 * @param numMec Mecanographic number of the student
	 * @return {@code true} if the student is enrolled, else {@code false}
	 */
	public boolean isEnrolled(int numMec) {
		return students.contains(numMec);
	}

	/**
	 * @return Integer value repreentating the number of students in the subject
	 */
	public int getNumStudents() {
		return students.size();
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Subject: ");
		builder.append(getName());

		builder.append("(");
		builder.append(getEcts());

		builder.append(" ECTS)\n\tArea: ");
		builder.append(getArea());

		builder.append("\n\tHead Teacher: ");
		builder.append(getHeadTeacher());
		builder.append("\n\tNumber of enrolled students: ");
		builder.append(getNumStudents());

		builder.append("\n\nList of enrolled students: \n");
		builder.append(Arrays.toString(getStudents()));

		builder.append("\n\nList of enrolled scholarship students: \n");
		builder.append(Arrays.toString(getStudents("StudentScholarship")));

		return builder.toString();
	}

	// -----------------
	// Setters
	/**
	 * @param headTeacher the headTeacher to set
	 */
	public void setHeadTeacher(Professor headTeacher) {
		this.headTeacher = headTeacher;
	}

	/**
	 * @param ects the ects to set
	 */
	public void setEcts(int ects) {
		this.ects = ects;
	}

	public boolean addStudent(Student stud) {
		boolean canAdd = !students.contains(stud.getNumMec());		// Students can't be repetead
		if (canAdd) students.add(stud);
		return canAdd;
	}

	public boolean removeStudent(int numMec) {
		return students.remove(numMec);
	}

	// -----------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ects;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((headTeacher == null) ? 0 : headTeacher.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Subject other = (Subject) obj;
		if (area == null) {
			if (other.area != null) {
				return false;
			}
		} else if (!area.equals(other.area)) {
			return false;
		}
		if (ects != other.ects) {
			return false;
		}
		if (name == null) {
			if (other.name != null) {
				return false;
			}
		} else if (!name.equals(other.name)) {
			return false;
		}
		if (headTeacher == null) {
			if (other.headTeacher != null) {
				return false;
			}
		} else if (!headTeacher.equals(other.headTeacher)) {
			return false;
		}
		return true;
	}

}
