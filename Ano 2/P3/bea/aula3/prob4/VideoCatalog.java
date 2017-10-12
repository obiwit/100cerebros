package aula3.prob4;

import java.util.Arrays;

/* 
 * Manages an array of Video objects. Based on my solution to last week's problem set.
 */

public class VideoCatalog {

	// Fields
	private Video[] videos;
	private int incrementSize;
	private int currentSize;
	
	// Constructors
	public VideoCatalog() {
		this(20, 15);
	}
	public VideoCatalog(int initSize, int incSize) {
		videos = new Video[initSize];
		incrementSize = incSize;
		currentSize = 0;
	}

	// Methods
	/**
	 * Adds a new video to the catalog
	 * @param video the video to add
	 */
	public void addVideo(Video video) {
		if (isFull()) expandArray();
		
		videos[currentSize++] = video;
	}
	/**
	 * Removes a video from the catalog. If there is none, fails silently
	 * @param videoID
	 */
	public void removeVideo(int videoID) {
		// find person
		int videoIndex = contains(videoID);
		
		// check person exists
		if (videoIndex == -1) return;
		
		// remove entry from array
		System.arraycopy(videos, videoIndex+1, videos, videoIndex, currentSize-videoIndex);
		
		currentSize--;
	}
	/**
	 * 
	 * @param videoID the movie ID
	 * @return {@code Video} object corresponding to the given ID
	 */
	public Video getVideo(int videoID) {
		int vidIndex = contains(videoID);
		if (vidIndex == -1) 
			throw new IllegalArgumentException();
		return videos[vidIndex];
		
	}
	
	/**
	 * Sorts the videos by rating
	 */
	public void sort() {
		orderbyRating(0, currentSize);
	}
	/**
    * Sorts the videos by rating. Based on sorting algorithm used last week's problem set, but this algorithm orders by descending order.
    * 
    * @param start first index of the array to sort
	* @param end length of the {@code Video} array
    */
	private void orderbyRating(int start, int end) {
		if (start-end < 20)
			for(int i = 0; i < currentSize-1; i++) {
				for (int j = i; j < currentSize; j++) {
					// if videos[j] > videos[i]
					if (videos[j].averageRating() > videos[i].averageRating()) { 
						switchPos(i, j);
					}
				}
			}
		else {
			int posPivot = partition(start, end); 
			orderbyRating(start, posPivot);
			if (posPivot+1 < end)
				orderbyRating(posPivot+1, end);	
		}
	}
	/**
	 * Helper function for Quick Sort. Returns new pivot position.
	 * 
	 * @param a {@code Video} array 
	 * @param start index of start position
	 * @param end index of end position
	 * @return new pivot position
	 */
	private int partition(int start, int end) { 
			Video pivot = videos[end-1];
			int i1 = start-1;
			int i2 = end-1;
			while (i1 < i2) { 
				do {
					i1++;
				} while(videos[i1].averageRating() > pivot.averageRating()); // a[i1] > a[pivot]
				do {
					i2--;
				} while(i2 > start && (videos[i2].averageRating() < pivot.averageRating())); // a[i2] < a[pivot]
				if (i1 < i2) {
					switchPos(i1, i2);
				}
			}
				
			switchPos(i1, end-1);
			return i1; 
		}

	/**
	 *  Checks whether there is a video with the given ID number
	 * @param videoID ID of the video
	 * @return the index at which the person first appears; if there isn't such a video, returns flag value -1
	 */
	public int contains(int videoID) {
		int videoIndex = -1;
		for(int i = 0; i < currentSize && videoIndex == -1; i++) {
			if (videos[i].getID() == videoID) videoIndex = i;
		}
		return videoIndex;
	}
	/**
	 *  Check whether the {@code Video} array is full
	 * @return true if the array is currently full
	 */
	public boolean isFull() {
		return currentSize == videos.length;
	}
		
	@Override
	public String toString() {
		String s = "\tVideos\n---------------------------------------------\n\n";
		for(int i = 0; i < currentSize; i++) {
			s += videos[i] + "\n";
		}
		return s;
	}
    /* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + currentSize;
		result = prime * result + incrementSize;
		result = prime * result + Arrays.hashCode(videos);
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		VideoCatalog other = (VideoCatalog) obj;
		if (currentSize != other.currentSize) {
			return false;
		}
		if (incrementSize != other.incrementSize) {
			return false;
		}
		if (!Arrays.equals(videos, other.videos)) {
			return false;
		}
		return true;
	}
	
	
	
	/**
	 *  Expands the video's array by incrementSize
	 */
	private void expandArray() {
		Video[] temp = new Video[currentSize + incrementSize];
		System.arraycopy(videos, 0, temp, 0, currentSize);
		videos = temp;
	}
	/**
	 *  Switches the position of two array items
	 * @param indexOne
	 * @param indexTwo
	 */
	private void switchPos(int indexOne, int indexTwo) {
		Video temp = videos[indexOne];
		videos[indexOne] = videos[indexTwo];
		videos[indexTwo] = temp;
	}
}
