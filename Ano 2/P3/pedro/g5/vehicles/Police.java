package g5.vehicles;

/**
 * Police
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public interface Police {

	/**
	 * @return the type of the Police vehicle
	 * @see PoliceType
	 */
	public PoliceType getType();

	/**
	 * @return the ID (String in the format {@code type of the Police Vehicle#ID number})
	 */
	public String getID();

}
