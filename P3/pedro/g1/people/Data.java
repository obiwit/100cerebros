package g1.people;
import java.util.Calendar;

/**
 * Data
 * Based on my Date Class from P2
 * @author Pedro Teixeira, 84715
 */

public class Data {

	// Fields
	private int day, month, year;

	// ---------------------------------------------------
	// Constructors
	/**
	 * Creates a Date with the given information if it's valid. Otherwise, a Date with the current date is created.
	 * @param argDay
	 * @param argMonth
	 * @param argYear
	 */
	public Data (int argDay, int argMonth, int argYear) {
		if (isValid(argDay, argMonth, argYear)) {
			this.day   = argDay;
			this.month = argMonth;
			this.year  = argYear;
		}
		else {
			Calendar today = Calendar.getInstance();
			this.day   = today.get(Calendar.DAY_OF_MONTH);
			this.month = today.get(Calendar.MONTH)+1;
			this.year  = today.get(Calendar.YEAR);
		}
	}

	/**
	 * Creates a Date with the current date. 
	 */
	public Data () {
		Calendar today = Calendar.getInstance();
		this.day   = today.get(Calendar.DAY_OF_MONTH);
		this.month = today.get(Calendar.MONTH)+1;
		this.year  = today.get(Calendar.YEAR);
	}

	// ---------------------------------------------------
	// Getters
	/**
	 * @return day
	 */
	public int day() {
		return day;
	}

	/**
	 * @return month
	 */
	public int month() {
		return month;
	}

	/**
	 * @return year
	 */
	public int year() {
		return year;
	}

	/**
	 * @return String representation of the date
	 */
	@Override
	public String toString() {
		return day+"-"+month+"-"+year;
	}

	// ---------------------------------------------------
	// Setters
	public void day(int argDay) {
		this.day = argDay;
	}

	public void month(int argMonth) {
		this.month = argMonth;
	}

	public void year(int argYear) {
		this.year = argYear;
	}

	// ---------------------------------------------------
	// Auxiliar methods
	/**
	 * Checks if a date day-month-year is valid 
	 * @param day
	 * @param month
	 * @param year
	 * @return {@code true} if the date is valid, else {@code false}
	 */
	private boolean isValid (int day, int month, int year) {
		return (day >= 1 && day <= numDays(month, year)) && (month >= 1 && month <= 12);
	}

	/**
	 * Returns number of days of a month of a year 
	 * @param month
	 * @param year
	 * @return
	 */
	private int numDays(int month, int year) {
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
	private boolean isLeapYear(int year) {
		return (year % 400 == 0) || (year % 4 ==0 && year % 100 !=0);
	}
}
