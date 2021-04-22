package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jdbcutil.ConnectionManagerImpl;
import com.pojos.Users;

public class UserDaoImpl implements UserDao {

	private Connection connection;
	public UserDaoImpl()
	{
		connection = new ConnectionManagerImpl().getConnection();
		
	}
	public boolean addUser(Users user)
	{
		boolean isUserInserted = false;
		int id = user.getId();
		String firstName = user.getFirstName();
		String lastName = user.getLastName();
		String email = user.getEmail();
		String password = user.getPassword();
		String confirmPassword = user.getConfirmPassword();
		String phoneNumber = user.getPhoneNumber();
		String birthDate = user.getBirthDate();
		String gender = user.getGender();
		

		String sql ="insert into user(firstName, lastName, email, password, confirmPassword,phoneNumber,birthDate,gender) VALUES (?,?,?,?,?,?,?,?)";
		try {
			 	PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1,firstName);
			preparedStatement.setString(2,lastName);
			preparedStatement.setString(3,email);
			preparedStatement.setString(4,password);
			preparedStatement.setString(5,confirmPassword);
			preparedStatement.setString(6,phoneNumber);
			preparedStatement.setString(7,birthDate);
			preparedStatement.setString(8,gender);
			
			
			int value = preparedStatement.executeUpdate();
			
			if(value>0)
				isUserInserted = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	
		return isUserInserted;
	}
	
	public Users validateUser(String email, String password) throws SQLException {
		
		String sql = "select * from `flyway`.`user` where email=? and password=?";

			PreparedStatement prepareStatement = connection
					.prepareStatement(sql);
			prepareStatement.setString(1, email);
			prepareStatement.setString(2, password);
			ResultSet executeQuery = prepareStatement.executeQuery();
			Users user = null;
			System.out.println("From dao"+email+" "+password);
			
			
			 
	        if (executeQuery.next()) {
	            user = new Users();
	            user.setFirstName(executeQuery.getString("firstName"));
	            user.setEmail(email);
	        }
	 
	         

		return user;
	}
	@Override
	public boolean validateadmni(String email, String password) {
		boolean next = false;
		String sql = "select * from `flyway`.`admin` where email=? and password=?";
		try {
			
			PreparedStatement prepareStatement = connection
					.prepareStatement(sql);
			prepareStatement.setString(1, email);
			prepareStatement.setString(2, password);
			ResultSet executeQuery = prepareStatement.executeQuery();
			System.out.println("From dao admin "+email+" "+password);
			next = executeQuery.next();
			System.out.println(next);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return next;
	}


	/*
	 * @Override public boolean updateUser(int id) {
	 * 
	 * return false; }
	 * 
	 * @Override public boolean deleteUser(int id) {
	 * 
	 * return false; }
	 * 
	 * @Override public Users searchUser(int id) {
	 * 
	 * return null; }
	 * 
	 * @Override public Set<Users> getAllUsers(){
	 * 
	 * 
	 * return null; }
	 */
	

}
