package aula12.prob2.reflection;

import aula12.prob2.IPlugin;

public class ExcellentPlugin implements IPlugin{
	public void fazQualQuerCoisa() {
		System.out.println("I'm excellent");
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "excellent plugin";
	}
}
