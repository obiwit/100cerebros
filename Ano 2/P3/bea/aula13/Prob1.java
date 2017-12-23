package aula13;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import aula13.prob1.Pais;
import aula13.prob1.Cidade;
import aula13.prob1.Estado;
import aula13.prob1.Provincia;
import aula13.prob1.Localidade;
import aula13.prob1.TipoLocalidade;

public class Prob1 {
	
	public static void main(String[] args) {
		Cidade cid1 = new Cidade("Szohod", 31212);
		Cidade cid2 = new Cidade("Wadesdah", 23423);
		Localidade cid3 = new Localidade("BedRock", 23423, TipoLocalidade.Vila);
		
		Estado est1 = new Estado("North Borduria", 223133, cid1); 
		Estado est2 = new Estado("South Borduria", 84321, cid2);
		
		Pais p1 = new Pais("Borduria", est1.getCapital()); 
		Pais p2 = new Pais("Khemed", cid2);
		Pais p3 = new Pais("Aurelia");
		Pais p4 = new Pais("Atlantis"); 
		
		p1.addRegiao(est1);
		p1.addRegiao(est2);
		p1.addRegiao(est2); // does nothing :)
		p2.addRegiao(new Provincia("Afrinia", 232475, "Aluko Pono")); 
		p2.addRegiao(new Provincia("Eriador", 100000, "Dumpgase Liru")); 
		p2.addRegiao(new Provincia("Laurania", 30000, "Mukabamba Dabba"));
		
		List<Pais> org = new ArrayList<Pais>(); 
		org.add(p1);
		org.add(p2);
		org.add(p3);
		org.add(p4);
		
		System.out.println("-------Iterar sobre o conjunto"); 
		Iterator<Pais> itr = org.iterator();
		while (itr.hasNext())
			System.out.println(itr.next());
		
		System.out.println("\n-------Iterar sobre o conjunto - For each (java 8)"); 
		for (Pais pais: org)
			System.out.println(pais); 
		
		// ToDo:
		// adicionar, remover, ordenar, garantir elementos únicos
	}
}
