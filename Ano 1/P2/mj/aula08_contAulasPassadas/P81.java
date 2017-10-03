import static java.lang.System.*;
import java.util.*;

public class P81{
	
	public static void main(String[] args){
		double[] arr = {0.0, 0.0};;
		// Preencher arr com os valores obtidos dos argumentos.
		if(args.length != 0){
			arr = new double[args.length];
			for (int j = 0; j < arr.length; j++){
				assert isNumeric(args[j]):"invalid argument\n insert numbers";
				arr[j]= Double.parseDouble(args[j]);
			}
		}
		
		

		out.printf("sum of arguments = %f\n", sumRec(arr, 0, arr.length));
		// Verificação de correção:
		assert sumRec(arr, 0, arr.length) == sum(arr, 0, arr.length);
	}

	// sum of subarray [start,end[ of arr:
	public static double sum(double[] arr, int start, int end){
		assert arr != null;
		assert start >= 0 && start <= end && end <= arr.length;

		double res = 0;
		for(int i = start; i < end; i++)
		  res += arr[i];
		return res;
	}

	// same thing, recursive:
	public static double sumRec(double[] arr, int start, int end){
		assert arr != null;
		assert start >= 0 && start <= end && end <= arr.length;
		
		if(end==2){
			return arr[start]+arr[end-1];
		}
		else{
			return arr[end-1]+sumRec(arr, start, end-1);
		}
		
	}
	
	public static boolean isNumeric(String str)  {  
		try  {  
			double d = Double.parseDouble(str);  
		}  
		catch(NumberFormatException nfe){  
			return false;  
		}  
		return true;  
	}
	

}

