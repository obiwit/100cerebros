package aula3.prob4;

import java.util.Scanner;

import aula1.prob2.Data;

public class VideoClub {

	// Fields
	private int clientNum;
	private Users clients;
	private VideoCatalog catalog;
	private int maxCheckOutMovies;
	
	// Static Fields
	static Scanner sc = new Scanner(System.in);
	
	
	// Constructor
	/**
	 * Creates a new {@code VideoClub} Object
	 * @param n maximum number of videos a client can check-out
	 */
	public VideoClub(int n) {
		clientNum = 0;
		clients = new Users();
		catalog = new VideoCatalog();
		maxCheckOutMovies = n;
	}
	
	// Methods
	/**
	 * Runs the Video Club, allowing the user to add and remove clients, movies, and check movies in and out.
	 */
	public void run() {
		int option = 0;
		
		do {
			try {
				printMenu();
				option = Integer.parseInt(sc.nextLine());

				switch (option) {
				case 1: // add a new client
					addNewClient();
					break;
					
				case 2: // remove a client
					removeClient();
					break;
					
				case 3: // add a new movie to the catalog
					addMovie();
					break;
					
				case 4: // remove a movie from the catalog
					removeMovie();
					break;
					
				case 5: // check if a movie is available
					isVideoAvailable();
					break;
					
				case 6: // check-out a movie (if possible)
					checkOutVideo();
					break;
					
				case 7: // check-in a movie (if possible)
					checkInVideo();
					break;
				case 8:
					System.out.println(catalog);
					break;

				case 9:
					listHistory(getClient());
					break;
					
				default:
					System.out.println("| ------------------- Invalid option!! ---- |\n");
				}
			} catch (Exception e) {
				System.out.println("\nSorry, you made a mistake. \n\n");
			}
		} while(option != 10);

	}
	
	/**
	 * "Non-functional" function, left here simply as a way of allowing the teacher to test the VideoClub directly 
	 * if they so wish.
	 */
	public void test() {
		clients.add(new Student("Jota", 1234, new Data(13, 2, 1967), 567890, new Data(5, 7, 1990), 67584, 8240));
		Client client = new Staff("Possa", 98765, new Data(8, 9, 1956), 32942, new Data(8, 10, 1967), 90, 1);
		clients.add(client);
		//System.out.println(clients);

		catalog.addVideo(new Video("O Regresso das Batatas", "Romance", VideoAge.M18));
		catalog.addVideo(new Video("O Regresso das Leguminosas", "Comedia", VideoAge.M12));
		catalog.addVideo(new Video("O Regresso do Java", "Acao", VideoAge.M6));
		catalog.addVideo(new Video("Canecas - como o papel nos trouxe argila", "Documentario", VideoAge.M16));
		Video video = new Video("Jawa 3", "Horror", VideoAge.ALL);
		catalog.addVideo(video);
		//System.out.println(catalog);
		
		int videoID = video.getID();
		client.checkOutVideo(videoID);
		video.checkOut();
		client.checkInVideo(videoID);
		video.checkIn(3.5);
		
		for (int i = 0; i < 5; i++) {
			Video temp = catalog.getVideo(i);
			client.checkOutVideo(i); // i = temp.getID()
			temp.checkOut();
			client.checkInVideo(i);
			temp.checkIn((int)(5*Math.random()*100)/100.0); // generate random ratings (with 2 decimal places, purely for esthetic reasons)
		}
		
		//System.out.println("Client's (compact) history: " + client.getCheckOutHistory() + "\n");
		//listHistory(client);
		

		client.checkOutVideo(video.getID());
		video.checkOut();
		//System.out.println("Number of client's currently checked-in videos: " + client.currentlyCheckedOutVideos() + "\n");
		
		//catalog.sort();
		//System.out.println(catalog);
	}
	
