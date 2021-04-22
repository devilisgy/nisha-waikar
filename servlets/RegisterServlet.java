package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminListFlightImpl;
import com.dao.UserDaoImpl;
import com.pojos.AdminList;
import com.pojos.Users;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		AdminListFlightImpl flight = new AdminListFlightImpl();
		String msg;
	
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String phoneNumber = request.getParameter("phoneNumber");
		String birthDate = request.getParameter("birthDate");
		String gender = request.getParameter("gender");
		
		Users users = new Users();
		users.setFirstName(firstName);
		users.setLastName(lastName);
		users.setEmail(email);
		users.setPassword(password);
		users.setConfirmPassword(confirmPassword);
		users.setPhoneNumber(phoneNumber);
		users.setBirthDate(birthDate);
		users.setGender(gender);
		boolean saveUser = userDaoImpl.addUser(users);
		
		 List<AdminList> adminlist = flight.getAllFlights();
		
		if (saveUser) {

			msg = "User saved Successfully";
			
		} else {
			msg = "User not saved Successfully";
		}
		
		

		request.setAttribute("msg", msg);
		request.setAttribute("adminList", adminlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Dashboard.jsp");
		requestDispatcher.forward(request, response);
		System.out.println("Calling From RegisterServlet "+firstName+" "+lastName+" "+email+" "+password+" "+confirmPassword+" "+phoneNumber+" "+birthDate+" "+gender);
		System.out.println(adminlist);
	}




}
