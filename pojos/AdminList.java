package com.pojos;

public class AdminList {
	
	private int id;
	private String from;
	private String to;
	private String date;
	private String price;
	
	public AdminList() {
		
	}
	public AdminList(String from, String to, String date, String price) {

		this.from = from;
		this.to = to;
		this.date = date;
		this.price = price;
	}
	
	public AdminList(int id, String from, String to, String date, String price) {
		super();
		this.id = id;
		this.from = from;
		this.to = to;
		this.date = date;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "AdminList [id=" + id + ", from=" + from + ", to=" + to + ", date=" + date + ", price=" + price + "]";
	}
	
	

}
