package aula12.prob2.reflection;

import aula12.prob2.IPlugin;

public class AwesomePlugin implements IPlugin{
	public void fazQualQuerCoisa() {
		System.out.println("I'm awesome");
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "awesome plugin";
	}
}
