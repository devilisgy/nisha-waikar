package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SuccessPaymentDao;
import com.pojos.AdminList;
import com.pojos.BookingDetails;
import com.pojos.PaymentReport;

/**
 * Servlet implementation class SuccessPayment
 */
public class SuccessPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SuccessPaymentDao paymentDao = new SuccessPaymentDao();
		String msg;
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String bank = request.getParameter("banks");
		String card = request.getParameter("cardNo");

		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String date = request.getParameter("date");
		int persons = Integer.parseInt(request.getParameter("persons"));
		float price = Float.parseFloat(request.getParameter("price"));
		float amount = Float.parseFloat(request.getParameter("amount"));

		System.out.println("from"+from+"to "+to+"date"+date);
		PaymentReport paymentReport = new PaymentReport();
		paymentReport.setName(name);
		paymentReport.setEmail(email);
		paymentReport.setBank(bank);
		paymentReport.setCard(card);

		paymentReport.setFromPlace(from);
		paymentReport.setToPlace(to);
		paymentReport.setDate(date);
		paymentReport.setPersons(persons);
		paymentReport.setPrice(price);
		paymentReport.setAmount(amount);
		
		
		
		boolean payment = paymentDao.successPayment(paymentReport);
		List<PaymentReport> allbookings = paymentDao.getAllbookings();
		
		if (payment) {

			msg = "Ticket booked Successfully";

		} else {
			msg = "Ticket not booked Successfully";
		}
		request.setAttribute("Bookmsg", msg);
		request.setAttribute("status", "Booked");
		request.setAttribute("Booking", allbookings);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/PrintDashboard.jsp");
		requestDispatcher.forward(request, response);
		
		

	}

}
