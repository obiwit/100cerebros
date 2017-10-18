package aula3;


import aula3.prob1.Data;
import aula3.prob1.MeritStudent;
import aula3.prob1.Student;

public class Prob1 {

	public static void main(String[] args) {
		
		// Runs a "non-functional" function, left here simply as a way of allowing
		// the teacher to test the VideoClub directly if they so wish.
		// new VideoClub(5).test();
		
		// For normal execution, please run instead:
		//new VideoClub(N).run(); // replace N with an integer at choice
		
		Student est = new Student ("Andreia", 9855678, new Data(18, 7, 1974)); 
		MeritStudent bls = new MeritStudent ("Maria", 8976543, new Data(11, 5, 1976)); 
		bls.setScholarshipMoney(745);
		
		System.out.println("Estudante: " + est.getNome()); 
		System.out.println(est);
		System.out.println();
		System.out.println("Bolseiro: " + bls.getNome() + ", NMec: " + bls.getStudentID() +", Bolsa:"+ bls.getScholarshipMoney());
		System.out.println(bls);
	}

}