	/**
	 * Creates a new client (either student or staff), and adds them to the clients list.
	 * Uses the console to get information on a new client from the user.
	 */
	private void addNewClient() {
		System.out.print("\tIs the new user a student? (y/n) ");
		String isStudent = sc.nextLine().trim().toUpperCase();
		
		// get common traits
		System.out.print("\n\tFirst and last names of the person? ");
		String name = sc.nextLine();
		
		System.out.print("\n\tID number (cc) of the person? ");
		int id = Integer.parseInt(sc.nextLine());
		
		Data birthDay = getDate("\n\tBirthdate of the person (DD/MM/YYYY)? ");
		
		int clientID = clientNum++;
		
		Data signUpDate = getDate("\n\tToday's date (DD/MM/YYYY)? ");
		
		// get specific student or staff traits
		if (isStudent.equals("Y") || isStudent.equals("YES")) {
			addStudent(name, id, birthDay, clientID, signUpDate);
		} else {
			addStaff(name, id, birthDay, clientID, signUpDate);
		}
	}
	
	/**
	 * Removes a client from the clients list. 
	 * Uses the console to get the client's ID from the user.
	 */
	private void removeClient() {
		System.out.print("\tUser ID: ");
		int removeID = Integer.parseInt(sc.nextLine());
		clients.remove(removeID);
	}

	/**
	 * Creates a new movie and adds it to the movies catalog.
	 * Uses the console to get information on a new movie from the user. 
	 */
	private void addMovie() {
		System.out.print("\tMovie name: ");
		String videoName = sc.nextLine();
		System.out.print("\tMovie category: ");
		String videoCategory = sc.nextLine();
		VideoAge videoAge = getVideoAge();
		
		catalog.addVideo(new Video(videoName, videoCategory, videoAge));
	}
	
	/**
	 * Removes a movie from the movies catalog.
	 * Uses the console to get information on the movie from the user.
	 */
	private void removeMovie() {
		System.out.print("\tID of the movie to remove: ");
		int videoID = Integer.parseInt(sc.nextLine());
		catalog.removeVideo(videoID);
	}
	
	/**
	 * Prints on the console whether a given video is available or not.
	 * Uses the console to get information on the movie from the user.
	 */
	private void isVideoAvailable() {
		System.out.print("\tMovie ID: ");
		int videoID = Integer.parseInt(sc.nextLine());
		if (catalog.getVideo(videoID).isAvailable()) {
			System.out.println("In stock!");
		} else {
			System.out.println("Currently unavailable :/");
		}
	}
	
	/**
	 * Checks-out a video from the catalog, if it is available.
	 */
	private void checkOutVideo() {
		// get video to check out
		System.out.print("\tMovie ID: ");
		int videoID = Integer.parseInt(sc.nextLine());
		Video vid = catalog.getVideo(videoID);
		if (vid.isAvailable()) {
			// get client who is checking video out
			Client client = getClient();
			// if client has not exceed max number of rentals, check video out
			if (client.currentlyCheckedOutVideos() <= maxCheckOutMovies) {
				getClient().checkOutVideo(videoID);
				vid.checkOut();
				System.out.println("Sucess - Video is now checked-out :)");
			} else {
				System.out.println("Failure - You can't check-out any more videos without check a video in first :/");
			}
		} else {
			System.out.println("Failure - Video is currently checked-out :/");
		}
	}
	
	/**
	 * Checks-out a video from the catalog, if it was previously checked-out.
	 */
	private void checkInVideo() {
		// get movie
		System.out.print("\tMovie ID: ");
		int videoID = Integer.parseInt(sc.nextLine());
		Video vid = catalog.getVideo(videoID);
		if (!vid.isAvailable()) {
			// if movie is available, get client
			getClient().checkInVideo(videoID);
			vid.checkIn(getVideoRating());
		} else {
			System.out.println("Failure - Video is currently checked-in :/");
		}
	}
	
	/**
	 * Prints on the console a list of every video the client's rented
	 * @param client
	 */
	private void listHistory(Client client) {
		System.out.println("Client's History --------------------------\n");
		for(int i : client.getCheckOutHistory()) {
			System.out.println(catalog.getVideo(i) + "\n");
		}
		System.out.println("End of Client's History -------------------\n\n");
	}
	
