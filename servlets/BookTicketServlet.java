package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminListFlightImpl;
import com.dao.BookTicketDaoImp;
import com.pojos.AdminList;
import com.pojos.BookingDetails;

/**
 * Servlet implementation class BookTicketServlet
 */
public class BookTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookTicketDaoImp bookTicket = new BookTicketDaoImp();
		String BookingMessage;
		
		String from = request.getParameter("fromPlace");
		String to = request.getParameter("toPlace");
		String date = request.getParameter("date");
		int persons = Integer.parseInt(request.getParameter("persons"));
		float price = Float.parseFloat(request.getParameter("price"));
		float amount = persons*price;
		System.out.println(price);
		BookingDetails details = new BookingDetails();
		details.setFromPlace(from);
		details.setToPlace(to);
		details.setDate(date);
		details.setPersons(persons);
		details.setPrice(price);
		details.setAmount(amount);
		
		boolean booked = bookTicket.bookTicket(details);
		List<BookingDetails> allBooking = bookTicket.getAllFlights();
		
		if (booked) {

			BookingMessage = "Record saved Successfully";

		} else {
			BookingMessage = "Record not saved Successfully";
		}
		request.setAttribute("Bookmsg", BookingMessage);
		request.setAttribute("Booking", allBooking);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/BookingDashboard.jsp");
		requestDispatcher.forward(request, response);
		
	}
	
	
	/*
	 * private void showbooking(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { AdminListFlightImpl
	 * flightdetails = new AdminListFlightImpl();
	 * 
	 * int id = Integer.parseInt(request.getParameter("id"));
	 * 
	 * AdminList flightlist = flightdetails.getflightDetails(id);
	 * 
	 * RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("userflightbooking.jsp");
	 * request.setAttribute("flightlist", flightlist); dispatcher.forward(request,
	 * response); }
	 */

}
