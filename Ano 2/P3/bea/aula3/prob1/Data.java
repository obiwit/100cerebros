package aula3.prob1;

import java.util.Calendar;

public class Data {
	// Fields
	private int dia;
    private int mes;
    private int ano;

    // Constructors
	public Data(int dia, int mes, int ano) throws IllegalArgumentException {
		if (!validDate(dia, mes, ano)) {
			throw(new IllegalArgumentException());
		}
		
		this.dia = dia;
		this.mes = mes;
		this.ano = ano;
	}
	
	/**
	 * 
	 * @return a new {@code Data} object with today's date
	 */
	public static Data today() {
		Calendar today = Calendar.getInstance();
		return new Data(today.get(Calendar.DAY_OF_MONTH),  today.get(Calendar.MONTH),  today.get(Calendar.YEAR));
	}
	
	// Methods
	
	public static boolean validDate(int dia, int mes, int ano) { 
		return validMonth(mes) && validYear(ano) && validDay(dia, mes, ano);
	}
	private static boolean validDay(int dia, int mes, int ano) { 
		int maxDayNum = 31;
		if (mes == 4 || mes == 6 || mes == 9 || mes == 11) {
			maxDayNum = 30;
		} else if (mes == 2) {
			maxDayNum = 28;
			if (((ano % 4 == 0) && (ano % 100 != 0)) || ano % 400 == 0) {
				maxDayNum = 29;
			}
		}
		return (dia >= 1 && dia <= maxDayNum);
	}
	private static boolean validMonth(int month) {
		return (month >= 1 && month <= 12);
	}
	private static boolean validYear(int ano) {
		return (ano >= 0);
	}
	
	@Override
	public String toString() {
		return dia + "/" + mes + "/" + ano;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ano;
		result = prime * result + dia;
		result = prime * result + mes;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Data other = (Data) obj;
		if (ano != other.ano)
			return false;
		if (dia != other.dia)
			return false;
		if (mes != other.mes)
			return false;
		return true;
	}
	
	// Getters and Setters
	public int getDia() {
		return dia;
	}
	public int getMes() {
		return mes;
	}
	public int getAno() {
		return ano;
	}
}
