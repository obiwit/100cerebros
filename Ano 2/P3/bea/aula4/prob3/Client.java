package aula4.prob3;

import java.util.ArrayList;

import aula1.prob2.Data;
import aula1.prob2.Pessoa;


/**
 * Client
 * From the previous week problem set.
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Client extends Pessoa {

	// Fields
	private final int clientID;
	private final Data signUpDate;
	private ArrayList<Integer> allCheckedOutMovies;
	private ArrayList<Integer> currentlyCheckedOutMovies;
	
	// Constructor
	public Client(String name, int cc, Data bDate, int clientID, Data signUpDate) {
		super(name, cc, bDate);
		this.clientID = clientID;
		this.signUpDate = signUpDate;
		allCheckedOutMovies = new ArrayList<>();
		currentlyCheckedOutMovies = new ArrayList<>();
	}
	
	// Methods
	public boolean equals(Client c) {
		return super.equals(c) && (clientID == c.clientID) && signUpDate.equals(c.signUpDate)
					&& allCheckedOutMovies.equals(c.allCheckedOutMovies) 
					&& currentlyCheckedOutMovies.equals(c.currentlyCheckedOutMovies);
	}
	
	/**
	 * Allows a client to check-in a movie from the Video Club
	 * @param videoID 
	 */
	public void checkInVideo(int videoID) {
		currentlyCheckedOutMovies.remove((Integer)videoID);
	}
	/**
	 * @return the number of currently checked out videos
	 */
	public int currentlyCheckedOutVideos() {
		return currentlyCheckedOutMovies.size();
	}
	
	/**
	 * Allows a client to check-out a movie from the Video Club
	 * @param videoID
	 */
	public void checkOutVideo(int videoID) {
		allCheckedOutMovies.add(videoID);
		currentlyCheckedOutMovies.add(videoID);
	}
	/**
	 * @return an array with the ID of every movie the client has checked-out
	 */
	public ArrayList<Integer> getCheckOutHistory() {
		return allCheckedOutMovies;
	}

	@Override
	public String toString() {
		return super.toString() + "\nClient ID: " + clientID + "\nSign-up date: " + signUpDate;
	}
	
	// Getters and setters
	/**
	 * @return the client's unique ID
	 */
	public int getID() {
		return clientID;
	}
}
