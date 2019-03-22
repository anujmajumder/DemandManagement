package bean;


public class LoginBean {
	public LoginBean()
	{
		
	}
	
	private String email,password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		System.out.println("login bean email "+ email);
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		System.out.println("login bean pass"+ password);
		this.password = password;
	}

}
