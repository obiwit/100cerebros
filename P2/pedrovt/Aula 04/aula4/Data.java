/*
 * Data.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

package aula4;
import java.util.Calendar;

public class Data {
	// Fields
	private int day, month, year;

	// Ctors
	public Data () {
		Calendar today = Calendar.getInstance();
		this.day = today.get(Calendar.DAY_OF_MONTH);
		this.month = today.get(Calendar.MONTH)+1;
		this.year = today.get(Calendar.YEAR);

		test();
	}

	public Data (int dia, int mes, int ano) {
		this.day = dia;
		this.month = mes;
		this.year = ano;

		test();
	}

	// Returns date info
	public int day() {
		return day;
	}

	public int month() {
		return month;
	}

	public int year() {
		return year;
	}
	
	// Prints info
	public void printData() {
		System.out.printf("%02d-%02d-%04d\n", day, month, year);
	}

	public void printFullData () {
		System.out.printf("%s %02d, %04d\n", month_name(), day, year);
	}
	
	// -----------------------------------------------------------
	// Tests
	static void isValid (int year, int month, int day) {
		if ( (day > 0 && day <= numDays(month, year)) && (month > 0 && month < 13) ) {
			System.out.println("Date is valid.");
		}

		else {
			System.out.println("Date is not valid.");
		}
	}

	void test() {
		assert (this.month > 0 && month < 13): "Invalid month";
		assert (this.day > 0 && day <= numDays(month, year)) : "Invalid day";
	}

	// -----------------------------------------------------------
	// Auxiliar functions

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

	static int numDays(int month, int year) {
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

	// Returns month name (like this or using a String)
	String month_name() {
		switch (month) {							
			case 1: 
				return "January"; 	
			case 2: 
				return "February"; 
			case 3: 
				return "March"; 	
			case 4:
				return "April"; 
			case 5:
				return "May"; 	
			case 6:
				return "June"; 
			case 7:
				return "July"; 	
			case 8:
				return "August";	
			case 9:
				return "September"; 		
			case 10: 
				return "October"; 
			case 11: 		
				return "November"; 	
			case 12:
				return "December";	
		}

		return "Invalid Month";
	}
	
	public void goTomorrow () {
		/*if day = last day of month --> day = 1 ^ month++
		 *if day = last day of the year --> day = 1 ^ month = 1 ^ year++ */
		if (day == numDays(month, year)) {
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

		test();
	}

	public void goYesterday () {
		/*if day = first day of month --> day = lastDay(month-1) ^ month--
		 *if day = first day of the year --> day = 31 ^ month = 12 ^ year--*/
		if (day == 1) {
			day = numDays(month-1, year);
			if (month == 1) {
				month = 12;
				year--;
			} else {
				month--;
			}
		} else {
			day--;
		}		

		test();
	}

	// Relations between dates
	public boolean menorDoQue(Data data) {
		if (this.year < data.year || (this.year == data.year && this.month < data.month) || (this.year == data.year && this.month == data.month && this.day < data.day)) return true;
		else return false;
	}

	public boolean maiorDoQue(Data data) {
		if (this.year > data.year || (this.year == data.year && this.month > data.month) || (this.year == data.year && this.month == data.month && this.day > data.day)) return true;
		else return false;
	}

	public boolean igualA(Data data) {
		if (this.day == data.day && this.month == data.month && this.year == data.year) return true;
		else return false;
	}

	public boolean menorIgualDoQue(Data data) {
		if (this.year < data.year || (this.year == data.year && this.month < data.month) || (this.year == data.year && this.month == data.month && this.day < data.day)) return true;
		else if (this.day == data.day && this.month == data.month && this.year == data.year) return true; 
		else return false;
	}

	public boolean maiorIgualDoQue(Data data) {
		if (this.year > data.year || (this.year == data.year && this.month > data.month) || (this.year == data.year && this.month == data.month && this.day > data.day)) return true;
		else if (this.day == data.day && this.month == data.month && this.year == data.year) return true; 
		else return false;
	}

}