package g2.videoManagement;

/**
 * Video
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */
public class Video {
	
	// Static Fields
	private static int nextID = 0;
	
	// Instance Fields
	private int id;
	private String title, category;
	private Age age;
	private boolean available;
	private int totalRating, averageRating, numRatings;
	
	// -------------------------------------
	// Instance Constructors
	/**
	 * 
	 * Constructor
	 * @param title Title of the video
	 * @param category Category of the video
	 * @param age Age Rating of the video
	 */
	public Video(String title, String category, Age age) {
		nextID++;
		id = nextID;
		this.title    = title;
		this.category = category;
		this.age 	  = age;
		available = true;
		totalRating = 0;
		averageRating = 0;
		numRatings = 0;
	}
	
	// -------------------------------------
	// Non-Static Methods
	
	// Getters

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}

	
	/**
	 * @return the age
	 */
	public Age getAge() {
		return age;
	}

	
	/**
	 * @return the available
	 */
	public boolean isAvailable() {
		return available;
	}

	
	/**
	 * @return the averageRating
	 */
	public int getAverageRating() {
		return averageRating;
	}


	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
		s.append("Movie #"+ id + ":\n");
		s.append("\tTitle: " + title);
		s.append("\tCategory: " + category);
		s.append("\tAge: " + age);
		s.append("\tAvailability: " + available);
		s.append("\tAverage Rating: " + averageRating);
		return s.toString();
	}
	
	
	
	// -------------------------------------
	// Setters
	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	
	/**
	 * @param available the available to set
	 */
	public void setAvailable(boolean available) {
		this.available = available;
	}

	
	/**
	 * @param totalRating the totalRating to set
	 */
	public void addRating (int rating) {
		totalRating += rating;
		numRatings++;
		averageRating = totalRating / numRatings;
	}
	
}
