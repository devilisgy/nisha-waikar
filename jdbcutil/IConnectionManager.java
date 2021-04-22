package com.jdbcutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public interface IConnectionManager {
	
	public Connection getConnection(); 

}
