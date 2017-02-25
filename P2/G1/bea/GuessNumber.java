/*
 * GuessNumber.java
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

public class GuessNumber {
	
	public static void main (String[] args) {
		Scanner input = new Scanner(System.in);
		
		// generate randomm number between 0 and 100
		int num = (int)(Math.random()*(100+1)), guesses = 0, guess;
		
		do {
			System.out.print("Enter a guess: ");
			guess = input.nextInt();
			guesses++;
			if(guess > num) {
				System.out.printf("The number is smaller than your guess.\n\n");
			} else if (guess < num) {
				System.out.printf("The number is bigger than your guess.\n\n");
			}
		} while(guess != num);
		
		System.out.printf("/nYou guessed it after %d tries!", guesses);
	}
}

