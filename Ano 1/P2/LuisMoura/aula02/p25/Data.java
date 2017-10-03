import java.util.*;

public class Data {
	
	private int dia, mes, ano;
	
//--- CONSTRUTORES --------------------------------------------
	public Data(int dia, int mes , int ano) {
		this.dia = dia;
		this.mes = mes;
		this.ano = ano;
	}
	public Data() {
		Calendar cal = Calendar.getInstance();
		this.ano = cal.get(Calendar.YEAR);
		this.mes = cal.get(Calendar.MONTH) + 1;
		this.dia = cal.get(Calendar.DAY_OF_MONTH);
	}

//--- METODOS ------------------------------------------------
	public void printData() {
		System.out.printf("%02d-%02d-%04d\n",dia, mes, ano);
	}
	public void printDataExtenso(int dia, int mes, int ano) {
		System.out.println(getDia() + " de " + nomeDoMes() + " de " + getAno());
	}
	
		public int getDia() {
			return dia;
		}
		public int getMes() {
			return mes;
		}
		public int getAno() {
			return ano;
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
