package aula3.prob1;


public class Staff extends Pessoa {

	// Fields
	private final int staffID;
	private final int nif;

	// Constructors
	public Staff(String name, int cc, Data bDate, Data signUpDate, int staffID, int nif) {
		super(name, cc, bDate, signUpDate);
		this.staffID = staffID;
		this.nif = nif;
	}
	
	// Methods
	
	@Override
	public String toString() {
		return super.toString() + "\nStaff ID: " + staffID + "\nNIF: " + nif;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + nif;
		result = prime * result + staffID;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Staff other = (Staff) obj;
		if (staffID != other.staffID)
			return false;
		return true;
	}
	
	

}
