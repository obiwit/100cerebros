package aula2.prob1;

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
	
	// toString(), hashCode(), equals()
	public String toString() {
		return "Video ID: " + videoID + "\nVideo Title: " + title + "\nVideo Category: " + 
						category + "\nVideo Age Rating: "+ videoAge + "\nAvailable (checked-in): " + checkedIn + 
						"\nTotal Rating: " + totalRating + "\nAverage Rating: " + averageRating() + "\n";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + (checkedIn ? 1231 : 1237);
		result = prime * result + ratingsNum;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		long temp;
		temp = Double.doubleToLongBits(totalRating);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((videoAge == null) ? 0 : videoAge.hashCode());
		result = prime * result + videoID;
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
		Video other = (Video) obj;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (checkedIn != other.checkedIn)
			return false;
		if (ratingsNum != other.ratingsNum)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (Double.doubleToLongBits(totalRating) != Double.doubleToLongBits(other.totalRating))
			return false;
		if (videoAge != other.videoAge)
			return false;
		if (videoID != other.videoID)
			return false;
		return true;
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

