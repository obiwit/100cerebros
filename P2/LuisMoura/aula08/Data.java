public class Data {
		
//--- Variaveis --------------------------
	private int dia, mes, ano;
		
//--- Construtor -----------------------
	public Data (int dia, int mes, int ano) {
		this.dia = dia;
		this.mes = mes;
		this.ano = ano;
	}
		
//--- 'Getters' -------------------------
	public int dia() {
		return dia;
	}
	
	public int mes() {
		return mes;
	}
	
	public int ano() {
		return ano;
	}
	
//--- Metodos --------------------------------
//--- verifica igualdade de duas datas
	public boolean igualA(Data data) {
		if (this.ano == data.ano) {
			if (this.mes == data.mes) {
				if (this.dia == data.dia) {
					return true;
				}
			}
		}
		return false;
	} 
//--- compara duas datas, retora trua quando menor
	public boolean menorDoQue(Data data) {
		if (this.ano < data.ano) {
			return true;
		} else if (this.ano == data.ano) {
			if (this.mes < data.mes) {
				return true;
			} else if (this.mes == data.mes) {
				if (this.dia < data.dia) {
					return true;
				}
			}
		}
		return false;
	}
//--- compara dua datas, retirna true quando maior	
	public boolean maiorDoQue(Data data) {
		if (this.ano > data.ano) {
			return true;
		} else if (this.ano == data.ano) {
			if (this.mes > data.mes) {
				return true;
			} else if (this.mes == data.mes) {
				if (this.dia > data.dia) {
					return true;
				}
			}
		}
		return false;
	}
//--- imprime uma data
	public void escreve() {
		System.out.printf("%02d-%02d-%04d", this.dia, this.mes, this.ano);
	}
}


