package data;
import java.io.Serializable;

@SuppressWarnings("serial")
public class Team implements Serializable {

	private int id;

	private String Leader;
	
	private String Phone;
	
	private String Email;
	
	private String Password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLeader() {
		return Leader;
	}

	public void setLeader(String leader) {
		Leader = leader;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
}
