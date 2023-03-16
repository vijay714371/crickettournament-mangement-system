package com.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Players {
	@Id
	@GeneratedValue
	private int player_Id;
	private String Player_name;
	private String team_name;
	private String Player_role;
	private String Player_image;
	private Date date;
	
	
	
	/**
	 * @param player_Id
	 * @param player_name
	 * @param team_name
	 * @param player_role
	 * @param player_image
	 * @param date
	 */
	public Players(int player_Id, String player_name, String team_name, String player_role, String player_image,
			Date date) {
		super();
		this.player_Id = player_Id;
		Player_name = player_name;
		this.team_name = team_name;
		Player_role = player_role;
		Player_image = player_image;
		this.date = date;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	/**
	 * @param player_Id
	 * @param player_name
	 * @param team_name
	 * @param player_role
	 * @param player_image
	 * @param date
	 */
	
	
	public int getPlayer_Id() {
		return player_Id;
	}
	public void setPlayer_Id(int player_Id) {
		this.player_Id = player_Id;
	}
	public String getPlayer_name() {
		return Player_name;
	}
	public void setPlayer_name(String player_name) {
		Player_name = player_name;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getPlayer_role() {
		return Player_role;
	}
	public void setPlayer_role(String player_role) {
		Player_role = player_role;
	}
	public String getPlayer_image() {
		return Player_image;
	}
	public void setPlayer_image(String player_image) {
		Player_image = player_image;
	}
	/**
	 * @param player_Id
	 * @param player_name
	 * @param team_name
	 * @param player_role
	 * @param player_image
	 */
	public Players(String player_name, String team_name, String player_role, String player_image) {
		super();
		
		Player_name = player_name;
		this.team_name = team_name;
		Player_role = player_role;
		Player_image = player_image;
	}
	/**
	 * 
	 */
	public Players() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
