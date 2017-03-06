/*
 * Data.java
 * 
 * Beatriz
 */
 
package whatevs;
 
public class Data {
	int day, month, year;
	
	// constructors
	public Data() {
		// devia na verdade ser feito com o Calendar
		day = 6; month = 3; year = 2017;
	}
	public Data(int dia, int mes, int ano) {
		if (ano > 1999) {
			day = dia;
			month = mes;
			year = ano;
		} else {
			System.err.println("Pfff... year must be >= 2000!");
			System.exit(1);
		}
	}
	
	// object methods
	public int dia() { return day;   }
	public int mes() { return month; }
	public int ano() { return year;  }
	
	public boolean igualA(Data data) {
		return((day == data.day) && (month == data.month) && (year == data.year));
	} 
	public boolean menorDoQue(Data data) {
		// lower year or same year and (lower month or same month, lower day)
		return ((year < data.year) || ((year == data.year) && 
				((month < data.month) || 
				((month == data.month) && (day < data.day)))));
	} 
	public boolean maiorDoQue(Data data) {
		// bigger year or same year and (bigger month or same month, bigger day)
		return ((year > data.year) || (year == data.year) && 
				((month > data.month) || 
				((month == data.month) && (day > this.day))));
		
	} 
	
	public void escreve() {
      System.out.printf("%02d-%02d-%04d", day, month, year);
	}
	
	public int daysBetween(Data date) {
		// ATENTION
		// this method probably doesn't work well - a better alternative
		// would have been to convert the date to days since 2000, and
		// then just do the difference between the dates
		int daysBetween = 0;
			
		if(day != date.day) {
			daysBetween = day - date.day;
		}
		while(month != date.month) {
			daysBetween += daysInMonth(month++, year);
		}
		while (year > date.year) {
			if (isLeapYear(year--)) {
				daysBetween -= 366;
			} else {
				daysBetween -= 365;
			}
		}
		while (year < date.year) {	
			if (isLeapYear(year++)) {
				daysBetween += 366;
			} else {
				daysBetween += 365;
			}
		}
		
		return daysBetween;
	}
	
	// class methods
	private static boolean isLeapYear(int year) {
		return((year%400 == 0) || ((year%4 == 0) && (year%100 != 0)));
	}
	private static int daysInMonth(int month, int year) {
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
				return (isLeapYear(year))? 29 : 28;
		}
	}
}

