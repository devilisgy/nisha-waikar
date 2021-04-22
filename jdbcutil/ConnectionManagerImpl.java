package com.jdbcutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManagerImpl implements IConnectionManager {

	@Override
	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyway", "root", "ahemmed@1525");
			System.out.println("Connection Successful");
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		return connection;
	}

}
