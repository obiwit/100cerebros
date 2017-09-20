import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
import p2utils.*;

public class P82
{
  public static void main(String[] args) throws IOException
  {
	/*
    SortedList<Integer> listInts = new SortedList<Integer>();  
	listInts.insert(59);
	listInts.insert(1);
	listInts.insert(3);
	listInts.insert(9);
	listInts.insert(2);
	listInts.print();
	*/
	
	LinkedList<Integer> list = new LinkedList<Integer>();
	list.addLast(1);
	list.addLast(2);
	list.addLast(3);
	list.addLast(4);
	list.addLast(5);
	list.addLast(6);
	list.addLast(7);
	list.addLast(8);
	list.addLast(9);
	list.addLast(10);
	list.addLast(11);
	list.addLast(12);
	list.addLast(13);
	list.addLast(14);
	list.addLast(15);
	list.addLast(16);
	list.addLast(17);
	
	list.removeSub(7, 14);
	
	list.print();
  }

}


