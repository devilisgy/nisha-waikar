package com.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminListFlightImpl;
import com.pojos.AdminList;

/**
 * Servlet implementation class BookingServlet
 */
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

			showflight(request, response);

			
			
		}
	    
			
private void showflight(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			AdminListFlightImpl flightdetails = new AdminListFlightImpl();
			
		    int id = Integer.parseInt(request.getParameter("id"));
			
					AdminList flightlist = flightdetails.getflightDetails(id);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("userflightbooking.jsp");
					request.setAttribute("flightlist", flightlist);
			        dispatcher.forward(request, response);
}
	        
	 
	    
}





