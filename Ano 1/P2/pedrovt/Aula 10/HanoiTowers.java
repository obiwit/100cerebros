/**
 * HanoiTowers
 * 
 * @author Pedro Teixeira
 * Copyright 2017, MIECT - DETI UA
 */

import p2utils.Stack;
public class HanoiTowers {

	// Fields
	private Stack<Integer> orig = new Stack<Integer>();
	private Stack<Integer> target  = new Stack<Integer>();
	private Stack<Integer> aux  = new Stack<Integer>(); 
	
	// counts number of moves (incremented for each call of moveDisks method)
	private int countMoves;				
	private int numDisks;

	/**
	 * Creates a Hanoi problem with 3 towers, 2 empty (auxiliar and target towers) and 1 (original tower) with n disks.
	 * @param n : Number of disks in the original tower
	 */
	public HanoiTowers(int n) {
		// Create tower with n disks
		for (int i = n; i >= 1; i--) {		
			orig.push(i);
		}
		
		this.numDisks = n;	
		this.countMoves=0;
	}
	
	/**
	 * Solves Hanoi problem.
	 */
	public void solve() {
		System.out.println("-------------------------");
		printTowers();
		moveDisks(numDisks, orig, target, aux);
		System.out.println("Number of moves for tower with " + numDisks + " disks : " + countMoves);
	}
	
	/**
	 * Moves n disks from original tower to target tower using an auxiliar tower.
	 * @param n 		: number of disks to be moved
	 * @param origem 	: original tower
	 * @param destino 	: target tower
	 * @param auxiliar	: auxiliar tower
	 */
	private void moveDisks(int n, Stack<Integer> origem, Stack<Integer> destino, Stack<Integer> auxiliar) {
		assert n >= 0;
		if (n > 0) {
			moveDisks(n-1, origem, auxiliar, destino);
			
			//int elem = origem.top();		// 
			destino.push(origem.top());		// moves disk n to the target tower
			origem.pop();					// (removes it from original tower) 
			
			//System.out.println("Move disco "+n+" da torre "+origem+" para a torre "+destino); // Debug
			
			countMoves++;		
			printTowers();
			
			moveDisks(n-1, auxiliar, destino, origem);
		}
	}
	
	/**
	 * Prints contents of the towers.
	 */
	private void printTowers() {
		System.out.printf("After %d moves: \n", countMoves);
		System.out.println("TA: " + orig);
		System.out.println("TB: " + aux);
		System.out.println("TC: " + target);
		System.out.println();
	}
}
