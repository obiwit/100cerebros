package g01.people;
import java.util.Calendar;

/**
 * Data
 * Based on my Date Class from P2 (with changes)
 * @author Pedro Teixeira, 84715
 */

public class Data {

	// Instance Fields
	private int dia, mes, ano;

	// ---------------------------------------------------
	// Constructors
	/**
	 * Creates a Date with the given information if it's valid. 
	 * Otherwise, a Date with the current date is created.
	 * @param argDia dia
	 * @param argMes mês
	 * @param argAno ano
	 */
	public Data(int argDia, int argMes, int argAno) {
		if (isValid(argDia, argMes, argAno)) {
			this.dia   = argDia;
			this.mes = argMes;
			this.ano  = argAno;
		}
		else {
			Calendar today = Calendar.getInstance();
			this.dia   = today.get(Calendar.DAY_OF_MONTH);
			this.mes = today.get(Calendar.MONTH)+1;
			this.ano  = today.get(Calendar.YEAR);
		}
	}

	/**
	 * Default Constructor
	 * Creates a Date with the current date. 
	 */
	public Data() {
		Calendar today = Calendar.getInstance();
		this.dia   = today.get(Calendar.DAY_OF_MONTH);
		this.mes = today.get(Calendar.MONTH)+1;
		this.ano  = today.get(Calendar.YEAR);
	}

	// ---------------------------------------------------
	// Static Methods
	/**
	 * Checks if a date day-month-year is valid 
	 * @param dia
	 * @param mes
	 * @param ano
	 * @return {@code true} if the date is valid, else {@code false}
	 */
	public static boolean isValid(int dia, int mes, int ano) {
		return (dia >= 1 && dia <= numDias(mes, ano)) && (mes >= 1 && mes <= 12);
	}

	/**
	 * @param mes
	 * @param ano
	 * @return A non-negative integer representating the number of days on the given month of the given year 
	 */
	private static int numDias(int mes, int ano) {
		int count = 31; 

		//February can have 29 or 28 dias
		if (mes == 2) {
			count = isLeapAno(ano)? 29 : 28;	
		}

		//Remaining mess have constant number of dias
		else {
			switch (mes) {							
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
	 * @param ano
	 * @return {@code true} if the ano is a leap ano, else {@code false}
	 */
	private static boolean isLeapAno(int ano) {
		return (ano % 400 == 0) || (ano % 4 ==0 && ano % 100 !=0);
	}
	
	// ---------------------------------------------------
	// Getters
	/**
	 * @return dia
	 */
	public int getDia() {
		return dia;
	}

	/**
	 * @return mes
	 */
	public int getMes() {
		return mes;
	}

	/**
	 * @return ano
	 */
	public int getAno() {
		return ano;
	}

	/**
	 * @return String representation of the date
	 */
	@Override
	public String toString() {
		return dia+"-"+mes+"-"+ano;
	}

}
