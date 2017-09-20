
import static java.lang.System.*;
import java.util.Scanner;

public class P123 {
  final static Scanner sc = new Scanner(System.in);

  public static void main(String[] args) {
	NumberDictionary dic = new NumberDictionary("numbers.txt");
	
	out.print("Enter your numbers in a non-obvious, space-separeted, format:\n\t");
	String[] nums = sc.nextLine().split(" |-| and ");
	int[] numbers = new int[nums.length];
	
	out.println("There - was that so hard you couldn't do it yourself? *rolls eyes*\n\t");
	
	for (int i = 0; i < nums.length; i++) {
		numbers[i] = dic.fromString(nums[i]);
		out.print(numbers[i] + " ");
	}
	out.println("\n\nSlightly harder, but still - was that so hard you couldn't do it yourself? *rolls eyes*\n\t");
	out.println(dic.fromExpression(numbers));
  }
}
