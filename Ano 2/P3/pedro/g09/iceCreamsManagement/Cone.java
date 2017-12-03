package g09.iceCreamsManagement;

/**
 * Cone
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Cone extends GeladoDecorator {

	// No fields (they are inherited)

	// Constructor
	/**
	 * Constructor
	 * @param g
	 */
	public Cone(Gelado g) {
		super(g);
	}

	// Methods
	@Override
	public String toString() {
		return g.toString() + " em cone";
	}

}
