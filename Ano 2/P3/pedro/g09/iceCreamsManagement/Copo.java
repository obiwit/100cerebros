package g09.iceCreamsManagement;

/**
 * Copo
 * 
 * @author Pedro Teixeira, 84715, MIECT
 */

public class Copo extends GeladoDecorator {

	// No Fields (inherited)

	// Constructor
	/**
	 * 
	 * Constructor
	 * @param g
	 */
	public Copo (Gelado g) {
		super(g);
	}

	// Methods 
	@Override
	public String toString() {
		return g.toString() + " em copo";	// possible because g is a field with protected visibility
	}

}
