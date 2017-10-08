package g3;

import g3.people.Date;
import g3.people.Student;
import g3.people.StudentScholarship;

/**
 * Ex1_PeopleTest
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex1_PeopleTest {
	public static void main(String[] args) {
		Student est = new Student ("Andreia", 9855678, new Date(18, 7, 1974));
		StudentScholarship bls = new StudentScholarship ("Maria", 8976543, new Date(11, 5, 1976));
		bls.setScholarshipAmount(745);
		System.out.println("Student: " + est.getName());
		System.out.println(est);
		System.out.println("Scholarship Student: " + bls.getName() + ", NMec: " + bls.getNumMec() + ", Bolsa:" + bls.getScholarshipAmount());
		System.out.println(bls);

	}
}