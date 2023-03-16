package com.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Schedule {
	@Id
	@GeneratedValue
	private int id;
	private String Team1;
	private String Team2;
	private String date;
	private String Venue;
	private String result;
	/**
	 * 
	 */
	public Schedule() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param team1
	 * @param team2
	 * @param date
	 * @param venue
	 */
	public Schedule(String team1, String team2, String date, String venue) {
		super();
		Team1 = team1;
		Team2 = team2;
		this.date = date;
		Venue = venue;
	}
	
	/**
	 * @param team1
	 * @param team2
	 * @param date
	 * @param venue
	 * @param result
	 */
	public Schedule(String team1, String team2, String date, String venue, String result) {
		super();
		Team1 = team1;
		Team2 = team2;
		this.date = date;
		Venue = venue;
		this.result = result;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeam1() {
		return Team1;
	}
	public void setTeam1(String team1) {
		Team1 = team1;
	}
	public String getTeam2() {
		return Team2;
	}
	public void setTeam2(String team2) {
		Team2 = team2;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getVenue() {
		return Venue;
	}
	public void setVenue(String venue) {
		Venue = venue;
	}
	

}
