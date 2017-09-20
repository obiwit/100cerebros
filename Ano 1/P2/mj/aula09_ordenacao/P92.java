import static java.lang.System.*;
import java.util.Scanner;

public class P92 {

	public static void main(String[] args) {
		NumberArray na = new NumberArray();
		insertionSort(na.array(), 0, na.length());
		na.print();
	}

	static void insertionSort(int[] a, int start, int end) {
		assert validSubarray(a, start, end);
		for (int i = start+1; i < end ; i++){
			int j;
			int v = a[i];
			for (j = i-1; j >= start && a[j] > v ; j--){
				a[j+1] = a[j];
			}	
			a[j+1] = v;
		}
		assert isSorted(a, start, end);
	}
	
	public static boolean validSubarray(int[]a, int start, int end){
		if(start >= 0 && end<=a.length) return true;
		else return false;
	
	}
	
	public static boolean isSorted(String[]a, int start, int end){
		boolean sort = true;
		int i=start;
		while(i<end){
			if(a[i].compareTo(a[i+1])>0){//s1.compareto(s2) > 0 se s1>s2 lexograficam/
				sort = false; 
				i++;
			}
		}
		return sort;
	}
  
}


