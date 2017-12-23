package aula12.prob2.reflection;

import aula12.prob2.IPlugin;

public class GreatPlugin implements IPlugin{
	public void fazQualQuerCoisa() {
		System.out.println("I'm great");
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "great plugin";
	}
}
