/*
 * Data.java
 * 
 * Copyright 2017 Pedro <Pedro@UA>
 * MIECT - DETI UA
 */

public class Data1 {
	private int day, month, year;
	
	//CTOR
	public Data1 (int dia, int mes, int ano) {
		this.day = dia;
		this.month = mes;
		this.year = ano;
	}
	
	//Returns values
	public int dia() {
		return day;
	}
	
	public int mes() {
		return month;
	}
	
	public int ano() {
		return year;
	}
	
	//Relation between dates
	public boolean menorDoQue(Data1 data) {
		if (this.year < data.year || (this.year == data.year && this.month < data.month) || (this.year == data.year && this.month == data.month && this.day < data.day)) return true;
		else return false;
	}
	
	public boolean maiorDoQue(Data1 data) {
		if (this.year > data.year || (this.year == data.year && this.month > data.month) || (this.year == data.year && this.month == data.month && this.day > data.day)) return true;
		else return false;
	}
	
	public boolean igualA(Data1 data) {
		if (this.day == data.day && this.month == data.month && this.year == data.year) return true;
		else return false;
	}
	
	public boolean menorIgualDoQue(Data1 data) {
		if (this.year < data.year || (this.year == data.year && this.month < data.month) || (this.year == data.year && this.month == data.month && this.day < data.day)) return true;
		else if (this.day == data.day && this.month == data.month && this.year == data.year) return true; 
		else return false;
	}
	
	public boolean maiorIgualDoQue(Data1 data) {
		if (this.year > data.year || (this.year == data.year && this.month > data.month) || (this.year == data.year && this.month == data.month && this.day > data.day)) return true;
		else if (this.day == data.day && this.month == data.month && this.year == data.year) return true; 
		else return false;
	}
	
	
	public void escreve() {
		System.out.printf("%02d-%02d-%04d", this.day, this.month, this.year);
	}
}
