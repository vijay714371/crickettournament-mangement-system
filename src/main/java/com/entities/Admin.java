package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Admin {
	@Id
	@GeneratedValue
	private int id;
	private String  username;
	private String useremail;
	private String password;
	/**
	 * 
	 */
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param id
	 * @param username
	 * @param useremail
	 * @param password
	 */
	public Admin(int id, String username, String useremail, String password) {
		super();
		this.id = id;
		this.username = username;
		this.useremail = useremail;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
