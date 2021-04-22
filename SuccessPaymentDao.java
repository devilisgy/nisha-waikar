package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jdbcutil.ConnectionManagerImpl;
import com.pojos.BookingDetails;
import com.pojos.PaymentReport;

public class SuccessPaymentDao {
	
	private Connection connection;
	public SuccessPaymentDao()
	{
		connection = new ConnectionManagerImpl().getConnection();
		
	}
	
	public boolean successPayment(PaymentReport payment) {
		
		boolean isListInserted = false;
		int id = payment.getId();
		String name = payment.getName();
		String email = payment.getEmail();
		String bank = payment.getBank();
		String card = payment.getCard();
		String fromPlace = payment.getFromPlace();
		String toPlace = payment.getToPlace();
		String date = payment.getDate();
		float price = payment.getPrice();
		int persons = payment.getPersons();
		float amount = payment.getAmount() ;

		String sql ="insert into flyway.payment(`name`,`email`,`bank`,`card`,`from`,`to`,`date`,`persons`,`price`,`amount`) VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			 	PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, bank);
			preparedStatement.setString(4, card);
			preparedStatement.setString(5,fromPlace);
			preparedStatement.setString(6,toPlace);
			preparedStatement.setString(7,date);
			preparedStatement.setInt(8, persons);
			preparedStatement.setLong(9, (long) price);
			preparedStatement.setLong(10, (long) amount);
			int value = preparedStatement.executeUpdate();
			
			if(value>0)
				isListInserted = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		

		return isListInserted;
	}
	
	
	public List<PaymentReport> getAllbookings() {
		 List<PaymentReport> list=new ArrayList<PaymentReport>();  
	        String sql = "select * from payment";
	          
	        try{  
	            
	            Statement statement = connection.createStatement();  
	            ResultSet rs = statement.executeQuery(sql);
	            
	            while(rs.next()){  
	                 
	                int id = rs.getInt(1);  
	        		String name = rs.getString(2);
	        		String email = rs.getString(3);
	        		String bank = rs.getString(4);
	        		String card = rs.getString(5);
	                String from = rs.getString(6);  
	                String to = rs.getString(7);  
	                String date = rs.getString(8);  
	                int persons = rs.getInt(9);
	                float price = rs.getFloat(10);
	                float amount = rs.getFloat(11);
	               
	                PaymentReport e = new PaymentReport(id, name, email, bank, card, from, to, date, persons, price, amount);
	                list.add(e);  
	                System.out.println("From dao"+e);
	            }  
	            
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list; 
	}

}
