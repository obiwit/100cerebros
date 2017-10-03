/*
 * DataTeste.java
 * 
 * Copyright 2017 Beatriz Borges
 */

import java.util.*;

public class DataTeste {
	
	public static void main (String[] args) {
		
		date = new Data(29, 2, 2016);
		assert (Data.validDate(date.getDay(), date.getMonth(), 
				 date.getYear())) : "Invalid validation";
				 
		assert "29-02-2016".equals(date.toString());
		assert 29 == date.getDay();
		assert 2 == date.getMonth();
		assert 2016 == date.getYear();
		assert "February" == date.getMonthName();
		
		date.toYesterday();
		assert 28 == date.getDay();
		assert 2 == date.getMonth();
		assert 2016 == date.getYear();
		
		
		date.toTomorrow();
		date.toTomorrow();
		assert "01-03-2016".equals(date.toString());
		assert 1 == date.getDay();
		assert 3 == date.getMonth();
		assert 2016 == date.getYear();
		assert "March" == date.getMonthName();
		
		System.out.println("Yeah, no erros!");
	}
		
}

