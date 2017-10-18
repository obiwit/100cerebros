package g4;

import aula4.prob1.people.Date;
import aula4.prob1.people.Student;
import aula4.prob1.people.StudentScholarship;
import aula4.prob1.subjectsManagement.Professor;
import aula4.prob1.subjectsManagement.Subject;

/**
 * Ex4_SubjectsManagementTest
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */
public class Ex1_SubjectsManagementTest {

	public static void main(String[] args) {
		Student est1 = new Student("Andreia", 9855678, new Date(18, 7, 1974));
		Student est2 = new Student("Monica", 75266454, new Date(11, 8, 1978));
		Student est3 = new Student("Jose", 85265426, new Date(15, 2, 1976));
		Student est4 = new Student("Manuel", 85153442, new Date(1, 3, 1973));
		StudentScholarship bls1 = new StudentScholarship("Maria", 8976543, new Date(12, 5, 1976));
		StudentScholarship bls2 = new StudentScholarship("Xico", 872356522, new Date(21, 4, 1975));
		StudentScholarship bls3 = new StudentScholarship("Duarte", 32423512, new Date(6, 1, 1976));
		bls1.setScholarshipAmount(745);
		bls2.setScholarshipAmount(845);
		bls3.setScholarshipAmount(745);
		Professor pf1 = new Professor("Jose Manuel", 11223344, new Date(11, 9, 1969));
		Subject dis = new Subject("P5", "Informatica", 6, pf1);
		dis.addStudent(est1);
		dis.addStudent(est2);
		dis.addStudent(bls1);

		if (dis.isEnrolled(est3.getNumMec()))
			System.out.println("\n" + est3
					+ " \n\t-> ESTÁ inscrito na Disciplina");
		else
			System.out.println("\n" + est3
					+ " \n\t-> NÃO ESTÁ inscrito na Disciplina");
		System.out.println("\nNº de Alunos Inscritos: " + dis.getNumStudents());
		dis.addStudent(est3);
		dis.addStudent(bls2);
		dis.addStudent(est4);
		dis.addStudent(bls3);
		if (!dis.addStudent(bls3))
			System.out.println(bls3.getNumMec() + ", " + bls3.getName()
			+ " já está inscrito nesta disciplina!");
		if (dis.removeStudent(bls2.getNumMec()))
			System.out.println(bls2.getName() + " Removido!");
		System.out.println("\nNº de Alunos Inscritos: " + dis.getNumStudents());
		System.out.println(dis + "\n");
		System.out.println("\n Listagem de Students:");
		for (Student e : dis.getStudents())
			System.out.println(e);
		System.out.println("\n Listagem de StudentScholarships:");
		for (Student e : dis.getStudents("StudentScholarship"))
			System.out.println(e);
	}
}
