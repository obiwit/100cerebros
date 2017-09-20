//Used Aula 3 Data class, with adaptations 

public class Pessoa implements Comparable<Pessoa> {
	
	// Fields
	private Data birthDate;
	private String name;

	// Constructor
	
	/**
	 * Constructor
	 * @param argBirthDate : person's birth date (Data) 
	 * @param argName : person's name (String)
	 */
	public Pessoa (Data argBirthDate, String argName) {
		this.birthDate = argBirthDate;
		this.name 	   = argName;
	}
	
	// Getters
	/**
	 * Returns person's birth date
	 * @return person's birth date (Data)
	 */
	public Data birthDate() {
		return this.birthDate;
	}
	
	/**
	 * Returns person's name
	 * @return person's name (String)
	 */
	public String name() {
		return this.name;
	}
	
	/**
	 * Returns person's info
	 * @return birthDate + name
	 */
	public String toString() {
		return "("+ this.birthDate + "," + this.name + ")";			// toString is automatically invoked 
	}
	
	// Methods
	
	/**
	 * Compares this object with the specified object for order. Returns a negative
	 * integer, zero, or a positive integer as this object is less than, equal to, 
	 * or greater than the specified object. 

	 * @param p : person to compare to
	 * @return a negative integer, zero, or a positive integer as this object is less than, equal to, or greater than the specified object. 
	 */
	public int compareTo(Pessoa p){
		//return (int) this.birthDate.differenceDates(p.birthDate());
		return (int) (this.birthDate.convertToDays() - p.birthDate.convertToDays());
	}
}
