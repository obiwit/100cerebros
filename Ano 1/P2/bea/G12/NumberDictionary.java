import p2utils.*;
import java.io.*;
import java.util.Scanner;

public class NumberDictionary {

	HashTable<Integer> dic = new HashTable<>(25);

	NumberDictionary(String dictionaryPath) {
		try {
			File file = new File(dictionaryPath);
			Scanner scFile = new Scanner(file);
			while(scFile.hasNext()) {
				String[] temp = scFile.nextLine().split(" - ");
				dic.set(temp[1], Integer.parseInt(temp[0]));
			}
		}
		catch(Exception e) {
			System.out.println(e);
			//System.out.printf("Die, you think you could fool me?!\nException - " + e);
		}
	}

	public int fromString(String s) {
		if (dic.contains(s)) return dic.get(s);
		return -1;
	}
	
	public int fromExpression(int[] nums) {
		// assert numsLength != 0
		
		if (nums.length == 1) return nums[0];
		
		int sum = 0;
		for(int i = 1, j = nums[0]; i < nums.length; i++) {
			// if next num is bigger, multiply, else add
			if (nums[i-1] < nums[i]) {
				j *= nums[i];
				if (i == nums.length - 1) sum += j;
			} 
			else {
				if (i == nums.length - 1) j += nums[i];
				sum += j;
				j = nums[i];
			}
		}
		
		return sum;
	}
}
