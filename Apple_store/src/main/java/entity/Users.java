package entity;

import java.util.Random;

public class Users {
	private int id;
	private String name;
	private String username;
	private String email;
	private String phone;
	private String pass;
	private String repass;
	private int isVerify;
	private int isUser;
	private int isAdmin;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}
	
	public Users(int id, String name, String username, String email, String phone, String pass, String repass, int isVerify, int isUser, int isAdmin) {
		
		this.id = id;
		this.name = name;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.pass = pass;
		this.repass = repass;
		this.isVerify = isVerify;
		this.isUser = isUser;
		this.isAdmin = isAdmin;
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRepass() {
		return repass;
	}
	public void setRepass(String repass) {
		this.repass = repass;
	}
	public int getIsVerify() {
		return isVerify;
	}
	public void setIsVerify(int isVerify) {
		this.isVerify = isVerify;
	}
	public int getIsUser() {
		return isUser;
	}
	public void setIsUser(int isUser) {
		this.isUser = isUser;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public int getRandom() {
		Random ran = new Random();
		int num = ran.nextInt(999999);
		return num;
	}
	
	@Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", username=" + username + ", email=" + email + ", phone=" + phone
				+ ", pass=" + pass + ", repass=" + repass + ", isVerify=" + isVerify + ", isUser=" + isUser
				+ ", isAdmin=" + isAdmin + "]";
	}
	
	
	
	
}
