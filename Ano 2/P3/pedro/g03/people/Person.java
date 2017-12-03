package g03.people;

/**
 * Person
 * 
 * @author Pedro Teixeira 84715
 */

public class Person {

	// Instance Fields
	private String name;
	private int cc;
	private Date birthDate;

	// ---------------------------------------------------
	// Constructor
	/**
	 * 
	 * @param name
	 * @param cc CC Card Number
	 * @param birthDate Birthdate (DD-MM-YYYY) 
	 */
	public Person (String name, int cc, Date birthDate) {
		this.name  = name;
		this.cc   = cc;
		this.birthDate = birthDate;
	}

	// ---------------------------------------------------
	// Getters
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the cc
	 */
	public int getNum() {
		return cc;
	}

	/**
	 * @return the birthDate date
	 */
	public Date getBirthDate() {
		return birthDate;
	}

	@Override
	public String toString() {
		// Used StringBuilder to create the String more effiently (ie without using 
		// concatenation, which means creating several "auxiliary" Strings)
		StringBuilder builder = new StringBuilder();

		builder.append(name);

		builder.append(", CC Card Number ");
		builder.append(cc);

		builder.append(", born in ");
		builder.append(birthDate);

		return builder.toString();
	}

	// ---------------------------------------------------
	// Setters
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param birthDate the birthDate to set
	 */
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	// ---------------------------------------------------
	// Methods
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + cc;
		return result;
	}

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
		Person other = (Person) obj;
		if (cc != other.cc) {
			return false;
		}
		return true;
	}

}
