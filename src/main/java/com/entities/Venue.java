package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Venue {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String city;
	@Column(name="state")
	private String country;
	/**
	 * @param country2 
	 * @param city2 
	 * @param name2 
	 * 
	 */

	public int getId() {
		return id;
	}
	/**
	 * @param name
	 * @param city
	 * @param country
	 */
	public Venue(String name, String city, String country) {
		super();
		this.name = name;
		this.city = city;
		this.country = country;
	}
	/**
	 * 
	 */
	public Venue() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	

}
