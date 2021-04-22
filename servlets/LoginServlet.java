package com.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminListFlightImpl;
import com.dao.UserDaoImpl;
import com.pojos.AdminList;
import com.pojos.Users;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = null;
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");

		UserDaoImpl login = new UserDaoImpl();
		AdminListFlightImpl flight = new AdminListFlightImpl();
		List<AdminList> adminlist = flight.getAllFlights();

		Users Login;
		try {
			Login = login.validateUser(email, pwd);
			boolean adminlogin = login.validateadmni(email, pwd);
			//ArrayList<Orders> orders = null;
			
			if(adminlogin) {
				HttpSession session = req.getSession();
	            session.setAttribute("user", "Admin");
	            req.setAttribute("adminList", adminlist);
				req.setAttribute("loginmsg", "Login Success");
				requestDispatcher = req.getRequestDispatcher("FlightBookAdmin.jsp");
			}

			else if (Login != null) {

				//orders = new OrderService().getOrders();
				//System.out.println(orders);
				//req.setAttribute("orderlist", orders);
				HttpSession session = req.getSession();
	            session.setAttribute("user", email);
	            req.setAttribute("adminList", adminlist);
				req.setAttribute("loginmsg", "Login Success");
				requestDispatcher = req.getRequestDispatcher("Dashboard.jsp");

			} else {
				//req.setAttribute("orderlist", orders);
				req.setAttribute("loginmsg", "Invalid Credentials");
				requestDispatcher = req.getRequestDispatcher("/login.jsp");

			}
			requestDispatcher.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



	}
}
