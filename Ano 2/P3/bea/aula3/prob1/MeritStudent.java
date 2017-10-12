package aula3.prob1;

public class MeritStudent extends Student {

	private double scholarshipMoney;
	
	public MeritStudent(String name, int cc, Data bDate, Data signUpDate) {
		super(name, cc, bDate, signUpDate);
	}
	public MeritStudent(String name, int cc, Data bDate) {
		this(name, cc, bDate, Data.today());
		
	}
	
	// Methods

	@Override
	public String toString() {
		return super.toString() + "\nMerit Student - scholarship money: " + scholarshipMoney;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		long temp;
		temp = Double.doubleToLongBits(scholarshipMoney);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		MeritStudent other = (MeritStudent) obj;
		if (Double.doubleToLongBits(scholarshipMoney) != Double.doubleToLongBits(other.scholarshipMoney))
			return false;
		return true;
	}

	
	// Setters and Getters
	public double getScholarshipMoney() {
		return scholarshipMoney;
	}

	public void setScholarshipMoney(double scholarshipMoney) {
		this.scholarshipMoney = scholarshipMoney;
	}
	
}
