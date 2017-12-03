package g10.ex1.resources.people;
import java.util.Calendar;

/**
 * Date
 * From the previous week problem set.
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Date {

	// Instance Fields
	private int day, month, year;

	// ---------------------------------------------------
	// Constructors
	/**
	 * Creates a Date with the given information if it's valid. 
	 * Otherwise, a Date with the current date is created.
	 * @param argDay day
	 * @param argMonth mês
	 * @param argYear year
	 * @throws IllegalArgumentException
	 */
	public Date(int argDay, int argMonth, int argYear) {
		if (!isValid(argDay, argMonth, argYear)) throw new IllegalArgumentException();
		this.day   = argDay;
		this.month = argMonth;
		this.year  = argYear;

	}

	// ---------------------------------------------------
	// Static Methods
	/**
	 * @return Date with the current date. 
	 */
	public static Date today() {
		Calendar today = Calendar.getInstance();
		return new Date(today.get(Calendar.DAY_OF_MONTH), today.get(Calendar.MONTH)+1, today.get(Calendar.YEAR));
	}

	/**
	 * Checks if a date day-month-year is valid 
	 * @param day
	 * @param month
	 * @param year
	 * @return {@code true} if the date is valid, else {@code false}
	 */
	public static boolean isValid(int day, int month, int year) {
		return (day >= 1 && day <= numDays(month, year)) && (month >= 1 && month <= 12);
	}

	// ---------------------------------------------------
	// Getters
	/**
	 * @return day
	 */
	public int getDay() {
		return day;
	}

	/**
	 * @return month
	 */
	public int getMonth() {
		return month;
	}

	/**
	 * @return year
	 */
	public int getYear() {
		return year;
	}

	/**
	 * @return String representation of the date
	 */
	@Override
	public String toString() {
		return day+"/"+month+"/"+year;
	}

	// ---------------------------------------------------
	// Non-Static Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + day;
		result = prime * result + month;
		result = prime * result + year;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Date other = (Date) obj;
		if (day != other.day) {
			return false;
		}
		if (month != other.month) {
			return false;
		}
		if (year != other.year) {
			return false;
		}
		return true;
	}

	// ---------------------------------------------------
	// Static Auxiliary (Private) Methods
	/**
	 * @param month
	 * @param year
	 * @return A non-negative integer representating the number of days on the given month of the given year 
	 */
	private static int numDays(int month, int year) {
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

	/**
	 * @param year
	 * @return {@code true} if the year is a leap year, else {@code false}
	 */
	private static boolean isLeapYear(int year) {
		return (year % 400 == 0) || (year % 4 ==0 && year % 100 !=0);
	}

}
