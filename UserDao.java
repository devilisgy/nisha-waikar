package com.dao;

import java.sql.SQLException;
import java.util.Set;

import com.pojos.Users;

public interface UserDao {
	
	public boolean addUser(Users user);
	public Users validateUser(String email, String password) throws SQLException;
	public boolean validateadmni(String email, String password);
	/*
	 * public boolean updateUser(int id); public boolean deleteUser(int id); public
	 * Users searchUser(int id); public Set<Users> getAllUsers();
	 */

}
