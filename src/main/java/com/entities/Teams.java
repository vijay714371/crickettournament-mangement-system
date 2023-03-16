package com.entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="Teams")
public class Teams {
	@Id
	@GeneratedValue
	private int team_id;
	private String team_name;
	private String team_shortname;
	private String team_city;
	
	private String image;
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getTeam_shortname() {
		return team_shortname;
	}
	public void setTeam_shortname(String team_shortname) {
		this.team_shortname = team_shortname;
	}
	public String getTeam_city() {
		return team_city;
	}
	public void setTeam_city(String team_city) {
		this.team_city = team_city;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @param team_id
	 * @param team_name
	 * @param team_shortname
	 * @param team_city
	 * @param image
	 */
	public Teams( String team_name, String team_shortname, String team_city, String image) {
		super();
		
		this.team_name = team_name;
		this.team_shortname = team_shortname;
		this.team_city = team_city;
		this.image = image;
	}
	/**
	 * 
	 */
	public Teams() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
