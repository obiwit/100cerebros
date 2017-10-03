package g2.videoManagement;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * VideoCatalog
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class VideoCatalog {

	// Instance Fields
	private Map<Integer, Video>  videos;
	private Map<Integer, Client> clients;
	private Map<Integer, LinkedList<Integer>> loansByVideo;
	private Map<Integer, LinkedList<Integer>> loansByClient;
	private int n;

	// ----------------------------------------------
	// Constructors
	/**
	 * 
	 * Constructor
	 * @param n Limit of videos that can be loaned per user
	 */
	public VideoCatalog (int n) {
		this.n  	= n;
		videos  	= new HashMap<>();
		clients 	= new HashMap<>();
		loansByVideo   = new HashMap<>();
		loansByClient  = new HashMap<>();
	}

	// ----------------------------------------------
	// Getters
	/**
	 * Checks if a video is available or not.
	 * @param videoID ID of the video to check
	 * @return {@code true} if the video is available, {@code false} if the video is not avaiable or doesn't exist in the catalog
	 */
	public boolean getVideoAvailability(int videoID) {
		if (!videos.containsKey(videoID)) return false;
		return videos.get(videoID).isAvailable();
	}
	
	/**
	 * Returns the IDs of the videos loaned to the given user. 
	 * @param clientID ID of the client
	 * @return an array of integer values representing the IDs of the videos loaned to the given user, {@code null} if no loan was registrated for the given client.
	 */
	public Integer[] getLoansByClient(int clientID) {
		if (!loansByClient.containsKey(clientID)) return null;
		LinkedList<Integer> loansByClientID = loansByClient.get(clientID);
		return loansByClientID.toArray(new Integer[loansByClientID.size()]); 
	}
	
	/**
	 * Returns the IDs of the clients that the given video was loaned to. 
	 * @param videoID ID of the video
	 * @return an array of integer values representing the IDs of the clients that the given video was loaned to, {@code null} if no loan was registrated for the given video. 
	 */
	public Integer[] getLoansByVideo(int videoID) {
		if (!loansByVideo.containsKey(videoID)) return null;
		LinkedList<Integer> loansByVideoID = loansByClient.get(videoID);
		return loansByVideoID.toArray(new Integer[loansByVideoID.size()]); 
	}
	
	/**
	 * Returns the list of videos (as an array), ordered by their ratings in ascending order.
	 * @return an array of Video objects ordered by their ratings in ascending order. 
	 */
	public Video[] getVideosByRating() {
		Video[] videosByRating = videos.values().toArray(new Video[videos.size()]);
		sortByRating(videosByRating, 0, videosByRating.length);
		return videosByRating;
	}
	
	/**
	 * Returns the list of videos (as an array).
	 * @return an array of Video objects
	 */
	public Video[] getVideos() {
		return videos.values().toArray(new Video[videos.size()]);
	}
	
	/**
	 * Searchs and returns, if existing, the first ocurrence of a video with a title containing the given String.
	 * @param videoName String containing (part of) the title of the video.
	 * @return If existing, the first ocurrance of a Video object with a title containing the given String, else {@code null}
	 */
	public Video getVideo(String videoName) {
		for (Video v : videos.values()) 
			if (v.getTitle().contains(videoName)) return v;
		return null;
	}
	
	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append("Video Catalog with ");
		s.append(videos.size());
		s.append(" videos and ");
		s.append(clients.size());
		s.append(" clients.\nList of Videos:\n");
		
		// pretty-print of videos Map
		for (Video v: videos.values()) {;
			s.append(v);
			s.append("\n");
		}
		
		s.append("\nList of Clients:\n");
		
		// pretty-print of clients Map
		for (Client c: clients.values()) {
			s.append(c);
			s.append("\n");
		}
		return s.toString();
	}

	// ----------------------------------------------
	// Setters
	/**
	 * Adds a Client.
	 * @param c Client to add
	 */
	public void addClient(Client c) {
		clients.put(c.getId(), c);
	}
	
	/**
	 * Removes a client represented by its ID.
	 * @param id ID of the client to remove
	 * @return {@code true} if the client exists and is removed, else (if doesn't exist) {@code false}
	 */
	public boolean removeClient(int id) {
		if (!clients.containsKey(id)) return false;
		// else
		clients.remove(id);
		loansByClient.remove(id);
		//no need to remove on the loansByVideo Map
		return true;
	}
	
	/**
	 * Adds a Video.
	 * @param v Video to add
	 */
	public void addVideo(Video v) {
		videos.put(v.getId(), v);
	}
	
	/**
	 * Removes a video represented by its ID.
	 * @param id ID of the video to remove
	 * @return {@code true} if the video exists and is removed, else (if doesn't exist) {@code false}
	 */
	public boolean removeVideo(int id) {
		if (!videos.containsKey(id)) return false;
		// else
		videos.remove(id);
		loansByVideo.remove(id);
		//no need to remove on the loansByClient Map
		return true;
	}
	
	/**
	 * Adds a loan represented by a pair {@code (clientID, videoID)}. 
	 * A loan is possible when both the client and the video exist and when the user hasn't reached the quota limit 
	 * ({@code n}, given in the constructor of a VideoCatalog object).
	 *
	 * @param clientID ID of the client registrating the loan
	 * @param videoID ID of the video being loaned
	 * @return {@code true} if the loan is possible, else {@code false}
	 */
	public boolean addLoan(int clientID, int videoID) {
		if (!videos.containsKey(videoID) || !clients.containsKey(clientID)) return false;
		
		// Update loansByClient
		if (!loansByClient.containsKey(clientID)) {
			loansByClient.put(clientID, new LinkedList<Integer>());
		}
		LinkedList<Integer> videoIDs = loansByClient.get(clientID);
		if (videoIDs.size() > n) return false;		// if user can't loan more videos
		videoIDs.addLast(videoID);		

		// Update loansByVideo
		if (!loansByVideo.containsKey(videoID)) {
			loansByVideo.put(videoID, new LinkedList<Integer>());
		}
		LinkedList<Integer> clientsIDs = loansByVideo.get(videoID);
		clientsIDs.addLast(clientID);
		
		// Update video availability
		videos.get(videoID).setAvailable(false);

		return true;
	}
	
	/**
	 * Removes a loan represented by a pair {@code (clientID, videoID)} and adds the user rating to the ratings (1-10) of the video.
	 *
	 * @param clientID ID of the client that registrated the loan
	 * @param videoID  ID of the video that was loaned
	 * @param rate	   Integer representating the video's rating given by the user	
	 * @return {@code true} if the rating is between 1 and 10 and if the loan exists and is removed, else {@code false}
	 */
	public boolean removeLoan(int clientID, int videoID, int rate) {	
		// If the rating is not between 1 and 10 or if the loan, the client or the video don't exist
		if (rate < 1 || rate > 10 || !videos.containsKey(videoID) || !clients.containsKey(clientID) || !loansByVideo.containsKey(videoID) || !loansByClient.containsKey(clientID)) {
			return false;
		}

		// else

		// No need to update loansByVideo nor loansByClient (thus keeping a history of loans)
		
		// Update video availability
		videos.get(videoID).setAvailable(true);
		
		// Update video rating
		Video v = videos.get(videoID);
		v.addRating(rate);
		
		return true;
	}

	// ------------------------------------
	// Auxiliary Methods
	/**
	 * Sorts an array using the Sequential Sort Algorithm.
	 * @param a 	 array to sort
	 * @param start  index of the first element to sort.
	 * @param end    index of the first element not to be sorted (the last element to sort is {@code end-1}).
	 */
	private static void sortByRating (Video[] a, int start, int end) {
		for (int i = start; i < end-1; i++) { 
			for (int j = i + 1; j < end; j++) {   
				if (a[j].getAverageRating() < a[i].getAverageRating()) {            
					swap(a, i, j);              
				}
			}
		}
	}
	
	/**
	 * Swaps two elements of an array of type T.
	 * @param a the array
	 * @param i index of an element to swap
	 * @param j index of the other element to swap
	 */
	private static <T> void swap(T[] a, int i, int j) {
		T temp = a[i];
		a[i] = a[j];
		a[j] = temp;
	}
	
}
