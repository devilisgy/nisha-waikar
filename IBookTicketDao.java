package com.dao;

import java.util.List;

import com.pojos.BookingDetails;

public interface IBookTicketDao {
	
	public boolean bookTicket(BookingDetails bookinfDetails);
    public List<BookingDetails> getAllFlights();

}
