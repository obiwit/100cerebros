/*
 * Data.java
 * 
 * Copyright 2017 Beatriz Borges
 */

import java.util.*;

public class Data {
	private int day, month, year;
	
	//construtores
	public Data() {
		Calendar hoje = Calendar.getInstance();
		
		this.day = hoje.get(Calendar.DAY_OF_MONTH);
		this.month =  hoje.get(Calendar.MONTH) + 1;
		this.year =  hoje.get(Calendar.YEAR);
	}
	public Data(int day, int month, int year) {
		this.day = day;
		this.month =  month;
		this.year =  year;
	}
	
	// metodos
	public void writeDate() {
		System.out.printf("%02d-%02d-%04d", day, month, year);
	}
	public int getDay() { 
		return day; 
	}
	public int getMonth() { 
		return month; 
	}
	public int getYear() { 
		return year;
	}
	public String getMonthName() {
		String[] months = {"January", "February", "March", "April", "May",
						   "June", "July", "August", "September", "October",
						   "November", "December"};
		return months[month - 1];
	}
	public void toTomorrow() {
		if (day < daysInMonth(month, year)) {
			day++;
		} else {
			day = 1;
			if (month == 12) {
				month = 1;
				year++;
			} else {
				month++;
			}
		}
	}
	public void toYesterday() {
		if (day > 1) {
			day--;
		} else {
			if (month == 1) {
				month = 12;
				year--;
			} else {
				month--;
			}
			day = daysInMonth(month, year);
		}
	}

	// metodos da classe
	public static boolean leapYear(int year) {
		return((year%4 == 0 && year%100 != 0) || year%400 == 0);
	}
	
	public static int daysInMonth(int month, int year) {
		switch (month) {
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				return 31;
			case 4:
			case 6:
			case 9:
			case 11:
				return 30;
			default: // month = 2
				return (leapYear(year))? 29 : 28;
		}
	}
	
	public static boolean validDate(int day, int month, int year) {
		return((day <= daysInMonth(month, year)) && (month > 0 && month < 13));
	}
}

