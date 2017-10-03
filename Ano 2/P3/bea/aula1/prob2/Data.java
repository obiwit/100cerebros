package aula1.prob2;

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
	
	// Methods
	public String toString() {
		return dia + "/" + mes + "/" + ano;
	}
	public boolean equals(Data d) {
		return (dia == d.dia) && (mes == d.mes) && (ano == d.ano);
	}
	
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
