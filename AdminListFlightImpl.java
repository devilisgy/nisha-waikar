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

public class AdminListFlightImpl implements IAdminList {
	
	private Connection connection;
	public AdminListFlightImpl()
	{
		connection = new ConnectionManagerImpl().getConnection();
		
	}

	@Override
	public boolean addFlights(AdminList flightList) {
		
		boolean isListInserted = false;
		int id = flightList.getId();
		String from = flightList.getFrom();
		String to = flightList.getTo();
		String date = flightList.getDate();
		String price = flightList.getPrice();
	
		String sql ="insert into flyway.flightdetails(`from`,`to`,`date`,`price`) VALUES (?,?,?,?)";
		try {
			 	PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1,from);
			preparedStatement.setString(2,to);
			preparedStatement.setString(3,date);
			preparedStatement.setString(4,price);

			int value = preparedStatement.executeUpdate();
			
			if(value>0)
				isListInserted = true;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return isListInserted;
		
	}
	
    public  List<AdminList> getAllFlights(){  
        List<AdminList> list=new ArrayList<AdminList>();  
        String sql = "select * from flightdetails";
          
        try{  
            
            Statement statement = connection.createStatement();  
            ResultSet rs = statement.executeQuery(sql);
            
            while(rs.next()){  
                 
                int id = rs.getInt(1);  
                String from = rs.getString(2);  
                String to = rs.getString(3);  
                String date = rs.getString(4);  
                String price = rs.getString(5);  
                 AdminList e = new AdminList(id, from, to, date, price);
                list.add(e);  
                System.out.println("From dao"+e);
            }  
            
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }  
    
	public AdminList getflightDetails(int id) {
		AdminList adminList = null;
		String sql = "SELECT * FROM flightdetails WHERE id = ?";
		

		try {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet rs = statement.executeQuery();
		
		if (rs.next()) {
			String from = rs.getString(2);  
            String to = rs.getString(3);  
            String date = rs.getString(4);  
            String price = rs.getString(5); 
			
			adminList = new AdminList(id, from, to, date, price);
		}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		System.out.println("From dao "+adminList);
		return adminList;
	}

}
