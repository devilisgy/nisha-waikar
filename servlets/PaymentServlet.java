package com.servlets;

import java.io.IOException;

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
 * Servlet implementation class PaymentServlet
 */
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showflight(request, response);
		
	}
	private void showflight(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			BookTicketDaoImp payment = new BookTicketDaoImp();
		
	    int id = Integer.parseInt(request.getParameter("id"));
		
				 BookingDetails paymentdetails = payment.getbookingDetails(id);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("Payment.jsp");
				request.setAttribute("payment", paymentdetails);
		        dispatcher.forward(request, response);
}
}
