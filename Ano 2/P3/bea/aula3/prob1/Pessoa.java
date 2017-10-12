package aula3.prob1;

import java.util.ArrayList;


public class Pessoa {

	// Fields
	private final String nome;
	private final int cc;
	private final Data dataNasc;
	private final Data signUpDate;
	private ArrayList<Integer> allCheckedOutMovies;
	private ArrayList<Integer> currentlyCheckedOutMovies;
	
	// Constructor
	public Pessoa(String name, int cc, Data bDate, Data signUpDate) {
		this.nome = name;
		this.cc = cc;
		this.dataNasc = bDate;
		this.signUpDate = signUpDate;
		
		allCheckedOutMovies = new ArrayList<>();
		currentlyCheckedOutMovies = new ArrayList<>();
	}
	
	// Methods	
	
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

	// toString(), equals() and hashCode()
	@Override
	public String toString() {
		return "Name: " + nome + "\nID number: " + cc + "\nBirthdate: " + dataNasc + 
						"\nSign-up date: " + signUpDate;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((allCheckedOutMovies == null) ? 0 : allCheckedOutMovies.hashCode());
		result = prime * result + ((currentlyCheckedOutMovies == null) ? 0 : currentlyCheckedOutMovies.hashCode());
		result = prime * result + ((signUpDate == null) ? 0 : signUpDate.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pessoa other = (Pessoa) obj;
		if (cc != other.cc)
			return false;
		return true;
	}
	
	
	// Getters and setters
	/**
	 * @return the person's name
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @return the person's unique ID
	 */
	public int getCc() {
		return cc;
	}
	/**
	 * @return the person's 
	 */
	public Data getDataNasc() {
		return dataNasc;
	}
}
