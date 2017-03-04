package pt.ua.prog2;

public class Contacto {
	
	private String nome;
	private String telefone;
	private String email;
	public static int COUNT;
	
	public Contacto() {
		//setCount(COUNT);
		COUNT++;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getCount() {
		return COUNT;
	}
	
	public void setCount(int count) {
		COUNT = count++;
	}
}

