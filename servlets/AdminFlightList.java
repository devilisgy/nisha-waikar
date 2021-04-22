package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminListFlightImpl;
import com.pojos.AdminList;

/**
 * Servlet implementation class AdminFlightList
 */
public class AdminFlightList extends HttpServlet {
	private static final long serialVersionUID = 1L;

@Override
/*
 * protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
 * ServletException, IOException { doPost(req, resp); }
 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminListFlightImpl flight = new AdminListFlightImpl();
		String Flightmsg;

		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String date = request.getParameter("date");
		String price = request.getParameter("price");

		AdminList list = new AdminList();

		list.setFrom(from);
		list.setTo(to);
		list.setDate(date);
		list.setPrice(price);

		 List<AdminList> adminlist = flight.getAllFlights();
		boolean saveUser = flight.addFlights(list);
		if (saveUser) {

			Flightmsg = "Record saved Successfully";

		} else {
			Flightmsg = "Record not saved Successfully";
		}

		request.setAttribute("Flightmsg", Flightmsg);
		request.setAttribute("adminList", adminlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/FlightBookAdmin.jsp");
		requestDispatcher.forward(request, response);
		System.out.println("Calling From AdminFLightServlet " + from + " " + to + " " + date + " " + price);
		System.out.println(adminlist);
	}

}
