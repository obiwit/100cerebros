import java.util.*;

public class JData {  //JData stands for Julian Date, as used in astronomy.
	
	private int dia, mes, ano;
	private int julianData;
	
//--- CONSTRUTORES --------------------------------------------
	public JData(int dia, int mes , int ano) {
		this.dia = dia;
		this.mes = mes;
		this.ano = ano;
		this.julianData = dataToJData(dia, mes, ano);
	}
	
	public JData() {
		Calendar cal = Calendar.getInstance();
		this.ano = cal.get(Calendar.YEAR);
		this.mes = cal.get(Calendar.MONTH) + 1;
		this.dia = cal.get(Calendar.DAY_OF_MONTH);
		this.julianData = dataToJData(this.dia, this.mes, this.ano);
	}

//--- METODOS ------------------------------------------------
	
//--- getters	
	public int getDia() {
		return dia;
	}
	public int getMes() {
		return mes;
	}
	public int getAno() {
		return ano;
	}
	public int getJulianData() {
		return julianData;
	}	
//--- print functions	
	public void printData() {
		System.out.printf("%02d-%02d-%04d",dia, mes, ano);
	}
	public void printDataExtenso(int dia, int mes, int ano) {
		System.out.print(getDia() + " de " + nomeDoMes() + " de " + getAno());
	}
	
//--- conversion functions
	public int dataToJData(int dia, int mes, int ano) {  // only for dates after 01-01-2000
		int diasTotal = 0;
		int diasExtra = (ano - 2000) / 4;
		
		diasTotal = (ano - 2000) * 365 + diasExtra;
		for (int i = 0; i < mes; i++) {
			diasTotal += diasNoMes(i, ano);
		}
		diasTotal += dia;
		return diasTotal;
	}

	public String nomeDoMes() {
		String[] meses = {"Janeiro", "Fevereiro", "Marco", "Abril", "Maio",
						  "Junho", "Julho", "Agosto", "Setembro", "Outubro",
						  "Novembro", "Dezembro"};			 
		return meses[mes - 1];
	}

	
	public void vaiParaAmanha() {
		if (dia < diasNoMes(mes, ano)) {
			dia++;
		} else {
			dia = 1;
			if (mes == 12) {
				mes = 1;
				ano++;
			} else {
				mes++;
			}
		}
		//~ dataArray[0] += 1;
	}
	public void vaiParaOntem() {
		if (dia > 1) {
			dia--;
		} else {
			if (mes == 1) {
				mes = 12;
				ano--;
			} else {
				mes--;
			}
			dia = diasNoMes(mes, ano);
		}
		//~ dataArray[0] -= 1;
	}
	
	public boolean dataIgual(JData oldData) {
		if (julianData == oldData.julianData) {
			return true;
		}
		return false;
	}

	public boolean dataMaior(JData oldData) {
		if (julianData > oldData.julianData) {
			return true;
		}
		return false;
	}
	
	public boolean dataMenor(JData oldData) {
		if (julianData < oldData.julianData) {
			return true;
		}
		return false;
	}
	
	public int subtract(JData oldData) {
		return julianData - oldData.julianData;
	}
	
//--- METODODOS DA CLASSE ------------------------------------
	public static boolean bissexto(int ano) {
		return ((ano % 4 == 0) && (ano % 100 != 0) || (ano % 400 == 0));
	}

	public static int diasNoMes(int mes, int ano) {
		int dias = 0;
			switch (mes) {
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
			default: //Fevereiro
				return (bissexto(ano)) ? 28 : 29;
		}
	}
	
	public static boolean validarData(int dia, int mes, int ano) {
		return((dia <= diasNoMes(mes, ano)) && (mes > 0 && mes < 13));
	}	
}
