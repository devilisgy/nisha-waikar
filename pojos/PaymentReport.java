package com.pojos;

import java.util.List;

public class PaymentReport {
	
	private int id;
	private String name;
	private String email;
	private String bank;
	private String card;
	
	private String fromPlace;
	private String toPlace;
	private String date;

	private int persons;
	private float price;
	private float amount;
	
	public PaymentReport() {
		
	}

	public PaymentReport(int id, String name, String email, String bank, String card, String fromPlace, String toPlace,
			String date, int persons, float price, float amount) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.bank = bank;
		this.card = card;
		this.fromPlace = fromPlace;
		this.toPlace = toPlace;
		this.date = date;
		this.persons = persons;
		this.price = price;
		this.amount = amount;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
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
		return "PaymentReport [id=" + id + ", name=" + name + ", email=" + email + ", bank=" + bank + ", card=" + card
				+ ", fromPlace=" + fromPlace + ", toPlace=" + toPlace + ", date=" + date + ", persons=" + persons
				+ ", price=" + price + ", amount=" + amount + "]";
	}



	
	

}
