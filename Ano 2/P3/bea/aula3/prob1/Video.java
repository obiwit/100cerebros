package aula3.prob1;

public class Video {
	// Static Fields
	private static int vidNum = 0;
	
	// Fields
	private int videoID;
	private String title;
	private String category;
	private VideoAge videoAge;
	private boolean checkedIn;
	private double totalRating;
	private int ratingsNum;

	// Constructors
	public Video(String title, String category, VideoAge videoAge) {
		videoID = vidNum++;
		this.title = title;
		this.category = category;
		this.videoAge = videoAge;
		checkedIn = true;
		totalRating = ratingsNum = 0;
	}
	
	// Methods
	/**
	 * Checks if a video is available
	 */
	public boolean isAvailable() {
		return checkedIn;
	}
	/**
	 * Check-out a video
	 */
	public void checkOut() {
		if(isAvailable()) // was previously checked-in
			checkedIn = false;
	}
	/**
	 * Check-in a video
	 */
	public void checkIn(double rating) {
		if(!isAvailable()) { // was previously checked-out
			checkedIn = true;
			totalRating += rating;
			ratingsNum++;
		}
	}
	/**
	 * @return The video's average rating
	 */
	public double averageRating() {
		if (ratingsNum == 0) return 0;
		return totalRating/ratingsNum;
	}
	/**
	 * @return The video's total rating
	 */
	public double totalRating() {
		return totalRating;
	}
	/**
	 * Returns the String version of the object
	 */
	public String toString() {
		return "Video ID: " + videoID + "\nVideo Title: " + title + "\nVideo Category: " + 
						category + "\nVideo Age Rating: "+ videoAge + "\nAvailable (checked-in): " + checkedIn + 
						"\nTotal Rating: " + totalRating + "\nAverage Rating: " + averageRating() + "\n";
	}
	
	public boolean equals(Video v) {
		return (videoID == v.videoID) && title.equals(v.title) && category.equals(v.category)
				&& videoAge.equals(v.videoAge) && (checkedIn == v.checkedIn) && (totalRating == v.totalRating)
				&& (ratingsNum == v.ratingsNum);
	}
	
	// Getters and Setters
	public int getID() {
		return videoID;
	}
	public String getTitle() {
		return title;
	}
	public String getCategory() {
		return category;
	}
	public VideoAge getVideoAge() {
		return videoAge;
	}

}

