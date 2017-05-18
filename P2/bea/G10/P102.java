/*
 * P102.java
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

import p2utils.*;
import java.lang.*;

public class P102 {
	
	public static void main (String[] args) {
		Stack<Integer> s1 = new Stack<Integer>();
		Stack<Integer> s2 = new Stack<Integer>();
		Stack<Integer> s3 = new Stack<Integer>();
		
		// inserir 5 discos no stack 1
		s1.push(5); s1.push(4); s1.push(3); s1.push(2); s1.push(1);
		
		// mover discos
		printTowerState(0, s1, s2, s3);
		moverDiscos(5, true, s1, s2, s3);
		
	}

	static void moverDiscos(int n, boolean ordered, Stack<Integer> origin, 
							Stack<Integer> end, Stack<Integer> aux) {
								
		assert n >= 0;
		if (n > 0) {
			moverDiscos(n-1, true, origin, aux, end);
			
			// out.println("Move disco "+n+" da torre "+origem+" para a torre "+destino);
			end.push(origin.top());
			origin.pop();
			
			if (ordered) printTowerState(7, origin, aux, end);
			else printTowerState(7, end, origin, aux);
			
			moverDiscos(n-1, false, aux, end, origin);
			
		}
	}
	
	public static void printTowerState(int n, Stack<Integer> s1, 
							Stack<Integer> s2, Stack<Integer> s3) {
			System.out.println("After "+n+" moves:");
			System.out.println("TA: " + s1.toString());
			System.out.println("TB: " + s2.toString());
			System.out.println("TC: " + s3.toString());
	}
}

/*
After 0 moves:
TA: [5, 4, 3, 2, 1]
TB: []
TC: []
*/
