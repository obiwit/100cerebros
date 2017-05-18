import static java.lang.System.*;
import java.util.Scanner;

public class P91 {

  public static void main(String[] args) {
    NumberArray na = new NumberArray();
    mergeSort(na.array(), 0, na.length());
    na.print();
  }

  static void mergeSort(int[] a, int start, int end) {
	if (end - start > 1) {
	  int middle = (end + start) / 2; 
	  mergeSort(a, start, middle); 
	  mergeSort(a, middle, end); 
	  mergeSubarrays(a, start, middle, end);
	}
	
  }
  static void mergeSubarrays(int[] a, int start, int middle, int end) {
	int[] b = new int[end - start];
	int i1 = start;
	int i2 = middle;
	int j = 0;
	
	while (i1 < middle && i2 < end) {
		if (a[i1] < a[i2])
		  b[j++] = a[i1++];
		else
		  b[j++] = a[i2++];
	}
	while (i1 < middle) {
		b[j++] = a[i1++];
	}
	while (i2 < end) {
		b[j++] = a[i2++];
	}
    arraycopy(b, 0, a, start, end-start);
  }
}

