package g5.vehicles;

/**
 * CarPolice
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class CarPolice extends Car implements Police {
	// Static Fields
	private static int nextID = 0;

	// Instance Fields
	private String id;
	private PoliceType policeType; 

	// Constructor
	/**
	 * Constructor
	 * @param year
	 * @param color
	 * @param numWheels
	 * @param maxSpeed
	 * @param motor
	 * @param policeType
	 */
	public CarPolice(int year, String color, int numWheels, int maxSpeed, Motor motor, PoliceType policeType) {
		super(year, color, numWheels, maxSpeed, motor);
		this.policeType = policeType;
		nextID++;
		id   = policeType + "#" + nextID;
	}

	// Getters
	@Override
	public PoliceType getType() {
		return policeType;
	}

	@Override
	public String getID() {
		return id;
	}

	// Methods
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(super.toString());
		builder.append("\n\tPolice info:");
		builder.append("\n\t\tType: ");
		builder.append(policeType);
		builder.append("\n\t\tID ");
		builder.append(id);
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((policeType == null) ? 0 : policeType.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!super.equals(obj)) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		CarPolice other = (CarPolice) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		if (policeType == null) {
			if (other.policeType != null) {
				return false;
			}
		} else if (!policeType.equals(other.policeType)) {
			return false;
		}
		return true;
	}
}
