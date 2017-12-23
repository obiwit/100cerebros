package aula12.prob3;

public interface ContactPlugin {
	public PersonArray loadFile(String filepath);
	public void saveFile(PersonArray contacts, String filepath);
	public boolean isValidFile(String filepath);
}
