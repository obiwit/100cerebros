/*
 * Dialect.java
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

public class Dialect {
	
	public static void main (String[] args) {
		Scanner input = new Scanner(System.in);
		String line;
		do {
			System.out.print("Linha: ");
			line = input.nextLine();
			System.out.println(translate(line));
		} while(line.length() != 0);
	}
	
	public static String translate(String line) {
		String[] subLines = line.replace('l', 'u').replace('L', 'U').split("r");
		String newLine = "";
		for(int i = 0; i < subLines.length; i++) {
			newLine += subLines[i];
		}
		return newLine;
	}
}

