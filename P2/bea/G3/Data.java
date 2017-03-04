/*
 * Data.java
 * 
 * Beatriz
 */
 
 
public class Data {
	int day, month, year;
	
	Data() {
		day = -1; month = -1; year = -1;
	}
	Data(int dia, int mes, int ano) {
		day = dia;
		month = mes;
		year = ano;
	}
	
	public int dia() { return day;   }
	public int mes() { return month; }
	public int ano() { return year;  }
	
	public boolean igualA(Data data) {
		return((day == data.day) && (month == data.month) && (year == data.year));
	} 
	public boolean menorDoQue(Data data) {
		// lower year or same year and (lower month or same month, lower day)
		return (year < data.year) || ((year == data.year) && 
				((month < data.month) || 
				((month == data.month) && (day < this.day))));
	} 
	public boolean maiorDoQue(Data data) {
		// bigger year or same year and (bigger month or same month, bigger day)
		return (year > data.year) || ((year == data.year) && 
				((month > data.month) || 
				((month == data.month) && (day > this.day))));
		
	} 
	
	public void escreve() {
      System.out.printf("%02d-%02d-%04d", day, month, year);
	}
}

