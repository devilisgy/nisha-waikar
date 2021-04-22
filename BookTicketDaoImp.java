package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jdbcutil.ConnectionManagerImpl;
import com.pojos.AdminList;
import com.pojos.BookingDetails;

public class BookTicketDaoImp implements IBookTicketDao{
	
	private Connection connection;
	public BookTicketDaoImp()
	{
		connection = new ConnectionManagerImpl().getConnection();
		
	}

	@Override
	public boolean bookTicket(BookingDetails bookinfDetails) {
		boolean isListInserted = false;
		int id = bookinfDetails.getId();
		String fromPlace = bookinfDetails.getFromPlace();
		String toPlace = bookinfDetails.getToPlace();
		String date = bookinfDetails.getDate();
		float price = bookinfDetails.getPrice();
		int persons = bookinfDetails.getPersons();
		float amount = bookinfDetails.getAmount() ;
	System.out.println("From Save Booking dao only price and amount checking "+price+" "+amount);
		String sql ="insert into flyway.booking(`arriving`,`departing`,`arrivingdate`,`persons`,`amount`,`price`) VALUES (?,?,?,?,?,?)";
		try {
			 	PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1,fromPlace);
			preparedStatement.setString(2,toPlace);
			preparedStatement.setString(3,date);
			preparedStatement.setInt(4, persons);
			preparedStatement.setLong(5, (long) amount);
			preparedStatement.setLong(6, (long) price);
			int value = preparedStatement.executeUpdate();
			
			if(value>0)
				isListInserted = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return isListInserted;
	}

	@Override
	public List<BookingDetails> getAllFlights() {
		 List<BookingDetails> list=new ArrayList<BookingDetails>();  
	        String sql = "select * from booking";
	          
	        try{  
	            
	            Statement statement = connection.createStatement();  
	            ResultSet rs = statement.executeQuery(sql);
	            
	            while(rs.next()){  
	                 
	                int id = rs.getInt(1);  
	                String from = rs.getString(2);  
	                String to = rs.getString(3);  
	                String date = rs.getString(4);  
	                int persons = rs.getInt(5);
	                float amount = rs.getFloat(6);
	                float price = rs.getFloat(7);
	                BookingDetails e = new BookingDetails(id, from, to, date, persons,price, amount);
	                list.add(e);  
	                System.out.println("From dao"+e);
	            }  
	            
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list; 
	}
	
	public BookingDetails getbookingDetails(int id) {
		BookingDetails BookingDetails = null;
		String sql = "SELECT * FROM booking WHERE id = ?";
		

		try {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet rs = statement.executeQuery();
		
		if (rs.next()) {
			String from = rs.getString(2);  
            String to = rs.getString(3);  
            String date = rs.getString(4);  
            int persons = rs.getInt(5);  
            float amount = rs.getFloat(6);
            float price = rs.getFloat(7);
            BookingDetails = new BookingDetails(id, from, to, date, persons,price, amount);
		}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		System.out.println("From dao "+BookingDetails);
		return BookingDetails;
	}

}
