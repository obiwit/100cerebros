// Used Data class created in lesson 3

public class Pessoa implements Comparable<Pessoa> {

// --- VARIABLES ---
	private Data birthDay;
	private String name;
	
// --- CONSTRUCTORS ---
	public Pessoa(Data birthDay, String name) {
		this.birthDay = birthDay;
		this.name = name;
	}
	
// --- GETTERS AND SETTERS ---
	public Data birthDay() { return birthDay; }
	
	public String name() { return name; }
	
	public void setBirthDay(Data d) {
		this.birthDay = d;
	}
	
	public void setName(String s) {
		this.name = s;
	}
	
	public String toString(Data birthDay, String name) {
		return "(" + name + "," + birthDay + ")";
}

// --- METHODS ---
	public int compareTo(Pessoa p) {
		if (this.birthDay.mes() < p.birthDay.mes()) {
			return -1;
		}
		else if (this.birthDay.mes() == p.birthDay.mes()) {
			if ( this.birthDay.dia() < p.birthDay.dia()) {
				return -1;
			}
			else if ( this.birthDay.dia() == p.birthDay.dia()) {
				return 0;
			}
			else {
				return 1;
			}
		}
		return 1;
	}

}

