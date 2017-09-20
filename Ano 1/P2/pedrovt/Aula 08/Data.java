/*
 * Data.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

import java.util.Calendar;

public class Data {
	// Fields
	private long days;
	private int day, month, year;
	private long reference = (long) (2000 * 365.25);

	// Constructors
	public Data () {
		Calendar today = Calendar.getInstance();
		this.day = today.get(Calendar.DAY_OF_MONTH);
		this.month = today.get(Calendar.MONTH)+1;
		this.year = today.get(Calendar.YEAR);

		this.days = convertToDays (day, month, year) - reference;

	}

	public Data (int dia, int mes, int ano) {
		this.day = dia;
		this.month = mes;
		this.year = ano;
		this.days = convertToDays (dia, mes, ano) - reference;
	}

	// Methods
	public long days() {
		return days;
	}

	public int day() {
		return day;
	}

	public int month() {
		return month;
	}

	public int year() {
		return year;
	}

	public void printDate() {
		System.out.printf("%02d-%02d-%04d", day, month, year);
	}

	public void printFullDate() {
		System.out.printf("%s %02d, %04d", month_name(), day, year);
	}

	public void goTomorrow () {				
		/*if day = last day of month --> day = 1 ^ month++
		 *if day = last day of the year --> day = 1 ^ month = 1 ^ year++ */
		if (day == numDays_month(month, year)) {
			day = 1;
			if (month == 12) {
				month = 1;
				year++;
			} else {
				month++;
			}
		} else {
			day++;
		}
		
		days++;
	}
	
	public void goYesterday () {
		/*if day = first day of month --> day = lastDay(month-1) ^ month--
		 *if day = first day of the year --> day = 31 ^ month = 12 ^ year--*/
		if (day == 1) {
			day = numDays_month(month-1, year);
			if (month == 1) {
				month = 12;
				year--;
			} else {
				month--;
			}
		} else {
			day--;
		}
		
		days--;
	}

	public long differenceDates(Data n){
		return Math.abs(this.days - n.days);
	}

	public boolean equalDate(Data n) {
		return this.days == n.days;
	}

	public boolean smallerDate(Data n) {
		return this.days < n.days;
	}

	public boolean biggerDate(Data n) {
		return this.days > n.days;
	}

	//---------------------------------------------------------------------
	// Auxiliary methods

	// Returns month name (like this or using a String)
	String month_name() {
		String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
		return months[this.month-1];
	}

	// Converts DD-MM-YYYY to DD
	long convertToDays (int day, int month, int year){
		long num_days = day;

		// Adds days of full months
		for (int i = 1; i < month; i++) {
			num_days += numDays_month(i, year);
		}

		for (int j = 0; j < year; j++) {
			num_days += numDays_year(j);
		}

		return num_days;

	}
	
	// Gets whether the given year is a leap year or not
	static boolean isLeapYear(int year) {
		boolean leapYear;

		if ((year % 400 == 0) || (year % 4 ==0 && year % 100 !=0)) {
			leapYear=true;
		}

		else {
			leapYear = false;
		}

		return leapYear;
	}

	// Gets number of days in a month and in a year
	static int numDays_month (int month, int year) {		//could have done this with an array...
		int count = 31; 

		//February can have 29 or 28 days
		if (month == 2) {
			count = isLeapYear(year)? 29 : 28;	
		}

		//Remaining months have constant number of days
		else {
			switch (month) {							
				case 4: 		
				case 6: 		
				case 9: 		
				case 11: 		
					count = 30;
					break;
			}
		}

		return count;
	}

	static int numDays_year (int year) {
		return isLeapYear(year)? 366 : 365;
	}

	// Validates a date
	static boolean isValid (int year, int month, int day) {
		return (day > 0 && day <= numDays_month(month, year)) && (month > 0 && month < 13);
	}
	
	//--------------------------------------------------------------------
	//For ex8.7
	public long convertToDays (){
		long num_days = day;

		// Adds days of full months
		for (int i = 1; i < month; i++) {
			num_days += numDays_month(i, year);
		}

		return num_days;
	}
	
	// toString is automatically invoked
	public String toString(){
		return day + "," + month + "," + year;
	}
}