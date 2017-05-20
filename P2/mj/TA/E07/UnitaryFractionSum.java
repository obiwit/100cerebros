import static java.lang.System.*;

public class UnitaryFractionSum{
	
	
	public static void main(String[] args){
	assert args.length == 2 : "Usage: java -ea UnitaryFractionSum <NUM> <DEN>";
	
	double num = Double.parseDouble(args[0]);
	double den = Double.parseDouble(args[1]);
	
	out.println(num+"/"+den+" = "+getfraction(num, den)); 
	 //out.println(den+"/"+num+Math.ceil(den/num)); 
    // out.println(den+"/"+num+Math.floor(den/num));
	}
	
	public static String getfraction(double num, double den){
		double d = Math.ceil(den/num);
		
		//num/den - 1/d = num2/den2
		num = num*d - den;
		den = den*d;
		
		//if it is a unitary fraction
		if(num%den==0) return "1/" + d;
		else return "1/" + d + " + " + getfraction(num, den);

		
		
	}
}

