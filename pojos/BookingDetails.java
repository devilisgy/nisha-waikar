package com.pojos;

public class BookingDetails {
	
	
	private int id;
	private String fromPlace;
	private String toPlace;
	private String date;

	private int persons;
	private float price;
	private float amount;
	public BookingDetails() {
		
	}
	public BookingDetails(int id, String fromPlace, String toPlace, String date, int persons, float price,float amount) {
		super();
		this.id = id;
		this.fromPlace = fromPlace;
		this.toPlace = toPlace;
		this.date = date;
		this.persons = persons;
		this.price = price;
		this.amount = amount;
	}
	public BookingDetails(int id, String fromPlace, String toPlace, String date, int persons, float amount) {
		super();
		this.id = id;
		this.fromPlace = fromPlace;
		this.toPlace = toPlace;
		this.date = date;
		this.persons = persons;
		this.amount = amount;
	}
	public BookingDetails( String fromPlace, String toPlace, String date, int persons, float amount) {
		super();
		
		this.fromPlace = fromPlace;
		this.toPlace = toPlace;
		this.date = date;
		this.persons = persons;
		this.amount = amount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFromPlace() {
		return fromPlace;
	}
	public void setFromPlace(String fromPlace) {
		this.fromPlace = fromPlace;
	}
	public String getToPlace() {
		return toPlace;
	}
	public void setToPlace(String toPlace) {
		this.toPlace = toPlace;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPersons() {
		return persons;
	}
	public void setPersons(int persons) {
		this.persons = persons;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		
		
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "BookingDetails [id=" + id + ", fromPlace=" + fromPlace + ", toPlace=" + toPlace + ", date=" + date
				+ ", persons=" + persons + ", price=" + price + ", amount=" + amount + "]";
	}
	



}