	/**
	 * Adds a new client, of the student type, getting the required information from the user via the console.
	 * @param name Name of the client
	 * @param id ID (cc) of the client
	 * @param birthDay Birth date of the client
	 * @param clientID Unique Client ID
	 * @param signUpDate The Sign Up Date of the client
	 */
	private void addStudent(String name, int id, Data birthDay, int clientID, Data signUpDate) {
		System.out.print("\n\tYour student ID number? ");
		int studentID = Integer.parseInt(sc.nextLine());
		
		System.out.print("\n\tYour course number? ");
		int course = Integer.parseInt(sc.nextLine());	
		
		clients.add(new Student(name, id, birthDay, clientID, signUpDate, studentID, course));

	}
	
	/**
	 * Adds a new client, of the staff type, getting the required information from the user via the console.
	 * @param name Name of the client
	 * @param id ID (cc) of the client
	 * @param birthDay Birth date of the client
	 * @param clientID Unique Client ID
	 * @param signUpDate The Sign Up Date of the client
	 */
	private void addStaff(String name, int id, Data birthDay, int clientID, Data signUpDate) {
		System.out.print("\n\tYour worker ID number? ");
		int staffID = Integer.parseInt(sc.nextLine());
		
		System.out.print("\n\tYour NIB? ");
		int nib = Integer.parseInt(sc.nextLine());	
		
		clients.add(new Staff(name, id, birthDay, clientID, signUpDate, staffID, nib));

	}
	
	/**
	 * Gets a video's rating from the user, using the console.
	 * @return
	 */
	private double getVideoRating() {
		System.out.print("Please rate the video from 0 to 5 (non-whole numbers are okay): ");
		return Double.parseDouble(sc.nextLine());
	}
	
	/**
	 * Gets a client from the user, via their ID, using the console
	 * @return
	 */
	private Client getClient() {
		System.out.print("\tYour Client ID: ");
		return clients.get(Integer.parseInt(sc.nextLine()));
	}
	
	
	
	
	// Static Methods
	/**
	 * Uses the console to get the Video Age Rating from the user
	 * @return Video Age Rating (enum type)
	 */
	private static VideoAge getVideoAge() {
		System.out.println("\tMovie age rating: ");
		System.out.println("\t\tALL (default)");
		System.out.println("\t\tM6  (1)");
		System.out.println("\t\tM12 (2)");
		System.out.println("\t\tM16 (3)");
		System.out.println("\t\tM18 (4)");
		System.out.print("\t\tYour option: ");
		int option = Integer.parseInt(sc.nextLine());

		VideoAge videoAge;
		switch (option) {
			case 1:
				videoAge = VideoAge.M6;
				break;
			case 2:
				videoAge = VideoAge.M12;
				break;
			case 3:
				videoAge = VideoAge.M16;
				break;
			case 4:
				videoAge = VideoAge.M18;
				break;
			default:
				videoAge = VideoAge.ALL;
		}
		
		return videoAge;
	}

	/**
	 * Gets a date from the user, via the console.
	 * @param prompt Prompt to display to the user. Should indicate what date you want (i.e. today's date, birth date, etc.)
	 * @return a Data object with the date given by the user
	 */
	private static Data getDate(String prompt) throws IllegalArgumentException {
		System.out.print(prompt);
		String[] birthdate = sc.nextLine().split("/");
		int bDay = Integer.parseInt(birthdate[0]);
		int bMonth = Integer.parseInt(birthdate[1]);
		int bYear = Integer.parseInt(birthdate[2]);
		
		if (!Data.validDate(bDay, bMonth, bYear)) {
			throw(new IllegalArgumentException());
		}
		
		return new Data(bDay, bMonth, bYear);
	}
	
	/**
	 * Prints a menu on the console that list the options the Video Club offers to the user.
	 */
	private static void printMenu() {
		System.out.println("\n-------- MOVIES -----------------------------");
		System.out.println("| Add a new person to the list          (1) |");
		System.out.println("| Remove a person from the list         (2) |");
		System.out.println("| Add a new movie to the catalog        (3) |");
		System.out.println("| Remove a movie from the catalog       (4) |");
		System.out.println("| Check if a movie is available         (5) |");
		System.out.println("| Check-out a movie                     (6) |");
		System.out.println("| Check-in a movie                      (7) |");
		System.out.println("| List movies (and their ratings)       (8) |");
		System.out.println("| List movies a given client has rented (9) |");
		System.out.println("| Quit                                  (10) |");
		System.out.println("---------------------------------------------");
		System.out.print("| Option -> ");
	}
}