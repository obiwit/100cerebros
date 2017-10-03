/*
 * FinalGrade.java
 * 
 * Copyright 2017 Beatriz Borges <bea@ubuntu>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

import java.util.*;

public class FinalGrade {
	
	static Scanner input = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		double[] tps = new double[2];
		double[] pgs = new double[3];
		
		tps[0] = getDoubleRange("Introduza a nota do TP1:", 0, 20);
		tps[1] = getDoubleRange("Introduza a nota do TP2:", 0, 20);
		pgs[0] = getDoubleRange("Introduza a nota do PG1:", 0, 20);
		pgs[1] = getDoubleRange("Introduza a nota do PG2:", 0, 20);
		pgs[2] = getDoubleRange("Introduza a nota do PG3:", 0, 20);
		double ef = getDoubleRange("Introduza a nota do ExF:", 0, 20);
		
		double tp = (tps[0] + tps[1])/2;
		double pg = (pgs[0] + pgs[1] + pgs[2])/3;
		double p = calcP(pg, ef);
		double nf = 0.8*p + 0.2*tp;
		// tp = tp1 + tp2 / 2
		// p = 50 + 50 				if ex - 4 <= pg <= ex+4
		// p = 75 ef + 25 pf - 1 	if pg < ef - 4
		// p = 75 ef + 25 pf + 1	if pg > ef + 4
		// nf = 20 tp + 80 p
		System.out.printf("PG: %3.1f\n", pg);
		System.out.printf("TP: %3.1f\n", tp);
		System.out.printf("P : %3.1f\n", p);
		System.out.printf("NF: %3.1f\n", nf);
		
		System.out.printf("%s", (nf > 10)? "APROVADO!": "REPROVADO!");
	}
	
	public static double calcP(double pg, double ef) {
		if (pg < (ef - 4)) {
			return (0.25*pg + 0.75*ef - 1);
		} else if (pg > (ef + 4)) {
			return (0.25*pg + 0.75*ef + 1);
		} else { // ef-4 <= pg <= ef+4
			return (0.5*pg + 0.5*ef);
		}
	}
	
	public static double getDoubleRange(String prompt, double min, double max) {
		double num;
		do {	
			System.out.print(prompt+ " ");
			num = Double.parseDouble(input.nextLine());	
		} while ((num < min) && (num > max));
		return num;
	}
}

